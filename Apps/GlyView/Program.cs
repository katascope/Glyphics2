using System;
using RasterLib;
using RasterLib.Language;
using RasterApi = RasterLib.RasterApi;

namespace GlyView
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length == 0)
            {
                Console.WriteLine("Usage : GlyView <filename>");
                return;
            }
            string filename = args[0];
            Console.WriteLine("Input : " + filename);

            string codeString = RasterLib.RasterApi.GlyCToCode(filename);
            Console.WriteLine(codeString);

            Code code = new Code(codeString);

            Grid grid = RasterLib.RasterApi.CodeToGrid(code);

            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            Console.WriteLine(rects);

        }
    }
}
