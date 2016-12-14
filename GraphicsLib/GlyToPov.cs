#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Collections.Generic;
using System.IO;
using RasterLib;
using RasterLib.Language;

namespace GraphicsLib
{
    public class GlycToPovConverter
    {
        static void InsertHeader(StreamWriter writer, string filename)
        {
            using (var file = new System.IO.StreamReader(filename))
            {
                string data = file.ReadToEnd();
                writer.WriteLine(data);
            }
        }

        static void OutputProperties(StreamWriter file, CellProperties cp)
        {
            file.WriteLine("     texture {");
            file.WriteLine("   pigment {");
            file.WriteLine("        agate");
            file.WriteLine("        turbulence 1");
            file.WriteLine("        lambda 1.5");
            file.WriteLine("        omega .8");
            file.WriteLine("        octaves 8");
            file.WriteLine("        color_map {");
            byte r, g, b, a;
            RasterLib.RasterApi.Ulong2Rgba(cp.Rgba, out r, out g, out b, out a);
            file.WriteLine("          [0.00 color rgb <{0}, {1}, {2}>]",
                (float)r / (float)255,
                (float)g / (float)255,
                (float)b / (float)255,
                (float)a / (float)255);
            file.WriteLine("        }");
            file.WriteLine("      }");

            file.WriteLine("	finish {");
            file.WriteLine("		phong 0.8");
            file.WriteLine("		reflection 0.25");
            file.WriteLine("	       }");
            file.WriteLine("   }");
            file.WriteLine("}");
        }

        public static void GlycToPov(string glycFilename, string povFilename, string headerFilename)
        {
            string codeString = RasterLib.RasterApi.ReadGlyc(glycFilename).Replace(';', '\n');

            Code code = new Code(codeString);
            code = RasterLib.RasterApi.CodeToRescaledCode(code, 31, 32, 31);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);

            using (var file = new System.IO.StreamWriter(povFilename))
            {
                InsertHeader(file, headerFilename);

                float scalex = 0.5f;
                float scaley = 0.5f;
                float scalez = 0.5f;
                float ox = -32 * scalex;
                float oy = 0;
                float oz = 32 * scalex;

                foreach (Rect rect in rects)
                {
                    CellProperties cp = rect.Properties;

                    file.WriteLine("box {");
                    file.WriteLine("  <{0},{1},{2}> <{3}, {4}, {5}>",
                        rect.Pt1[0] * scalex - ox, rect.Pt1[1] * scaley - oy, rect.Pt1[2] * scalez - oz,
                        rect.Pt2[0] * scalex - ox, rect.Pt2[1] * scaley - oy, rect.Pt2[2] * scalez - oz);

                    OutputProperties(file, cp);
                }
                /*for (int z = 0; z < grid.SizeZ; z++)
                {
                    for (int y = 0; y < grid.SizeY; y++)
                    {
                        for (int x = 0; x < grid.SizeX; x++)
                        {
                            CellProperties cp = grid.GetProperty(x, y, z);

                            if (cp.Rgba > 0)
                            {
                                file.WriteLine("sphere {");
                                file.WriteLine("    <{0},{1},{2}>,{3}", x - 32, y, z - 32, scalex * 1.5);
                                OutputProperties(file, cp);
                            }
                        }
                    }
                }*/
            }
        }
    }
}
