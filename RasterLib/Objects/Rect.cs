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
    //Implementation of Rect, see for usage
    public class Rect
    {
        public double[] Pt1 { get; set; }
        public double[] Pt2 { get; set; }
        public CellProperties Properties { get; set; }

        public double Width { get { return Pt2[0] - Pt1[0]; } }
        public double Height { get { return Pt2[1] - Pt1[1]; } }
        public double Depth { get { return Pt2[2] - Pt1[2]; } }

        //Default Constructor
        public Rect() { Set(0,0,0,0,0,0); }
        
        //Assignment constructor
        public Rect(double nx1, double ny1, double nz1, double nx2, double ny2, double nz2) { Set(nx1, ny1, nz1, nx2, ny2, nz2); }

        //Assignment constructor
        public Rect(double nx1, double ny1, double nz1, double nx2, double ny2, double nz2, CellProperties newProperties)
        {
            Set(nx1, ny1, nz1, nx2, ny2, nz2);
            Properties.Rgba = newProperties.Rgba;
            Properties.ShapeId = newProperties.ShapeId;
            Properties.TextureId = newProperties.TextureId;
            Properties.GroupId = newProperties.GroupId;
            Properties.PhysicsId = newProperties.PhysicsId;
        }
        
        //Set dimensions of Rect
        private void Set(double nx1, double ny1, double nz1, double nx2, double ny2, double nz2)
        {
            Pt1 = new double[3];
            Pt2 = new double[3];
            Properties = new CellProperties
            {
                ShapeId = 1,
                TextureId = 1
            };
            Pt1[0] = nx1; Pt1[1] = ny1; Pt1[2] = nz1; Pt2[0] = nx2; Pt2[1] = ny2; Pt2[2] = nz2;
        }

        //Copy properties and points from another Rect
        public void CopyFrom(Rect srRect)
        {
            if (srRect == null) return;

            Pt1[0] = srRect.Pt1[0];
            Pt1[1] = srRect.Pt1[1];
            Pt1[2] = srRect.Pt1[2];

            Pt2[0] = srRect.Pt2[0];
            Pt2[1] = srRect.Pt2[1];
            Pt2[2] = srRect.Pt2[2];
            Properties.CopyFrom(srRect.Properties);
        }

        //Readable description
        public override string ToString()
        {
            double w = Pt2[0] - Pt1[0];
            double h = Pt2[1] - Pt1[1];
            double d = Pt2[2] - Pt1[2];
            string dimStr = "(w=" + w + ",h=" + h + ",d=" + d + ")";
            return "[" + dimStr + "(" + Pt1[0] + "," + Pt1[1] + "," + Pt1[2] + ")" + "," + "(" + Pt2[0] + "," + Pt2[1] + "," + Pt2[2] + ")" + "/" + Properties + "]";
        }

        //True if x,y,z is in the rect
        public bool Contains(double x, double y, double z)
        {
            if ((x > Pt2[0]) || (x < Pt1[0]) || (y > Pt2[1]) || (y < Pt1[1]) || (z > Pt2[2]) || (z < Pt1[2])) return false;
            return true;
        }

        //True if same
        public bool IsEqualTo(Rect rect)
        {
            if (rect == null)
                return false;

            if ( (AreEqual(rect.Pt1,Pt1) == false)
                || (AreEqual(rect.Pt2,Pt2) == false) )
            {
                return false;
            }

            return true;
        }

        //True if same
        public bool AreEqual(double[] value1, double[] value2)
        {
            if (value1 == null || value2 == null) return false;

            if ((Compare.DoublesAreEqual(value1[0], value2[0]) == false)
               || (Compare.DoublesAreEqual(value1[1], value2[1]) == false)
               || (Compare.DoublesAreEqual(value1[2], value2[2]) == false))
            {
                return false;
            }
            return true;
        }

        //If both touch each other
        public bool Touches(Rect rectB)
        {
            
            if (Pt1[0] <= rectB.Pt2[0] && Pt2[0] >= rectB.Pt1[0] &&
                Pt1[1] <= rectB.Pt2[1] && Pt2[1] >= rectB.Pt1[1] &&
                Pt1[2] <= rectB.Pt2[2] && Pt2[2] >= rectB.Pt1[2])
                return true;
            return false;

            //Should convert to this later. Will avoid corner problems
            //return RectTouch.TouchesFaces(this, rectB);
        }
    }
}