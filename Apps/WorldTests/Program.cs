using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;
//using System.Windows.Forms;

namespace WorldTests
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Test worlds");
            Directory.SetCurrentDirectory("\\GitHub\\Glyphics2\\Crawler\\");

            string glycFilename = "c:\\github\\glyphics2\\Crawler\\Home.glyc";
            string codeString = RasterLib.RasterApi.ReadGlyc(glycFilename).Replace(';', '\n');

            RectList rects = Pivot.ToRects(codeString);
            RasterLib.RasterApi.BuildCircuit(rects, true);
            SerializedRects rects255 = Pivot.ToSerialized255(rects);
            rects = Pivot.ToRects(rects255);
            RasterLib.RasterApi.BuildCircuit(rects, true);

//            Clipboard.SetText(rects255.SerializedData);
            Console.WriteLine("\nSerialized rects\n{0}", rects255.SerializedData);
        }
    }
}
