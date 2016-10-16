﻿#region Copyright
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

namespace ExampleSTLToGrid
{
    /* Example: STL To Grid
     * Purpose: Illustrate process for importing STL, rendering to Grid, output to new Grid
     * 
     * Example Concepts:
     *  1) Create Grid by API
     *  2) Loading Triangles from STL file
     *  3) Rendering Triangles to an Grid
     *  4) Rendering 3D Grid to oblique 2D Grid
     *  5) Saving Grid to PNG file
     */
    class ExampleStlToGrid
    {
        static void Main()
        {
            //Manually create 64x64x64 grid to draw STL to
            Grid grid = RasterApi.CreateGrid(64, 64, 64, 4);

            const string inputFilenameStl = "..\\..\\archquad.stl";
            Console.WriteLine("Input filename: {0}", inputFilenameStl);

            //Load the triangles from the STL file and reduce to a unit 1x1x1 size
            Triangles triangles = GraphicsApi.StlToTriangles(inputFilenameStl);            
            triangles.ReduceToUnit();            
            Console.WriteLine("Triangle count: {0}", triangles.Count);

            //Render the triangles to the grid, will autosize to grid size
            GraphicsApi.Renderer.RenderTrianglesToGrid(triangles, grid);

            //At this point we've loaded and grid has the rendering. So let's make a pretty rendering.

            //Render the 3D grid to a new 2D grid, in oblique view
            Grid gridObliqueRendering = GraphicsApi.Renderer.RenderObliqueCells(grid);

            //Write out a little bit about the grid
            Console.WriteLine("Grid: ({0},{1},{2})", grid.SizeX, grid.SizeY, grid.SizeZ);

            //Just state the dRectory we are writing to.
            const string outputFilenamePng = "..\\..\\test.png";
            Console.WriteLine("\nOutput filename: {0}", outputFilenamePng);

            //Finally save the oblique rendering out to a png file
            GraphicsApi.SaveFlatPng(outputFilenamePng, gridObliqueRendering);

            Console.WriteLine("Done");
        }
    }
}
