using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RasterLib;

namespace QuickDirty
{
    class Program
    {
        static void Main(string[] args)
        {
            string nexus = "*v@v@00000@@@";
            SerializedRects srects = new SerializedRects(nexus);
            RectList rects = RasterLib.RasterApi.SerializedRectsToRects(srects);
            RasterLib.Language.Code code = RectConverter.RectsToCode(rects);

            Console.WriteLine("Rects2Code Code\n-----------------------------------\n" + code);
            return;
        }
    }
}
