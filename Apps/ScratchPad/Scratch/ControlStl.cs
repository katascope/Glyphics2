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

namespace ScratchPad.Scratch
{
    public class ControlStl
    {
        public static void Control(ScratchControl ctl, RectList rects)
        {
            //Then render that to triangles
            Console.WriteLine("Creating triangle library");
            TrianglesList trianglesList = RasterLib.RasterApi.CreateTrianglesList();

            foreach (string filename in ctl.FileNamesInStlLibrary)
                trianglesList.ImportAndReduceToUnit(filename);

            //Render the rectangles out as shapes(Triangles) to a new set of triangles
            Triangles triangles = GraphicsApi.Renderer.RenderRectsAsStlMapping(rects, trianglesList);
            Console.WriteLine("Rendering triangles to grid");

            //Reduce scale to 1x1x1, making it 1mm x 1mm x 1mm
            triangles.CalcNormals();
            triangles.ReduceToUnit();
            triangles.Translate(0.5f, 0.5f, 0.5f);

            //Scale up to make an exactly sized models in inches then millimeters
            const float finalSizeInInches = 2;
            const float finalSizeInMillimeters = finalSizeInInches * 25.4f; //Inches to millimeters
            triangles.Scale(finalSizeInMillimeters, finalSizeInMillimeters, finalSizeInMillimeters);

            //Save final result to STL file
            Console.WriteLine("Saving triangles to {0}", ctl.FileNameOutStl);
            RasterLib.RasterApi.SaveTrianglesToStlAscii(ctl.FileNameOutStl, triangles);

            //So.. as long as we are here.. let's make a preview

            //Since we can, normalize it now
            triangles.ReduceToUnit();

            //Save a rendering out to a PNG, why not, too.
            Console.WriteLine("Creating preview grid");
            Grid gridFromStl = RasterLib.RasterApi.CreateGrid(96, 96, 96, 4);

            Console.WriteLine("Rendering triangles to grid");
            GraphicsApi.Renderer.RenderTrianglesToGrid(triangles, gridFromStl);

            //Then render to a new grid
            Console.WriteLine("Rendering grid to oblique preview grid");
            Grid gridObliqueRendered = GraphicsApi.Renderer.RenderObliqueCells(gridFromStl);

            //Then save            
            if (ctl.FileNameOutStlPreview != null)
            {
                Console.WriteLine("Saving file to {0}", ctl.FileNameOutStlPreview);
                GraphicsApi.SaveFlatPng(ctl.FileNameOutStlPreview, gridObliqueRendered);
            }
        }
    }
}
