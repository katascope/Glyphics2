#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServerLib
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
            return MakeString(X, Y, Z);
        }
        static public string MakeString(int x, int y, int z)
        {
            return "@"
                + String.Format("{0:X8}_", x)
                + String.Format("{0:X8}_", y)
                + String.Format("{0:X8}", z) + "";
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
