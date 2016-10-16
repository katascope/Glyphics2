#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using RasterLib;
using GraphicsLib;
using RasterLib.Language;

namespace CodeScoper
{
    /* Example: CodeScoper
     * Purpose: Utility for showing detailed information from RasterApi
     */
    class CodeScoper
    {
        static void Main()
        {
            SuperDebug("Size3D1 4 4 4;PenColorD4 31 127 255 255;FillRect 0 0 0 31 0 31;FillStairs 1 1 0 4 4 0 1 1 3");
        }
        static void SuperDebug(string codeString)
        {
            Code code = RasterApi.CreateCode(codeString);
            Console.WriteLine("Code: {0}\n", codeString);

            Codename codename = RasterApi.CodeToCodename(code);
            Console.WriteLine("Codename: {0}\n", codename);

            Grid grid = RasterApi.CodeToGrid(code);
            Console.WriteLine("Grid: {0} {1} non-empty\n", grid, grid.CountNonZero());

            GridList grids = RasterApi.CodeToThumbnailed(code);
            Console.WriteLine("Thumbnails: {0}", grids);

            foreach (Grid g in grids)
            {
                Grid gOblique = GraphicsApi.Renderer.RenderObliqueCells(g);
                GraphicsApi.SaveFlatPng("..\\..\\foo-" + g.SizeX + ".png", gOblique);
            }
            
            string bytesDesc = RasterApi.BytesToString(grid.CloneData());Console.WriteLine("GridBytes:\n{0}\n", bytesDesc);
            RectList rects = GraphicsApi.GridToRects(grid); Console.WriteLine("Rects: {0}\n{1}", rects.Count, rects);
            string serialized = GraphicsApi.RectsToSerializedRects(rects).SerializedData;
            Console.WriteLine("Serialized Rects: (len={0})\n{1}\n", serialized.Length, serialized);
            Console.WriteLine("Preserialized Code:\n{0}\n", codeString + serialized);
            
            QuadList quads = GraphicsApi.RectsToQuads(rects); Console.WriteLine("Quads: {0}\n", quads);
            Triangles triangles = GraphicsApi.QuadsToTriangles(quads); Console.WriteLine("Triangles: {0}\n", triangles);
            Console.WriteLine("2d view:\n{0}", GraphicsApi.GridToHexDescription(grid));
            Console.WriteLine("3d view:\n{0}", GraphicsApi.GridTo3DDescription(grid, 0, 0, 0));
        }
    }
}
