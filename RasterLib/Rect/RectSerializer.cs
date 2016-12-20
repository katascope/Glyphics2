#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections;
using System.Collections.Generic;
using System.Text;
using RasterLib;
using System.Numerics;

namespace RasterLib
{
    //Serializer for rectangles
    public partial class RectConverter
    {
        //Parsing characters
        public const char CharRgba = '*';
        public const char CharRects2D = '$';
        public const char CharRects3D = ':';
        public const char CharLimit255 = '\n';
        public const char CharGroup = '|';
        public const char CharPhysics = '^';
        public const char CharCircuit = '%';

        //Search through a list of list of rects
        private static List<Rect> FindListInLists(IEnumerable<List<Rect>> rects, BigInteger unifiedValue)
        {
            if (rects == null) return null;

            foreach (List<Rect> rectList in rects)
            { 
                //Just check the first in the list, as all others have same unified value
                if (rectList[0].Properties.CalcUnified() == unifiedValue)
                        return rectList;
            }

            //If couldn't find, just return null
            return null;
        }

        //Sort a set of rectangles into a list of rects by unified value
        // - Sorts the rectlist into sets of rectlists where rects have same properties
        private static IEnumerable<List<Rect>> SuperSortByProperties(IEnumerable<Rect> rects)
        {
            var superRects = new List<List<Rect>>();

            //Go through finding or creating a list for each unified value type
            foreach (Rect rect in rects)
            {
                List<Rect> sortedList = FindListInLists(superRects,rect.Properties.CalcUnified());

                //If didn't find, create, if did find add.
                if (sortedList == null)
                {
                    var newList = new List<Rect> {rect};
                    superRects.Add(newList);
                }
                else sortedList.Add(rect);
            }
            return superRects;
        }

        //Serialize cellproperties to a string
        private static string SerializeRectProperties(CellProperties properties, bool Mode2D)
        {
            string str = "";
            
            if (Mode2D) str+=CharRects2D;
            else str += CharRgba;

            byte r, g, b, a;
            Transcode64.RecodeUlongtoRgba(properties.Rgba, out r, out g, out b, out a);
            str += Transcode64.To64(r);
            str += Transcode64.To64(g);
            str += Transcode64.To64(b);
            str += Transcode64.To64(a);
            str += Transcode64.To64(properties.ShapeId);
            str += Transcode64.To64(properties.TextureId);

            if (properties.GroupId > 0)
            {
                str += "" + CharGroup;
                str += Transcode64.To64(properties.GroupId);
            }

            return str;
        }

        public static string SerializeCircuitProperties(CellProperties properties)
        {
            string str = "";
            if (properties.CircuitIds != null)
            {
                foreach (int circuitId in properties.CircuitIds)
                {
                    if (circuitId > 0)
                    {
                        str += "" + CharCircuit;
                        str += Transcode64.To64(properties.PhysicsId);
                        str += Transcode64.To64(circuitId);
                    }
                }
            }

            return str;
        }

        public static bool RectsAre2D(RectList rects)
        {
            foreach (Rect rect in rects)
            {
                if (rect.Pt2[1] > 1)
                    return false;
            }
            return true;
        }

        //Limits it to 255 strings between carriage returns
        public static string SerializeLimit255(RectList rectSet)
        {
            IEnumerable<List<Rect>> superRects = SuperSortByProperties(rectSet);
            string str = "";
            string runStr = "";

            bool mode2D = false;// RectsAre2D(rectSet);

            foreach (List<Rect> rectList in superRects)
            {
                runStr += SerializeRectProperties(rectList[0].Properties, mode2D);
                foreach (Rect t in rectList)
                {
                    runStr += Transcode64.SerializeRectPointsToString(t, 1, mode2D);
                    runStr += SerializeCircuitProperties(rectList[0].Properties); 
                    if (runStr.Length > 200)//236)
                    {
                        str += runStr + CharLimit255;
                        runStr = SerializeRectProperties(rectList[0].Properties, mode2D);
                    }
                }
            }
            str += runStr + CharLimit255;

            str = str.TrimEnd('\n') + "\n";//ensure only one \n at end
            return str;
        }

        //Serialize a set of rectangles(RectList) to SerializedRects
        public static SerializedRects RectsToSerializedRects(RectList rectSet)
        {
            GridConverter.BuildCircuit(rectSet, false);
            var sb = new StringBuilder();

            bool mode2D = false;// RectsAre2D(rectSet);

            //Sort the rectlist into sets of rectlists where rects have same properties
            IEnumerable<List<Rect>> superRects = SuperSortByProperties(rectSet);

            //Iterate through entire set of rectlists
            foreach (List<Rect> rectList in superRects)
            {
                string rectPropertiesSerialized = SerializeRectProperties(rectList[0].Properties, mode2D);
                sb.Append(rectPropertiesSerialized);

                //Iterate through each rect in the set (will all have same properties)
                //Each will inherit properties values when read later from last properties write
                foreach (Rect rect in rectList)
                {
                    string rectSerialized = Transcode64.SerializeRectPointsToString(rect, 1, mode2D);
                    rectSerialized += SerializeCircuitProperties(rectList[0].Properties);
                    sb.Append(rectSerialized);
                }
            }
            //Then return new serialized rect with that string
            return new SerializedRects(sb.ToString());
        }

        //Deserialized SerializedRects back to set of rectangles(RectList)
        public static RectList SerializedRectsToRects(SerializedRects serializedRects)
        {
            RectList rects = new RectList();
            char state = ' ';
            byte shapeId = 0;
            byte textureId = 0;
            ulong rgba = 0;
            byte groupId = 0;
            string serial = serializedRects.SerializedData;
            char mode = CharRects3D;


            for (int i = 0; i < serial.Length; i++)
            {
                if (serial[i] == CharRects2D) { mode = CharRects2D; state = CharRgba; }
                if (serial[i] == CharRgba) { mode = CharRects3D; state = CharRgba; }
                if (serial[i] == CharGroup) state = CharGroup;
                if (serial[i] == CharLimit255) state = CharLimit255;
                if (serial[i] == CharCircuit) state = CharCircuit;
                switch (state)
                {
                    case CharGroup:
                        {
                            groupId = Transcode64.From64(serial[++i]);
                            state = mode;
                            break;
                        }
                    case CharRgba://Reading RGBA palette
                        {
                            i++;
                            int r = Transcode64.From64(serial[i++]);
                            int g = Transcode64.From64(serial[i++]);
                            int b = Transcode64.From64(serial[i++]);
                            int a = Transcode64.From64(serial[i++]);

                            rgba = Transcode64.RecodeRgbatoUlong((byte)r, (byte)g, (byte)b, (byte)a);
                            shapeId = Transcode64.From64(serial[i++]);
                            textureId = Transcode64.From64(serial[i]);
                            state = mode;

                            break;
                        }
                    case CharRects2D://Reading emergents
                        {
                            Rect rect = new Rect();
                            rect.Pt1[0] = Transcode64.From64(serial[i++]);
                            rect.Pt1[2] = Transcode64.From64(serial[i++]);

                            rect.Pt2[0] = Transcode64.From64(serial[i++]);
                            rect.Pt2[2] = Transcode64.From64(serial[i]);

                            //Convert from inclusve
                            rect.Pt2[0]++;
                            rect.Pt2[2]++;

                            rect.Properties.Rgba = rgba;
                            rect.Properties.ShapeId = shapeId;
                            rect.Properties.TextureId = textureId;
                            rect.Properties.GroupId = groupId;
                            rects.AddRect(rect);
                            break;
                        }
                    case CharRects3D://Reading emergents
                        {
                            Rect rect = new Rect();
                            rect.Pt1[0] = Transcode64.From64(serial[i++]);
                            rect.Pt1[1] = Transcode64.From64(serial[i++]);
                            rect.Pt1[2] = Transcode64.From64(serial[i++]);

                            rect.Pt2[0] = Transcode64.From64(serial[i++]);
                            rect.Pt2[1] = Transcode64.From64(serial[i++]);
                            rect.Pt2[2] = Transcode64.From64(serial[i]);

                            //Convert from inclusve
                            rect.Pt2[0]++;
                            rect.Pt2[1]++;
                            rect.Pt2[2]++;

                            rect.Properties.Rgba = rgba;
                            rect.Properties.ShapeId = shapeId;
                            rect.Properties.TextureId = textureId;
                            rect.Properties.GroupId = groupId;
                            rects.AddRect(rect);
                            break;
                        }
                    case CharCircuit:
                        {
                            i++;
                            byte pid = Transcode64.From64(serial[i++]);//physics id
                            byte cid = Transcode64.From64(serial[i]);//circuit id
                            if (rects.GetRect(rects.Count - 1).Properties.CircuitIds == null)
                                rects.GetRect(rects.Count - 1).Properties.CircuitIds = new List<int>();

                            rects.GetRect(rects.Count - 1).Properties.PhysicsId = pid;
                            rects.GetRect(rects.Count - 1).Properties.CircuitIds.Add(cid);
                            state = mode;
                            break;
                        }
                }
            }
            GridConverter.BuildCircuit(rects,false);
            return rects;
        }
    }
}
