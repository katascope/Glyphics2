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

namespace ExampleAutoPlatform3dPrint
{
    /* Example: Automatically ready a 3d print for printing
     * 
     * Example concepts:
     *  1) Loading STL file to Triangles
     *  2) Placing it at y=0 (ground) for easy 3d printing
     *  3) Write Triangles to STL file
     */
    class ExampleResizeStl
    {
        static void Main()
        {
            const string inputFilenameStl = "..\\..\\archquad.stl";
            Console.WriteLine("Input filename: {0}", inputFilenameStl);

            //Load STL file
            Triangles triangles = GraphicsApi.StlToTriangles(inputFilenameStl);

            //Write message if encountered problem
            if (triangles == null)
            {
                Console.WriteLine("Error loading " + inputFilenameStl);
                return;
            }

            //Just output # of triangles to show it is real data
            Console.WriteLine("Triangle count (source): {0}", triangles.Count);

            //Say the dimensions of it too
            Rect triangleBoundariesInput = triangles.TrianglesBoundaries;
            Console.WriteLine("Input {0} Dimensions = {1}mm x {2}mm x {3}mm",
                inputFilenameStl,
                (int)triangleBoundariesInput.Width,
                (int)triangleBoundariesInput.Height,
                (int)triangleBoundariesInput.Depth);

            //Call the auto-zeroing function (moves triangles so bottom point y is at 0)
            triangles.PutOnGround();

            //Then write back to file
            const string outputFilenameStl = "..\\..\\archquad-AutoPlatform.stl";
            Console.WriteLine("Input filename: {0}", outputFilenameStl);
            GraphicsApi.SaveTrianglesToStl(outputFilenameStl, triangles);

            Console.WriteLine("Done.");
        }
    }
}
