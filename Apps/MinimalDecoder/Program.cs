using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MinimalDecoder
{
    class Program
    {
        public class Rect
        {
            public double[] Pt1 { get; set; }
            public double[] Pt2 { get; set; }

            public double Width { get { return Pt2[0] - Pt1[0]; } }
            public double Height { get { return Pt2[1] - Pt1[1]; } }
            public double Depth { get { return Pt2[2] - Pt1[2]; } }

            //Default Constructor
            public Rect() { Set(0, 0, 0, 0, 0, 0); }

            //Assignment constructor
            public Rect(double nx1, double ny1, double nz1, double nx2, double ny2, double nz2) { Set(nx1, ny1, nz1, nx2, ny2, nz2); }



            //Set dimensions of Rect
            private void Set(double nx1, double ny1, double nz1, double nx2, double ny2, double nz2)
            {
                Pt1 = new double[3];
                Pt2 = new double[3];
            
                Pt1[0] = nx1; Pt1[1] = ny1; Pt1[2] = nz1; Pt2[0] = nx2; Pt2[1] = ny2; Pt2[2] = nz2;
            }

            //Copy properties and points from another Rect
            public void CopyFrom(Rect srRect)
            {
                if (srRect == null) return;

                Pt1[0] = srRect.Pt1[0];
                Pt1[1] = srRect.Pt1[1];
                Pt1[2] = srRect.Pt1[2];

                Pt2[0] = srRect.Pt2[0];
                Pt2[1] = srRect.Pt2[1];
                Pt2[2] = srRect.Pt2[2];
                //Properties.CopyFrom(srRect.Properties);
            }

            //Readable description
            public override string ToString()
            {
                double w = Pt2[0] - Pt1[0];
                double h = Pt2[1] - Pt1[1];
                double d = Pt2[2] - Pt1[2];
                string dimStr = "(w=" + w + ",h=" + h + ",d=" + d + ")";
                return "[" + dimStr + "(" + Pt1[0] + "," + Pt1[1] + "," + Pt1[2] + ")" + "," + "(" + Pt2[0] + "," + Pt2[1] + "," + Pt2[2] + ")" + "/" +  "]";
            }

            //True if x,y,z is in the rect
            public bool Contains(double x, double y, double z)
            {
                if ((x > Pt2[0]) || (x < Pt1[0]) || (y > Pt2[1]) || (y < Pt1[1]) || (z > Pt2[2]) || (z < Pt1[2])) return false;
                return true;
            }


           

            //If both touch each other
            public bool Touches(Rect rectB)
            {

                if (Pt1[0] <= rectB.Pt2[0] && Pt2[0] >= rectB.Pt1[0] &&
                    Pt1[1] <= rectB.Pt2[1] && Pt2[1] >= rectB.Pt1[1] &&
                    Pt1[2] <= rectB.Pt2[2] && Pt2[2] >= rectB.Pt1[2])
                    return true;
                return false;

                //Should convert to this later. Will avoid corner problems
                //return RectTouch.TouchesFaces(this, rectB);
            }
        }

        public const char CharRgba = '*';
        public const char CharRects2D = '$';
        public const char CharRects3D = ':';
        public const char CharLimit255 = '\n';
        public const char CharGroup = '|';
        public const char CharPhysics = '^';
        public const char CharCircuit = '%';

        private const string Lookup64 = @"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@";
        //        private static string notused = "`~[]{}|;:,./<>?-=_+\\\'\")#$%^&*(";
        public static string To64(int val)
        {
            return "" + Lookup64[val & 63];
        }
        public static byte From64(char val)
        {
            var index = (byte)Lookup64.IndexOf(val);
            return index;
        }

        //Deserialized SerializedRects back to set of rectangles(RectList)
        public static void SerializedRectsToRects(string serial)
        {
            //RectList rects = new RectList();
            char state = ' ';
            byte shapeId = 0;
            byte textureId = 0;
            ulong rgba = 0;
            byte groupId = 0;
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
                            groupId = From64(serial[++i]);
                            state = mode;
                            break;
                        }
                    case CharRgba://Reading RGBA palette
                        {
                            i++;
                            int r = From64(serial[i++]);
                            int g = From64(serial[i++]);
                            int b = From64(serial[i++]);
                            int a = From64(serial[i++]);

                            //rgba = RecodeRgbatoUlong((byte)r, (byte)g, (byte)b, (byte)a);
                            shapeId = From64(serial[i++]);
                            textureId = From64(serial[i]);
                            state = mode;

                            break;
                        }
                    case CharRects2D://Reading emergents
                        {
                            Rect rect = new Rect();
                            rect.Pt1[0] = From64(serial[i++]);
                            rect.Pt1[2] = From64(serial[i++]);

                            rect.Pt2[0] = From64(serial[i++]);
                            rect.Pt2[2] = From64(serial[i]);

                            //Convert from inclusve
                            rect.Pt2[0]++;
                            rect.Pt2[2]++;

/*                            rect.Properties.Rgba = rgba;
                            rect.Properties.ShapeId = shapeId;
                            rect.Properties.TextureId = textureId;
                            rect.Properties.GroupId = groupId;*/
                            //rects.AddRect(rect);
                            break;
                        }
                    case CharRects3D://Reading emergents
                        {
                            Rect rect = new Rect();
                            rect.Pt1[0] = From64(serial[i++]);
                            rect.Pt1[1] = From64(serial[i++]);
                            rect.Pt1[2] = From64(serial[i++]);

                            rect.Pt2[0] = From64(serial[i++]);
                            rect.Pt2[1] = From64(serial[i++]);
                            rect.Pt2[2] = From64(serial[i]);

                            //Convert from inclusve
                            rect.Pt2[0]++;
                            rect.Pt2[1]++;
                            rect.Pt2[2]++;

                            /*rect.Properties.Rgba = rgba;
                            rect.Properties.ShapeId = shapeId;
                            rect.Properties.TextureId = textureId;
                            rect.Properties.GroupId = groupId;*/
                            //rects.AddRect(rect);
                            break;
                        }
                    case CharCircuit:
                        {
                            i++;
                            byte pid = From64(serial[i++]);//physics id
                            byte cid = From64(serial[i]);//circuit id
                            /*if (rects.GetRect(rects.Count - 1).Properties.CircuitIds == null)
                                rects.GetRect(rects.Count - 1).Properties.CircuitIds = new List<int>();

                            rects.GetRect(rects.Count - 1).Properties.PhysicsId = pid;
                            rects.GetRect(rects.Count - 1).Properties.CircuitIds.Add(cid);*/
                            state = mode;
                            break;
                        }
                }
            }
            
            //return rects;
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Minimal decoder");
            string nexusSerialized =
"*@@@@10000@0000100uv01w1f@01@0ug0gL1gg0hg1uv0hw1uL0hL1u00v@0w00x00!g0xg1Lv0xw1LL0xL1L@0x@0!g0ML1Mg0Ng0!v0Nw0!L0NL0!00@@0@11v!1wg1!g1!L1!L1!g2NgfNL2NLfNg2@gf@L2@Lf@ggNLgNggOgg!LgOLg!gg@Lg@*7v@@10101u0fx01!0f10gf0uM0g!0uh0hu0ux0hK0u10xf0!h0xu0Lx0xK0LM0x!0!h0Nu0!x0NK0!g1Ng1ZL1NL1Zg2Ogf!L2OLf!hgOKg!*v@v@20212dcdO12Zcd*@v@@20i12tcdy12Jcd*@vv@2021idctO1iZct*vv@@2021ydcJO1yZcJ*@@v@2021OdcZO1OZcZ*@@@@30qhPBs!"
;


            SerializedRectsToRects(nexusSerialized);
        }
    }
}
