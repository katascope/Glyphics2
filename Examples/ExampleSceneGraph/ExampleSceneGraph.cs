#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;

namespace ExampleSceneGraph
{
    class ExampleSceneGraph
    {
        static void Main()
        {
            //Simple Glyphics codeString
            const string code =
                @"Simple,

#Size of Grid
Size3D4 16 16 16;

#Blue color ground
PenColorD4 31 127 255 255;WallCube 1;

#White border around ground's edge
PenColorD4 255 255 255 255;Rect 0 0 0 15 0 15;

#Red box in center
PenColorD4 255 31 127 255;FillRect 4 1 4 11 2 11;

#Green text letter 'A' (ascii 65) on top
PenColorD4 31 255 127 255;Text 6 3 8 65";

            //Glyphics codeString object
            Code rasterCode =RasterLib.RasterApi.CreateCode(code);

            //Save final result to PNG file
            string filename = "..\\..\\" +RasterLib.RasterApi.CodeToCodename(rasterCode).Name + ".PNG";

            Grid grid =RasterLib.RasterApi.CodeToGrid(rasterCode);

            //Execute, render, and save to png
            GraphicsApi.SaveFlatPng(filename,
                GraphicsApi.Renderer.RenderObliqueCells(grid));

            RectList rectsFromGrid =RasterLib.RasterApi.GridToRects(grid);
            Grid gridFromRects = grid.Clone();
            if (grid.IsEqualTo(gridFromRects) == false)
            {
                Console.WriteLine("Grids are diff");
                return;
            }

            GraphicsApi.Renderer.RenderRectsToGrid(rectsFromGrid, gridFromRects);
            if (grid.IsEqualTo(gridFromRects) == false)
            {
                Console.WriteLine("Grids are diff");
                return;
            }

            Scene sceneFromRects =RasterLib.RasterApi.RectsToScene(rectsFromGrid);
            RectList rectsFromScene =RasterLib.RasterApi.SceneToRects(sceneFromRects);

            if (rectsFromGrid.IsEqualTo(rectsFromScene) == false)
            {
                Console.WriteLine("Rects are diff");
                return;
            }

            Grid gridMega = grid.Clone();
            GraphicsApi.Renderer.RenderRectsToGrid(rectsFromScene, gridMega);

            if (grid.IsEqualTo(gridMega) == false)
            {
                Console.WriteLine("Grids are diff");
                return;
            }

            //Loops Code->Grid->Rects->Scene->Rects->Grid.. and all same
            Console.WriteLine("All conversions are okay");
        }
    }
}
