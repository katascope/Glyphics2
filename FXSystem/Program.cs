using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FxLib;

namespace FX
{
    class Program
    {
        static void Main(string[] args)
        {
            Fx.ReadDeck("\\github\\glyphics2\\test.deck");
            Fx.mixer.deck.print();

            Console.WriteLine("Fx:\n" + Fx.mixer.activeFx());

            /*
            Grid pal = new Grid(255, 1, 1, 4);
            List<ulong> colors = new List<ulong>();
            colors.Add(RasterLib.RasterApi.Rgba2Ulong(255, 127, 0, 255));
            colors.Add(RasterLib.RasterApi.Rgba2Ulong(0, 0,0,0));
            colors.Add(RasterLib.RasterApi.Rgba2Ulong(0, 192, 255, 255));
            colors.Add(RasterLib.RasterApi.Rgba2Ulong(0, 0, 0, 0));
            colors.Add(RasterLib.RasterApi.Rgba2Ulong(255, 127, 0, 255));
            RasterLib.RasterApi.Painter.PalGen1DBanded(pal, colors);

            for (int x=0;x<255;x+=10)
            {
                CellProperties cp = pal.GetProperty(x, 0, 0);
                byte r, g, b, a;
                RasterLib.RasterApi.Ulong2Rgba(cp.Rgba, out r, out g, out b, out a);
                Console.WriteLine(r + ", " + g + "," + b + ", " + a);
            }
            */
        }
    }
}
