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
            GridSpaceAddress gsa = new GridSpaceAddress(1, 1, 1);
            string test = "@00000001_00000001_00000001";
            if (GridSpaceAddress.TryParse(test) != null)
                gsa = GridSpaceAddress.TryParse(test);

            return;
        }
    }
}
