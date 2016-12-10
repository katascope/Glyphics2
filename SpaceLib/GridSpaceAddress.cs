using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpaceLib
{
    public class GridSpaceAddress
    {
        public Int32 X;
        public Int32 Y;
        public Int32 Z;
        public GridSpaceAddress(Int32 x, Int32 y, Int32 z)
        {
            X = x;
            Y = y;
            Z = z;
        }
        public override string ToString()
        {
            return "@"
                + String.Format("{0:X8}_", X)
                + String.Format("{0:X8}_", Y)
                + String.Format("{0:X8}", Z) + "";
        }
        public static GridSpaceAddress TryParse(string inStr)
        {
            inStr = inStr.TrimStart('?');
            inStr = inStr.TrimStart('@');
            string[] parts = inStr.Split('_');
            if (parts.Length != 3) return null;

            int x,y,z;
            x = int.Parse(parts[0], System.Globalization.NumberStyles.HexNumber);
            y = int.Parse(parts[1], System.Globalization.NumberStyles.HexNumber);
            z = int.Parse(parts[2], System.Globalization.NumberStyles.HexNumber);

            return new GridSpaceAddress(x, y, z);
        }
    }
}
