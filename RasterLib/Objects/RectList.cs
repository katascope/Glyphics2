#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace GraphicsLib
{
    //Implementation of RectList, see for usage
    public class RectList : IEnumerable<Rect>
    {
        //Dimensions X/Y/Z
        public int SizeX { get; set; }
        public int SizeY { get; set; }
        public int SizeZ { get; set; }

        //Actual list of Rect
        private List<Rect> Rects { get; set; }

        //Constructor
        public RectList()
        {
            Rects = new List<Rect>();
        }

        //Number of rectangles in list
        public int Count { get { return Rects.Count; } }

        //Add a rectangle to the list
        public void AddRect(Rect rect)
        {
            Rects.Add(rect);
        }

        //Get a rectangle from the list
        public Rect GetRect(int id)
        {
            if (id < 0 || id > Count) return null;
            return Rects[id];
        }

        //True if same
        public bool IsEqualTo(RectList rects)
        {
            if (rects == null || rects.Count != Count)
                return false;

            for (int i=0;i<Count;i++)
            {
                Rect rect1 = rects.GetRect(i);
                Rect rect2 = Rects[i];

                if (rect1.IsEqualTo(rect2) == false)
                    return false;
            }
            return true;
        }

        //Readable description
        public override string ToString()
        {
            var sb = new StringBuilder();

            int count = 0;
            foreach (Rect rect in Rects)
            {
                sb.Append(count+" : " +rect + "\r\n");
                count++;
            }
            return sb.ToString();
        }

        //GetToken the smallest power of 2 that will fit V
        public static int SmallestPowerOfN(int v)
        {
            //Find smallest power of 2 max fits in
            int m = 0;
            if (v <= 1) m = 1;
            else if (v <= 2) m = 2;
            else if (v <= 4) m = 4;
            else if (v <= 8) m = 8;
            else if (v <= 16) m = 16;
            else if (v <= 32) m = 32;
            else if (v <= 64) m = 64;
            else if (v <= 128) m = 128;
            else if (v <= 256) m = 256;
            return m;
        }
        //From a list of rectangles, calculate the macro-boundary
        public Rect Boundaries
        {
            get
            {
                double maxX = 0;
                double maxY = 0;
                double maxZ = 0;
                foreach (Rect rect in Rects)
                {
                    if (rect.Pt1[0] > maxX) maxX = rect.Pt1[0];
                    if (rect.Pt2[0] > maxX) maxX = rect.Pt2[0];
                    if (rect.Pt1[1] > maxY) maxY = rect.Pt1[1];
                    if (rect.Pt2[1] > maxY) maxY = rect.Pt2[1];
                    if (rect.Pt1[2] > maxZ) maxZ = rect.Pt1[2];
                    if (rect.Pt2[2] > maxZ) maxZ = rect.Pt2[2];
                }

                maxX = SmallestPowerOfN((int)maxX) - 1;
                maxY = SmallestPowerOfN((int)maxY) - 1;
                maxZ = SmallestPowerOfN((int)maxZ) - 1;

                return new Rect(0, 0, 0, maxX, maxY, maxZ);
            }
        }

        public bool PhysicsConnects(int type1, int type2)
        {
            PhysicsType t1 = (PhysicsType)type1;
            PhysicsType t2 = (PhysicsType)type2;

            if (t1 >= PhysicsType.Circuit 
                && t2 >= PhysicsType.Circuit
  //              && t1 < PhysicsType.GateNot
//                && t2 < PhysicsType.GateNot
                )
            {
                //Normal circuit
                return true;
            }

            return false;
        }

        public bool[,] BuildAdjacencyGraph()
        {
            bool[,] adjacencyGraph = new bool[Rects.Count, Rects.Count];

            for (int i = 0; i < Rects.Count; i++)
            {
                for (int r2 = 0; r2 < Rects.Count; r2++)
                {
                    Rect a = Rects[i];
                    Rect b = Rects[r2];
                    if (i != r2 && a.Touches(b) 
                        && PhysicsConnects(a.Properties.PhysicsId , b.Properties.PhysicsId)
                        && a.Properties.PhysicsId >= (int)PhysicsType.Circuit
                        && b.Properties.PhysicsId >= (int)PhysicsType.Circuit
                        )
                    {
                        adjacencyGraph[i, r2] = true;
                        adjacencyGraph[r2, i] = true;                      
                    }
/*                    else
                    {
                        adjacencyGraph[i, r2] = false;
                        adjacencyGraph[r2, i] = false;
                    }*/
                }
            }
            return adjacencyGraph;
        }


        //Make enumerable instead
        #region Implementation of IEnumerable
        public IEnumerator<Rect> GetEnumerator()
        {
            return Rects.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        #endregion
    }
}
