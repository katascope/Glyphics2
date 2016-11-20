#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

using GraphicsLib.Utility;

namespace GraphicsLib
{
    //Implementation of Double3, see for usage
    public class Double3
    {
        //Actual XYZ values
        public double X { get; set; }
        public double Y { get; set; }
        public double Z { get; set; }

        //Default constructor
        public Double3() { }
        
        //Assignment constructor
        public Double3(double nx, double ny, double nz)
        {
            X = nx; Y = ny; Z = nz;
        }

        //Duplicate object
        public Double3 Clone()
        {
            return new Double3(X, Y, Z);
        }

        //Readable description
        public override string ToString()
        {
            return "(" + (int)X + "," + (int)Y + "," + (int)Z + ")";
        }

        //Reset XYZ to 0
        public void Identity()
        {
            X = Y = Z = 0;
        }

        //Absorb from src
        public void CopyFrom(Double3 src)
        {
            if (src == null) return;

            X = src.X;
            Y = src.Y;
            Z = src.Z;
        }

        //True if same
        public bool IsEqualTo(Double3 value)
        {
            if (value == null) return false;

            if (  (Compare.DoublesAreEqual(value.X, X) == false)
               || (Compare.DoublesAreEqual(value.Y, Y) == false)
               || (Compare.DoublesAreEqual(value.Z, Z) == false) )
            {
                return false;
            }
            return true;
        }
    }
}
