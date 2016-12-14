using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using SpaceLib;
using RasterLib;

namespace ServerTests
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Server Tests");
            GridSpaceAddress gsa = new GridSpaceAddress(0, 0, 0);

            SpaceLib.MegaGridClient client = new MegaGridClient("http://localhost:3838");
            string name = client.RequestNameAtGSA(gsa);
            Console.WriteLine("\nGrid at (0,0,0) = '{0}'", name);
            
            string serializedRectsStr = client.RequestRects(name);            
            Console.WriteLine("\nSerialized rects\n" + serializedRectsStr);

            RectList rects = Pivot.ToRects(serializedRectsStr);
            Console.WriteLine("\nRects\n" + rects);

            while (true)
            {
                Console.WriteLine("Live:{0}\n{1}",name, client.RequestLive(name) );
                Thread.Sleep(250);
            }
        }
    }
}
