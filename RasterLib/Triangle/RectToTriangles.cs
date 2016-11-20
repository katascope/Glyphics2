#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;
using GraphicsLib;

namespace GraphicsLib
{
    //Converts rects to quads to triangles
    public class RectToTriangles
    {
        private RectToTriangles() { }

        //Convert 6 Quads to 12 triangles, along the faces of a cube
        public static void RectToTrianglesCube(ref List<Triangle> triangles, Rect rect)
        {
            QuadList quads = RectToQuads(rect);
            //RectToTrianglesCube(ref triangles, rect);

            foreach (Quad quad in quads)
            {
                Triangles twoTriangles = QuadToTwoTriangles(quad);
                triangles.Add(twoTriangles.GetTriangleArray()[0]);
                triangles.Add(twoTriangles.GetTriangleArray()[1]);
            }
        }
        
        //This should be deprecated as it creates it's own vertices instead of using STL
        public static Triangles RectsToTrianglesCube(RectList rectSet)
        {
            var triangles = new List<Triangle>();

            //Iterate through reach rectangle(volume/cube) creating triangles
            foreach (Rect rect in rectSet)
            {
                QuadList quads = RectToQuads(rect);
                //RectToTrianglesCube(ref triangles, rect);
                
                foreach (Quad quad in quads)
                {
                    Triangles twoTriangles = QuadToTwoTriangles(quad);
                    triangles.Add(twoTriangles.GetTriangleArray()[0]);
                    triangles.Add(twoTriangles.GetTriangleArray()[1]);
                }
            }

            return new Triangles(triangles.ToArray());
        }

        //Convert one quad into two triangles
        public static Triangles QuadToTwoTriangles(Quad quad)
        {
            var triangleList = new List<Triangle>();
            Triangles triangles = new Triangles();

            var x1 = (float)quad.Pt1.X;
            var x2 = (float)quad.Pt2.X;
            var y1 = (float)quad.Pt1.Y;
            var y2 = (float)quad.Pt2.Y;
            var z1 = (float)quad.Pt1.Z;
            var z2 = (float)quad.Pt2.Z;

            QuadAxis qa = quad.FindAxis();

            if (qa == QuadAxis.X)
            {
                float sameX = x1;

                Triangle triangle1 = new Triangle();
                triangle1.SetTriangle(
                    sameX, y1, z1,
                    sameX, y2, z1,
                    sameX, y2, z2
                    );

                /*
                    sameX, y1, z1,
                    sameX, y2, z1,
                    sameX, y2, z2
                 * );
                 */
                triangle1.Properties = quad.Properties.Clone();
                triangleList.Add(triangle1);

                Triangle triangle2 = new Triangle();
                triangle2.SetTriangle(
                    sameX, y1, z1,
                    sameX, y1, z2,
                    sameX, y2, z2);
                triangle2.Properties = quad.Properties.Clone();
                triangleList.Add(triangle2);
            }
            if (qa == QuadAxis.Y)
            {
                float sameY = y1;

                Triangle triangle1 = new Triangle();
                triangle1.SetTriangle(
                    x1, sameY, z1,
                    x2, sameY, z2,
                    x1, sameY, z2);
                triangle1.Properties = quad.Properties.Clone();
                triangleList.Add(triangle1);

                Triangle triangle2 = new Triangle();
                triangle2.SetTriangle(
                    x1, sameY, z1,
                    x2, sameY, z1,
                    x2, sameY, z2);
                triangle2.Properties = quad.Properties.Clone();
                triangleList.Add(triangle2);
            }
            if (qa == QuadAxis.Z)
            {
                float sameZ = z1;

                Triangle triangle1 = new Triangle();
                triangle1.SetTriangle(
                    x1, y1, sameZ,
                    x2, y2, sameZ,
                    x1, y2, sameZ);
                triangle1.Properties = quad.Properties.Clone();
                triangleList.Add(triangle1);

                Triangle triangle2 = new Triangle();
                triangle2.SetTriangle(
                    x1, y1, sameZ,
                    x2, y1, sameZ,
                    x2, y2, sameZ);
                triangle2.Properties = quad.Properties.Clone();
                triangleList.Add(triangle2);
            }

            triangles.SetTriangles(triangleList.ToArray());
            return triangles;
        }

        //convert a quad to its two triangles
        public static Triangles QuadsToTriangles(QuadList quads)
        {
            var triangleList = new List<Triangle>();

            foreach (Quad quad in quads)
            {
                Triangles triangles = QuadToTwoTriangles(quad);
                triangles.GetTriangleArray()[0].CalcNormal();
                triangles.GetTriangleArray()[1].CalcNormal();
                triangleList.Add(triangles.GetTriangleArray()[0]);
                triangleList.Add(triangles.GetTriangleArray()[1]);
            }

            Triangles trianglesPack = new Triangles();
            trianglesPack.SetTriangles(triangleList.ToArray());

            return trianglesPack;
        }

        //Convert rectangle to its 6 quads
        public static QuadList RectToQuads(Rect rect)
        {
            QuadList quads = new QuadList();

            Quad quadTopper = new Quad(rect.Pt1[0], rect.Pt2[1], rect.Pt1[2], rect.Pt2[0], rect.Pt2[1], rect.Pt2[2]);
            quadTopper.Properties = rect.Properties.Clone();
            Quad quadBottom = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt1[2], rect.Pt2[0], rect.Pt1[1], rect.Pt2[2]);
            quadBottom.Properties = rect.Properties.Clone();

            Quad quadFront = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt2[2], rect.Pt2[0], rect.Pt2[1], rect.Pt2[2]);
            quadFront.Properties = rect.Properties.Clone();
            Quad quadBack = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt1[2], rect.Pt2[0], rect.Pt2[1], rect.Pt1[2]);
            quadBack.Properties = rect.Properties.Clone();

            Quad quadRight = new Quad(rect.Pt2[0], rect.Pt1[1], rect.Pt1[2], rect.Pt2[0], rect.Pt2[1], rect.Pt2[2]);
            quadRight.Properties = rect.Properties.Clone();
            Quad quadLeft = new Quad(rect.Pt1[0], rect.Pt1[1], rect.Pt1[2], rect.Pt1[0], rect.Pt2[1], rect.Pt2[2]);
            quadLeft.Properties = rect.Properties.Clone();

            quads.AddQuad(quadFront);
            quads.AddQuad(quadBack);
            quads.AddQuad(quadTopper);
            quads.AddQuad(quadBottom);
            quads.AddQuad(quadRight);
            quads.AddQuad(quadLeft);

            return quads;
        }

        //Convert rectangles to their 6 quads
        public static QuadList RectsToQuads(RectList rectSet)
        {
            QuadList quadsMacro = new QuadList();

            foreach (Rect rect in rectSet)
            {
                QuadList quads = RectToQuads(rect);

                foreach (Quad quad in quads)
                    quadsMacro.AddQuad(quad);
            }

            //Remove redundant ones automatically
            RemoveRedundantQuads(quadsMacro);

            return quadsMacro;
        }

        //Remove redundant quads to reduce total count
        public static int RemoveRedundantQuads(QuadList quads)
        {
            int removedCount = 0;

            for (int me = 0;me<quads.Count;me++)
            {
                for (int you = me; you < quads.Count; you++)
                {
                    if (me != you)
                    {
                        Quad meQuad = quads.GetQuad(me);
                        Quad youQuad = quads.GetQuad(you);
                        //I saw a duplicate
                        if  ( (meQuad.Pt1.IsEqualTo(youQuad.Pt1))
                              && (meQuad.Pt2.IsEqualTo(youQuad.Pt2)))
                        {
                            //we have a redundancy
                            removedCount++;
                            quads.RemoveQuad(youQuad);
                        }
                    }
                }
            }
            return removedCount;
        }

        public static Triangles GetUnitCube()
        {
            List<Triangle> triangles = new List<Triangle>();

            //Front lower right
            Triangle triangle = new Triangle(0.0f, 0.0f, 1.0f);
            triangle.SetTriangle(0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f);
            triangles.Add(triangle);
            //Front Upper left
            triangle = new Triangle(0.0f, 0.0f, 1.0f);
            triangle.SetTriangle(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f);
            triangles.Add(triangle);
            
            //Left Side back bottom
            triangle = new Triangle(-1.0f, 0.0f, 0.0f);
            triangle.SetTriangle(0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f);
            triangles.Add(triangle);
            //Left side front top
            triangle = new Triangle(-1.0f, 0.0f, 0.0f);
            triangle.SetTriangle(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f);
            triangles.Add(triangle);
            
            //Top
            triangle = new Triangle(0.0f, 1.0f, 0.0f);
            triangle.SetTriangle(0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f);
            triangles.Add(triangle);
            triangle = new Triangle(0.0f, 1.0f, 0.0f);
            triangle.SetTriangle(0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);
            triangles.Add(triangle);

            //Right
            triangle = new Triangle(1.0f, 0.0f, 0.0f);
            triangle.SetTriangle(1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f);
            triangles.Add(triangle);
            triangle = new Triangle(1.0f, 0.0f, 0.0f);
            triangle.SetTriangle(1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f);
            triangles.Add(triangle);
            
            //Bottom
            triangle = new Triangle(0.0f, -1.0f, 0.0f);
            triangle.SetTriangle(0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f);
            triangles.Add(triangle);
            triangle = new Triangle(0.0f, -1.0f, 0.0f);
            triangle.SetTriangle(0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f);
            triangles.Add(triangle);

            //Back
            triangle = new Triangle(0.0f, 0.0f, 1.0f);
            triangle.SetTriangle(0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f);
            triangles.Add(triangle);
            triangle = new Triangle(0.0f, 0.0f, 1.0f);
            triangle.SetTriangle(0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f);
            triangles.Add(triangle);
            
            return new Triangles(triangles.ToArray());
        }
    }
}


