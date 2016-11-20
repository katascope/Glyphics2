#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using GraphicsLib;

namespace GraphicsLib
{
    //Utility for converting from/to elements, scenes
    internal class SceneGraph
    {
        //Convert a rectangle volume to Translation XYZ, Scale XYZ, useful for elements
        private static void Rect2TranslateAndScale(Rect rect, out double tx, out double ty, out double tz, out double sx, out double sy, out double sz)
        {
            sx = rect.Pt2[0] - rect.Pt1[0];
            sy = rect.Pt2[1] - rect.Pt1[1];
            sz = rect.Pt2[2] - rect.Pt1[2];
            tx = rect.Pt1[0] + sx / 2;
            ty = rect.Pt1[1] + sy / 2;
            tz = rect.Pt1[2] + sz / 2;
        }

        //Convert a translation and scale to a rectangle volume
        private static Rect TranslateAndScale2Rect(double tx, double ty, double tz, double sx, double sy, double sz)
        {
            Rect rect = new Rect();
            rect.Pt1[0] = tx - sx / 2;
            rect.Pt1[1] = ty - sy / 2;
            rect.Pt1[2] = tz - sz / 2;
            rect.Pt2[0] = tx + sx / 2;
            rect.Pt2[1] = ty + sy / 2;
            rect.Pt2[2] = tz + sz / 2;
            return rect;
        }

        //Convert an Rect to an Element
        public static Element RectToElement(Rect rect)
        {
            Element element = new Element();

            element.Properties.CopyFrom(rect.Properties);

            double tx, ty, tz, sx, sy, sz;
            Rect2TranslateAndScale(rect, out tx, out ty, out tz, out sx, out sy, out sz);
            element.Transform.Translation[0] = tx;
            element.Transform.Translation[1] = ty;
            element.Transform.Translation[2] = tz;

            element.Transform.Scale[0] = sx;
            element.Transform.Scale[1] = sy;
            element.Transform.Scale[2] = sz;

            return element;
        }
        
        //Convert an Element to an Rect
        public static Rect ElementToRect(Element element)
        {
            Rect rect = TranslateAndScale2Rect(
                element.Transform.Translation[0],
                element.Transform.Translation[1],
                element.Transform.Translation[2],
                element.Transform.Scale[0],
                element.Transform.Scale[1],
                element.Transform.Scale[2]);

            rect.Properties.CopyFrom(element.Properties);
            
            return rect;
        }

        //Convert an RectList to an Scene
        public static Scene RectsToScene(RectList rects)
        {
            Scene scene = new Scene();

            foreach (Rect rect in rects)
            {
                Element element = RectToElement(rect);
                scene.AddElement(element);
            }
            return scene;
        }

        //Convert an Scene to an RectList
        public static RectList SceneToRects(Scene scene)
        {
            RectList rects = new RectList();

            foreach (Element element in scene)
            {
                Rect rect = ElementToRect(element);
                rects.AddRect(rect);
            }
            return rects;
        }
    }
}
