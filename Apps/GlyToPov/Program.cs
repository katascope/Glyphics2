using System.IO;
using RasterLib;
using RasterLib.Language;

namespace GlyToPov
{
    class Program
    {
        static void InsertHeader(StreamWriter writer, string filename)
        {
            using (var file = new System.IO.StreamReader(filename))
            {
                string data =  file.ReadToEnd();
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


        static void Main(string[] args)
        {
            string codeString =RasterLib.RasterApi.GlyCToCode("..\\..\\..\\..\\Glyph Cores\\PrintableNexus.glyc").Replace(';', '\n');

            Code code = new Code(codeString);
            code =RasterLib.RasterApi.CodeToRescaledCode(code, 31, 32, 31);
            Grid grid =RasterLib.RasterApi.CodeToGrid(code);
            RectList rects =RasterLib.RasterApi.GridToRects(grid);


            string headerfileName = "..\\..\\..\\..\\povHeader.povTemplate";
            using (var file = new System.IO.StreamWriter("..\\..\\..\\..\\Glyph Cores\\PrintableNexus.pov"))
            {
                InsertHeader(file, headerfileName);
                
                float scalex = 0.5f;
                float scaley = 0.5f;
                float scalez = 0.5f;
                float ox = -32*scalex;
                float oy = 0;
                float oz = 32 * scalex;
                
         /*       foreach (Rect rect in rects)
                {
                    CellProperties cp = rect.Properties;
                    
                    file.WriteLine("box {");
                    file.WriteLine("  <{0},{1},{2}> <{3}, {4}, {5}>", 
                        rect.Pt1[0] * scalex - ox, rect.Pt1[1] * scaley - oy, rect.Pt1[2] * scalez - oz,
                        rect.Pt2[0] * scalex - ox, rect.Pt2[1] * scaley - oy, rect.Pt2[2] * scalez - oz);

                    OutputProperties(file, cp);
                }*/
                for (int z=0;z<grid.SizeZ;z++)
                {
                    for (int y = 0; y < grid.SizeY; y++)
                    {
                        for (int x = 0; x < grid.SizeX; x++)
                        {
                            CellProperties cp = grid.GetProperty(x, y, z);

                            if (cp.Rgba > 0)
                            {
                                file.WriteLine("sphere {");
                                file.WriteLine("    <{0},{1},{2}>,{3}", x-32,y,z-32, scalex*1.5);
                                OutputProperties(file, cp);
                            }
                        }
                    }
                }
            }
        }
    }
}

