#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;
using RasterLib;
using RasterLib.Painters;

namespace GraphicsLib.Renderers
{
    //Partial class to render triangles
    internal partial class Renderer : IRenderer
    {
        //Assumes triangle are already unit-normalized to 1x1x1
        public static void MapRectToTriangles(ref List<Triangle> renderedTriangleSoup, Triangles triangles, Rect rect)
        {
            double midX = (rect.Width)/2 + rect.Pt1[0];
            double midY = (rect.Height)/2 + rect.Pt1[1];
            double midZ = (rect.Depth)/2 + rect.Pt1[2];

            Triangles trianglesClone = triangles.Clone();

            trianglesClone.Scale((float)rect.Width, (float)rect.Height, (float)rect.Depth);
            trianglesClone.Translate((float)midX, (float)midY, (float)midZ);

            renderedTriangleSoup.AddRange(trianglesClone.GetTriangleArray());
        }

        //Render rectangles out to Stl using a list to select shapes from
        public Triangles RenderRectsAsStlMapping(RectList rects, TrianglesList trianglesList)
        {
            if (rects == null || trianglesList == null) return null;

            var renderedTriangleSoup = new List<Triangle>();
            foreach (Rect rect in rects)
            {
                if (rect.Properties.ShapeId >= trianglesList.Count)
                    return null;

                Triangles triangles = trianglesList.GetTriangles(rect.Properties.ShapeId);

                MapRectToTriangles(ref renderedTriangleSoup, triangles, rect);
            }
            Triangles triangleSet = new Triangles();
            Triangle[] triangleArray = renderedTriangleSoup.ToArray();
            triangleSet.SetTriangles(triangleArray);

            //Center entire grid/set on origin, mirror, and rotate to correct
            triangleSet.Translate(-rects.SizeX / 2.0f, -rects.SizeY / 2.0f, -rects.SizeZ / 2.0f);
            
            return triangleSet;
        }

        //Render triangles dRectly to a grid by drawing the triangles
        public void RenderTrianglesToGrid(Triangles triangles, Grid grid)
        {
            if (triangles == null || grid == null) return;

            IPainter painter = new CPainter();
            GridContext bgc = new GridContext(grid);

            float sx = grid.SizeX - 1;
            float sy = grid.SizeY - 1;
            float sz = grid.SizeZ - 1;

            bgc.Pen.Rgba = RasterApi.Rgba2Ulong(255, 255, 255, 255);
            foreach (Triangle triangle in triangles.GetTriangleArray())
            {
                var x1 = (int)((triangle.Vertex1[0] + 0.5f) * sx);
                var y1 = (int)((triangle.Vertex1[1] + 0.5f) * sy);
                var z1 = (int)((triangle.Vertex1[2] + 0.5f) * sz);

                var x2 = (int)((triangle.Vertex2[0] + 0.5f) * sx);
                var y2 = (int)((triangle.Vertex2[1] + 0.5f) * sy);
                var z2 = (int)((triangle.Vertex2[2] + 0.5f) * sz);

                var x3 = (int)((triangle.Vertex3[0] + 0.5f) * sx);
                var y3 = (int)((triangle.Vertex3[1] + 0.5f) * sy);
                var z3 = (int)((triangle.Vertex3[2] + 0.5f) * sz);

                //This requires a filled triangle3d function
                painter.DrawFillTriangle3D(bgc, x1, y1, z1, x2, y2, z2, x3, y3, z3);
            }
        }
    }
}
