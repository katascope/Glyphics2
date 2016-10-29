using System;
using RasterLib;
using RasterLib.Language;
using RasterApi = RasterLib.RasterApi;

// https://github.com/NancyFx/Nancy/wiki/Hosting-Nancy-with-Nginx-on-Ubuntu
class Options
{
    public bool displayCode { get; set; }
    public bool displayRects{ get; set; }
    public bool displaySerializedRects { get; set; }
    public bool displayQuads { get; set; }
    public bool displayTriangles { get; set; }
    public bool displaySceneGraph { get; set; }
    public bool displayCircuit { get; set; }
}

namespace GlyView
{
    class Program
    {
        static void Main(string[] args)
        {
            string filename = args[0];
            Options options = new Options();
            if (args.Length == 0)
            {
                Console.WriteLine("Usage : GlyView <filename> ");
                Console.WriteLine(" Output types:");
                Console.WriteLine("   -c : display code ");
                Console.WriteLine("   -r : display rects ");
                Console.WriteLine("  -sr : display serialized rects ");
                Console.WriteLine("   -q : display quads ");
                Console.WriteLine("   -t : display triangles ");
                Console.WriteLine("  -sg : display scenegraph");
                Console.WriteLine("  -ci : display circuit");
                return;
            }

            for (int i = 0; i < args.Length; i++)
            {
                if (args[i] == "-c") options.displayCode = true;
                if (args[i] == "-r") options.displayRects = true;
                if (args[i] == "-sr") options.displaySerializedRects = true;
                if (args[i] == "-q") options.displayQuads = true;
                if (args[i] == "-t") options.displayTriangles = true;
                if (args[i] == "-sg") options.displaySceneGraph = true;
                if (args[i] == "-ci") options.displayCircuit = true;
            }
            string codeString = RasterLib.RasterApi.GlyCToCode(filename);
            Code code = new Code(codeString);
            if (options.displayCode) Console.WriteLine("Code: "+codeString);

            Grid grid = RasterLib.RasterApi.CodeToGrid(code);

            if (grid != null)
            {
                //string bytesDesc = RasterLib.RasterApi.BytesToString(grid.CloneData());
                //Console.WriteLine("GridBytes:\n{0}\n", bytesDesc);
            }

            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            //rects
            {
                if (options.displayRects)
                    Console.WriteLine("Rects: {0}\n{1}", rects.Count, rects);

                RasterLib.RasterApi.BuildCircuit(rects, options.displayCircuit);

                string serialized = RasterLib.RasterApi.RectsToSerializedRectsLimit255(rects).SerializedData;
                if (options.displaySerializedRects)
                    Console.WriteLine("{0}\n",serialized);
                    //Console.WriteLine("Serialized Rects: (len={0})\n{1}\n", serialized.Length, serialized);

                SerializedRects serializedRects = new SerializedRects(serialized);
                RectList rectsDecoded = RectConverter.SerializedRectsToRects(serializedRects);
            }

            //if (ctl.OutputRenderedAscii)
            {
                //Console.WriteLine("2d view:\n{0}", RasterLib.RasterApi.Renderer.GridToHexDescription(grid));
                //Console.WriteLine("3d view:\n{0}", RasterLib.RasterApi.Renderer.GridTo3DDescription(grid, 0, 0, 0));
            }

            //if (ctl.OutputSceneGraph)
            {
                Scene scene = RasterLib.RasterApi.RectsToScene(rects);
                if (options.displaySceneGraph)
                    Console.WriteLine("Scene: {0}", scene);

                QuadList quads = RasterLib.RasterApi.RectsToQuads(rects);
                if (options.displayQuads)
                    Console.WriteLine("Quads: {0}", quads);

                Triangles triangles = RasterLib.RasterApi.QuadsToTriangles(quads);
                if (options.displayTriangles)
                    Console.WriteLine("Triangles: {0}", triangles);
            }
        }
    }
}
