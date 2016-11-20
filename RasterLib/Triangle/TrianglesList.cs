﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections;
using System.Collections.Generic;
using GraphicsLib;

namespace GraphicsLib
{
    //Implementation of TrianglesList, see for usage
    public class TrianglesList : IEnumerable<Triangles>
    {
        //Actual Triangles list
        private List<Triangles> TrianglesSet { get; set; }

        //Create a triangle-based cube 'manually'
        public void AddDefaultCube()
        {
            TrianglesSet.Add(TriangleUnitCube.GetUnitCube());
        }

        //Constructor
        public TrianglesList()
        {
            TrianglesSet = new List<Triangles>();
            AddDefaultCube();
        }

        //Number of triangles sets in set
        public int Count { get { return TrianglesSet.Count; } }

        //Add another triangle set to set
        public void AddTriangles(Triangles triangles)
        {
            TrianglesSet.Add(triangles);
        }

        //Get triangle set id, null if out of range
        public Triangles GetTriangles(int id)
        {
            if (id < 0 || id >= Count) return null;
            return TrianglesSet[id];
        }

        //TODO: Refactor and move FileStl down to Atomics layer
        //Import another file straight from .stl
        public void Import(string filename)
        {
            Triangles triangles = FileStlRead.ReadFile(filename);
            TrianglesSet.Add(triangles);
        }

        //Import AND Reduce triangles to unit (1x1x1) size
        public void ImportAndReduceToUnit(string filename)
        {
            Triangles triangles = FileStlRead.ReadFile(filename);
            triangles.ReduceToUnit();
            TrianglesSet.Add(triangles);
        }

        //Scales triangles to fit in a 1x1x1 cube
        public void ReduceToUnit()
        {
            foreach (Triangles triangles in TrianglesSet)
                triangles.ReduceToUnit();
        }

        //Make enumerable instead
        #region Implementation of IEnumerable
        public IEnumerator<Triangles> GetEnumerator()
        {
            return TrianglesSet.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        #endregion
    }
}
