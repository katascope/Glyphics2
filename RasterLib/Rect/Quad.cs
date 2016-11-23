#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

using RasterLib.Utility;
using RasterLib;

namespace RasterLib
{
    //Plane quad is aligned to
    public enum QuadAxis
    {
        Unknown, X, Y, Z
    };

    //Implementation of Quad, see for usage
    public class Quad
    {
        //Properties of the cell
        public CellProperties Properties { get; set; }

        //Points of a quad
        public Double3 Pt1 { get; set; }
        public Double3 Pt2 { get; set; }

        //Constructor
        public Quad()
        {
            Pt1 = new Double3();
            Pt2 = new Double3();
        }

        //Assignment constructor
        public Quad(double x1, double y1, double z1, double x2, double y2, double z2)
        {
            Pt1 = new Double3(x1, y1, z1);
            Pt2 = new Double3(x2, y2, z2);
        }

        //Assignment constructor
        public Quad(Double3 fromPt1, Double3 fromPt2)
        {
            Pt1 = fromPt1 != null ? new Double3(fromPt1.X, fromPt1.Y, fromPt1.Z) : new Double3();
            Pt2 = fromPt2 != null ? new Double3(fromPt2.X, fromPt2.Y, fromPt2.Z) : new Double3();
        }

        //Copy properties from sourceTransform
        public void CopyFrom(Quad sourceQuad)
        {
            if (sourceQuad != null)
            {
                Pt1.CopyFrom(sourceQuad.Pt1);
                Pt2.CopyFrom(sourceQuad.Pt2);
            }
            else
            {
                Pt1 = new Double3();
                Pt2 = new Double3();
            }
        }

        //True if same
        public bool IsEqualTo(Quad quad)
        {
            if (quad == null) return false;

            if ((Pt1.IsEqualTo(quad.Pt1) == false) || (Pt2.IsEqualTo(quad.Pt2) == false))
                return false;
            return true;
        }

        //Find the axis the quad is plane-aligned to
        public QuadAxis FindAxis()
        {
            if (Compare.DoublesAreEqual(Pt1.X, Pt2.X)) return QuadAxis.X;
            if (Compare.DoublesAreEqual(Pt1.Y, Pt2.Y)) return QuadAxis.Y;
            if (Compare.DoublesAreEqual(Pt1.Z, Pt2.Z)) return QuadAxis.Z;
            return QuadAxis.Unknown;
        }

        //Readable description
        public override string ToString()
        {
            string str = "[" + Pt1 + "," + Pt2 + ", " + Properties + "]";
            return str;
        }
    }
}
