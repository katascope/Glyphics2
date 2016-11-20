#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

using GraphicsLib.Utility;
using GraphicsLib;

namespace GraphicsLib
{
    public partial class RectConverter
    {
        //Convert rectangles to their 6 quads
        public static QuadList RectsToQuads(RectList rectSet)
        {
            QuadList quadsMacro = new QuadList();

            foreach (Rect rect in rectSet)
            {
                QuadList quads = RectToQuads(rect);

                foreach (Quad quad in quads)
                    quadsMacro.AddQuad(quad);
            }

            //Remove redundant ones automatically
            RemoveRedundantQuads(quadsMacro);

            return quadsMacro;
        }

        //Remove redundant quads to reduce total count
        public static int RemoveRedundantQuads(QuadList quads)
        {
            int removedCount = 0;

            for (int me = 0; me < quads.Count; me++)
            {
                for (int you = me; you < quads.Count; you++)
                {
                    if (me != you)
                    {
                        Quad meQuad = quads.GetQuad(me);
                        Quad youQuad = quads.GetQuad(you);
                        //I saw a duplicate
                        if ((meQuad.Pt1.IsEqualTo(youQuad.Pt1))
                              && (meQuad.Pt2.IsEqualTo(youQuad.Pt2)))
                        {
                            //we have a redundancy
                            removedCount++;
                            quads.RemoveQuad(youQuad);
                        }
                    }
                }
            }
            return removedCount;
        }

        public static void AutoShadeQuad(Quad quad, double scale)
        {
            byte r, g, b, a;
            Converter.Ulong2Rgba(quad.Properties.Rgba, out r, out g, out b, out a);

            r = (byte)(r * scale);
            g = (byte)(g * scale);
            b = (byte)(b * scale);
            //a *= scale;

            quad.Properties.Rgba = Converter.Rgba2Ulong(r, g, b, a);
        }

        public static void AutoShade(Quad quadTopper, Quad quadFront, Quad quadLeft, 
                           Quad quadBottom, Quad quadBack, Quad quadRight)
        {
            AutoShadeQuad(quadTopper, 1);
            AutoShadeQuad(quadFront, 0.75);
            AutoShadeQuad(quadLeft, 0.85);
            AutoShadeQuad(quadBottom, 0.66);
            AutoShadeQuad(quadBack, 0.9);
            AutoShadeQuad(quadRight, 0.5);
        }

        //Convert rectangle to its 6 quads
        public static QuadList RectToQuads(Rect rect)
        {
            QuadList quads = new QuadList();

            Quad quadTopper = new Quad(rect.Pt1[0], rect.Pt2[1], rect.Pt1[2], rect.Pt2[0], rect.Pt2[1], rect.Pt2[2]);
            quadTopper.Properties = rect.Properties.Clone();
            Quad quadBottom = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt1[2], rect.Pt2[0], rect.Pt1[1], rect.Pt2[2]);
            quadBottom.Properties = rect.Properties.Clone();

            Quad quadFront = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt2[2], rect.Pt2[0], rect.Pt2[1], rect.Pt2[2]);
            quadFront.Properties = rect.Properties.Clone();
            Quad quadBack = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt1[2], rect.Pt2[0], rect.Pt2[1], rect.Pt1[2]);
            quadBack.Properties = rect.Properties.Clone();

            Quad quadRight = new Quad(rect.Pt2[0], rect.Pt1[1], rect.Pt1[2], rect.Pt2[0], rect.Pt2[1], rect.Pt2[2]);
            quadRight.Properties = rect.Properties.Clone();
            Quad quadLeft = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt1[2], rect.Pt1[0], rect.Pt2[1], rect.Pt2[2]);
            quadLeft.Properties = rect.Properties.Clone();

            AutoShade(quadTopper, quadFront, quadLeft, quadBottom, quadBack, quadRight);

            quads.AddQuad(quadFront);
            quads.AddQuad(quadBack);
            quads.AddQuad(quadTopper);
            quads.AddQuad(quadBottom);
            quads.AddQuad(quadRight);
            quads.AddQuad(quadLeft);

            return quads;
        }
    }
}
