#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Text;
using System.Collections.Generic;
using RasterLib;

namespace GraphicsLib
{
    //Implementation of Triangles, see for usage
    public class Triangles
    {
        //Actual string name
        public string Name { get; set; }

        private Triangle[] _triangleArray;

        //Get count of triangles in array
        public int Count { get { return _triangleArray.Length; } }

        //Constructor
        public Triangles()
        {
            _triangleArray = null;
        }

        //Add triangles
        public void Add(Triangles tris)
        {
            if (tris == null) return;

            //Will need to resize triangle array, so copy it into a list for now

            var triList = new List<Triangle>();

            //Add current ones to new list
            if (_triangleArray != null)
            {
                triList.AddRange(_triangleArray);
            }

            //Add tris's triangles to list
            triList.AddRange(tris.GetTriangleArray());

            _triangleArray = triList.ToArray();
        }

        //Assignment constructor
        public Triangles(Triangle[] tris)
        {
            _triangleArray = tris;
        }

        //Get the array of triangles
        public Triangle[] GetTriangleArray()
        {
            return _triangleArray;
        }

        //Set the array of triangles
        public void SetTriangles(Triangle[] triangles)
        {
            _triangleArray = triangles;
        }

        //Compare to another Triangles
        public bool IsEqualTo(Triangles triangles)
        {
            if (triangles == null || triangles.Count != Count)
                return false;

            for (int i = 0; i < triangles.Count; i++)
            {
                Triangle t1 = _triangleArray[i];
                Triangle t2 = triangles.GetTriangleArray()[i];

                if (CompareNormals(t1, t2) != true)
                    return false;

                if (CompareVertices(t1, t2) != true)
                    return false;
            }
            return true;
        }

        private static bool CompareVertices(Triangle triangle1, Triangle triangle2)
        {
            if (RasterApi.FloatsAreEqual(triangle1.Vertex1[0], triangle2.Vertex1[0])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Vertex1[1], triangle2.Vertex1[1])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Vertex1[2], triangle2.Vertex1[2])) return true;

            if (RasterApi.FloatsAreEqual(triangle1.Vertex2[0], triangle2.Vertex2[0])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Vertex2[1], triangle2.Vertex2[1])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Vertex2[2], triangle2.Vertex2[2])) return true;

            if (RasterApi.FloatsAreEqual(triangle1.Vertex3[0], triangle2.Vertex3[0])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Vertex3[1], triangle2.Vertex3[1])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Vertex3[2], triangle2.Vertex3[2])) return true;
            
            return false;
        }

        private static bool CompareNormals(Triangle triangle1, Triangle triangle2)
        {
            if (RasterApi.FloatsAreEqual(triangle1.Normal[0], triangle2.Normal[0])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Normal[1], triangle2.Normal[1])) return true;
            if (RasterApi.FloatsAreEqual(triangle1.Normal[2], triangle2.Normal[2])) return true;

            return false;
        }

        //Duplicate object
        public Triangles Clone()
        {
            var triangleList = new List<Triangle>();

            foreach (Triangle triangle in _triangleArray)
            {
                triangleList.Add(triangle.Clone());

            }
            Triangles newTriangles = new Triangles(triangleList.ToArray()) {Name = Name};

            return newTriangles;
        }

        //Calculate boundaries of vertices, as a volume
        public Rect TrianglesBoundaries
        {
            get
            {
                const int limit = 10000;
                Rect rect = new Rect(limit, limit, limit, -limit, -limit, -limit);

                foreach (Triangle triangle in _triangleArray)
                {
                    double minX = Min(triangle.Vertex1[0], triangle.Vertex2[0], triangle.Vertex2[0]);
                    double maxX = Max(triangle.Vertex1[0], triangle.Vertex2[0], triangle.Vertex2[0]);
                    double minY = Min(triangle.Vertex1[1], triangle.Vertex2[1], triangle.Vertex2[1]);
                    double maxY = Max(triangle.Vertex1[1], triangle.Vertex2[1], triangle.Vertex2[1]);
                    double minZ = Min(triangle.Vertex1[2], triangle.Vertex2[2], triangle.Vertex2[2]);
                    double maxZ = Max(triangle.Vertex1[2], triangle.Vertex2[2], triangle.Vertex2[2]);
                    if (minX < rect.Pt1[0]) rect.Pt1[0] = minX;
                    if (maxX > rect.Pt2[0]) rect.Pt2[0] = maxX;
                    if (minY < rect.Pt1[1]) rect.Pt1[1] = minY;
                    if (maxY > rect.Pt2[1]) rect.Pt2[1] = maxY;
                    if (minZ < rect.Pt1[2]) rect.Pt1[2] = minZ;
                    if (maxZ > rect.Pt2[2]) rect.Pt2[2] = maxZ;
                }
                return rect;
            }
        }

        //Find the minimum of v1, v2, v3
        private static double Min(double v1, double v2, double v3)
        {
            if (v1 < v2 && v1 < v3) return v1;
            if (v2 < v3 && v2 < v1) return v2;
            if (v3 < v1 && v3 < v2) return v3;
            return v1;
        }

        //Find the maximum of v1, v2, v3
        private static double Max(double v1, double v2, double v3)
        {
            if (v1 > v2 && v1 > v3) return v1;
            if (v2 > v3 && v2 > v1) return v2;
            if (v3 > v1 && v3 > v2) return v3;
            return v1;
        }

        //Relative translation XYZ
        public void Translate(float x, float y, float z)
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.Translate(x, y, z);
        }

        //Relative rotation angle in degrees not radians
        public void RotateX(float angle)
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.RotateX(angle);
        }

        //Relative rotation angle in degrees not radians
        public void RotateY(float angle)
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.RotateY(angle);
        }

        //Relative rotation angle in degrees not radians
        public void RotateZ(float angle)
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.RotateZ(angle);
        }

        //Relative scale XYZ
        public void Scale(float scaleX, float scaleY, float scaleZ)
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.Scale(scaleX, scaleY, scaleZ);
        }

        //Flip X
        public void MirrorX()
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.MirrorX();
        }

        //Flip Y
        public void MirrorY()
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.MirrorY();
        }

        //Flip Z
        public void MirrorZ()
        {
            foreach (Triangle triangle in _triangleArray)
                triangle.MirrorZ();
        }

        //Rescales a set of triangles to a max size of 1 on any dimension
        // i.e. normalizes to 1x1x1 if perfect cube, otherwise only 1x?x? for the longest dimension
        public void ReduceToUnit()
        {
            Rect rect = TrianglesBoundaries;

            var max = (float)Max(rect.Width, rect.Height, rect.Depth);
            float factor = (1 / max);

            double centerX = ((rect.Width )  / 2 + rect.Pt1[0]) * factor;
            double centerY = ((rect.Height ) / 2 + rect.Pt1[1]) * factor;
            double centerZ = ((rect.Depth )  / 2 + rect.Pt1[2]) * factor;

            foreach (Triangle triangle in _triangleArray)
            {
                triangle.Vertex1[0] *= factor;
                triangle.Vertex1[1] *= factor;
                triangle.Vertex1[2] *= factor;

                triangle.Vertex2[0] *= factor;
                triangle.Vertex2[1] *= factor;
                triangle.Vertex2[2] *= factor;

                triangle.Vertex3[0] *= factor;
                triangle.Vertex3[1] *= factor;
                triangle.Vertex3[2] *= factor;

                triangle.Vertex1[0] -= (float)centerX;
                triangle.Vertex1[1] -= (float)centerY;
                triangle.Vertex1[2] -= (float)centerZ;

                triangle.Vertex2[0] -= (float)centerX;
                triangle.Vertex2[1] -= (float)centerY;
                triangle.Vertex2[2] -= (float)centerZ;

                triangle.Vertex3[0] -= (float)centerX;
                triangle.Vertex3[1] -= (float)centerY;
                triangle.Vertex3[2] -= (float)centerZ;
            }
        }

        //Readable description
        public override string ToString()
        {
            var sb = new StringBuilder();

            //sb.Append(_triangleArray.Length + "\r\n"); 
            
            foreach (Triangle triangle in _triangleArray)
            {
                sb.Append("[");
                sb.Append("(" + triangle.Normal[0] + "," + triangle.Normal[1] + "," + triangle.Normal[2] + ") ");
                sb.Append("/");
                sb.Append("(" + triangle.Vertex1[0] + "," + triangle.Vertex1[1] + "," + triangle.Vertex1[2] + ") ,");
                sb.Append("(" + triangle.Vertex2[0] + "," + triangle.Vertex2[1] + "," + triangle.Vertex2[2] + ") ,");
                sb.Append("(" + triangle.Vertex3[0] + "," + triangle.Vertex3[1] + "," + triangle.Vertex3[2] + ") ");
                if (triangle.Properties != null)
                {
                    sb.Append("/");
                    sb.Append(triangle.Properties);
                }
                sb.Append("]\r\n");
            }
            return sb.ToString();
        }
        
        //For putting on ground (elevation zero, for easy printing)
        public void PutOnGround()
        {
            var y = (float)TrianglesBoundaries.Pt1[1];

            foreach (Triangle triangle in _triangleArray)
                triangle.Translate(0, -y, 0);
        }

        //Calculate normals for all triangles
        public void CalcNormals()
        {
            foreach (Triangle triangle in _triangleArray)
            {
                triangle.CalcNormal();
            }
        }
    }
}
