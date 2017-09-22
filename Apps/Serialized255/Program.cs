using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;
using System.Windows.Forms;

namespace Serialized255
{
    class CircuitModel
    {
        public static List<Tuple<int, int, int>> CalculateCircuitModel(RectList rects)
        {
            List<Tuple<int, int, int>> PidPhysCid = new List<Tuple<int, int, int>>();

            for (int id=0;id<rects.Count;id++)
            {
                Rect rect = rects.GetRect(id);
                int pid = id + 1;
                if (rect.Properties.CircuitIds != null && rect.Properties.CircuitIds.Count > 0)
                {
                    Console.WriteLine("Circuit Rect " + pid + " : " + rect);
                    foreach (int cid in rect.Properties.CircuitIds)
                    {
                        Console.WriteLine(" CID " + cid);
                        PidPhysCid.Add(new Tuple<int, int, int>(pid, rect.Properties.PhysicsId, cid));
                    }
                }
            }
            return PidPhysCid;
        }
    }
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            string folder = "\\GitHub\\Glyphics2\\crawler\\";
            string filename = "Girl.glyc";

            Console.WriteLine("Serialized 255");
            Directory.SetCurrentDirectory(folder);                        

            string glycFilename = folder + filename;
            string codeString = RasterLib.RasterApi.ReadGlyc(glycFilename).Replace(';', '\n');
            
            RectList rects = Pivot.ToRects(codeString);
            RasterLib.RasterApi.BuildCircuit(rects, true);
            SerializedRects rects255 = Pivot.ToSerialized255(rects);
            rects = Pivot.ToRects(rects255);
            RasterLib.RasterApi.BuildCircuit(rects, true);

            Clipboard.SetText(rects255.SerializedData);
            Console.WriteLine("\nSerialized rects\n{0}", rects255.SerializedData);

            //CircuitModel model = new CircuitModel(rects);
        }
    }
}
