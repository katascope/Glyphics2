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

namespace ExampleImageGeneration
{
    /* Example: Image generation
     * Purpose: Procedurally create an image and save to file
     * 
     * Example concepts:
     * 1) Generate a grid
     * 2) Manually accessing rgba values of it
     * 3) Writing PNG file
     */
    class ExampleImageGeneration
    {
        //Example draws a simple bit fractal.
        static void DrawProceduralImage(Grid grid)
        {
            for (int y=0;y<grid.SizeY;y++)
            {
                for (int x = 0; x < grid.SizeX; x++)
                {
                    //Just use some simple procedural effects
                    int sx = (x - grid.SizeX / 2);
                    int sy = (y - grid.SizeY / 2);
                    var r = (byte)((sx * sy) / 10);
                    var g = (byte)((sx & sy) / 63);
                    var b = (byte)((sx * sx + sy * sy) / 25);

                    //Convert to ulong 
                    ulong u = RasterApi.Rgba2Ulong(r, g, b, 255);

                    //And plot it
                    grid.Plot(x, y, 0, u);
                }
            }
        }

        static void Main()
        {
            //Create a grid
            Grid grid = RasterApi.CreateGrid(256, 256, 1, 4);

            //Draw procedural image to grid
            DrawProceduralImage(grid);

            //Save grid to png
            GraphicsApi.SaveFlatPng("..\\..\\generated.png", grid);

            Console.WriteLine("Done.");
        }
    }
}
