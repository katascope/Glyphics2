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
using RasterLib.Language;


namespace VertexCSG
{
    class CSG
    {
    /* Example: 
     * Purpose: 
     * 
     * Example concepts:
     *  1) Create Code from code string
     *  2) Extracting codename from Code
     *  3) Loading library of Triangles
     *  4) Rendering Grid to Triangles
     *  5) Scaling for absolute real-world dimensions in inches
     *  6) Converting inches to millimeters
     *  7) Saving New STL to file
     */
        static void Main()
        {
            //Glyphics codeString string
  /*          
                        const string code = @"PrintableNexus,Size3D4 64 64 64;Spawn 25 5 25;PenShape 1;
            PenColorD4 31 127 255 255;WallCube 1;

            PenColorD4 255 255 255 255;PenSize 1 2 1;Rect 0 0 0 31 0 31;Rect 0 0 32 31 0 63;Rect 32 0 0 63 0 31;Rect 32 0 32 63 0 63;Rect 16 0 16 48 0 48;
            PenSize 1 1 1;PenColorD4 31 127 255 255;FillRect 17 0 17 47 0 47;FillRect 16 1 49 48 16 63;
            PenColorD4 0 0 0 0;
            FillRect 17 1 49 47 15 63;
            Rect 0 1 0 63 63 63;
            ImgEdgeX 255 255 255 255;ImgEdgeY 255 255 255 255;ImgEdgeZ 255 255 255 255;
            #Now draw the multicolor volumes
            PenShape 2;
            PenColorD3 127 255 127;FillRect 2 1 2 13 12 13; 
            PenColorD3 255 127 127;FillRect 2 1 18 13 12 29;
            PenColorD3 127 127 255;FillRect 2 1 34 13 12 45;
            PenColorD3 255 255 127;FillRect 2 1 50 13 12 61;
            PenColorD3 255 127 255;FillRect 18 1 2 29 12 13;

            # Shape on top
            PenShape 3;PenColorD3 255 255 255;FillRect 26 17 51 36 28 62;

            #Finally create a mirror image to the other side
            ImgMirrorX
            "; 
*/
            const string code = @"_Palette,
Size3D4 16 16 16
PenShape 1
PenColorD4 31 127 255 255
WallCube 1

PenShape 1
Plot 2 1 2
Rect 1 1 1 14 2 14
FillRect 4 1 4 11 10 11

#Cylinders
PenShape 2
Rect 1 3 1 2 12 2

#Cone
PenShape 3
Rect 1 13 1 2 14 2
FillRect 4 10 4 11 16 11

ImgMirrorX
ImgMirrorZ
";

            //Then render that to triangles
            string dir = "C:\\Github\\Glyphics2\\Stl Files\\";
            Console.WriteLine("Creating triangle library");

            TrianglesList trianglesList = RasterLib.RasterApi.CreateTrianglesList();
            trianglesList.ImportAndReduceToUnit(dir + "Box.stl");      //1
            trianglesList.ImportAndReduceToUnit(dir + "Cylinder.stl"); //2
            trianglesList.ImportAndReduceToUnit(dir + "Cone.stl");     //3
            trianglesList.ImportAndReduceToUnit(dir + "Wedge.stl");//3
            trianglesList.ImportAndReduceToUnit(dir + "WedgeCorn1.stl");//4
            trianglesList.ImportAndReduceToUnit(dir + "WedgeCorn2.stl");//5
            trianglesList.ImportAndReduceToUnit(dir + "WedgeCurved.stl");//6
            trianglesList.ImportAndReduceToUnit(dir + "WedgeCurvedCorner1.stl");//7
            trianglesList.ImportAndReduceToUnit(dir + "WedgeCurvedCorner2.stl");//8

            //            const string codeString = @"PrintableNexus,Size3D4 4 4 4;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4;";
            Console.WriteLine("Code: {0}", code);

            //Glyphics codeString object
            Code rasterCode = RasterLib.RasterApi.CreateCode(code);

            //Extract codename from codeString object, to use for filename
            Codename codename = RasterLib.RasterApi.CodeToCodename(rasterCode);

            //Create filename
            string outputFilename = dir + codename.Name + ".STL";
            Console.WriteLine("\nOutput Filename: {0}", outputFilename);

            //Convert the codeString to actual grid
            Console.WriteLine("Code to grid");
            Grid grid = RasterLib.RasterApi.CodeToGrid(rasterCode);

            //Convert to rects
            Console.WriteLine("Grid to rects");
            RectList rects = RasterLib.RasterApi.GridToRects(grid);

//            Triangles tris = trianglesList.GetTriangles(2);
  //          Console.WriteLine(tris);
            /*
            const string filename1 = "C:\\Github\\Glyphics2\\Examples\\ExampleCodeToSTL\\cube_ascii.stl";
            const string filename2 = "C:\\Github\\Glyphics2\\Examples\\ExampleCodeToSTL\\archquad.stl";
            const string filename3 = "C:\\Github\\Glyphics2\\Examples\\ExampleCodeToSTL\\pipesphere.stl";

            //Import the models and make sure they are unit sized
            trianglesList.ImportAndReduceToUnit(filename1);
            trianglesList.ImportAndReduceToUnit(filename2);
            trianglesList.ImportAndReduceToUnit(filename3);
            */
           //Render the rectangles out as shapes(Triangles) to a new set of triangles
            Triangles triangles = RasterLib.RasterApi.Renderer.RenderRectsAsStlMapping(rects, trianglesList);
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
            Console.WriteLine("Saving triangles to {0}", outputFilename);
            RasterLib.RasterApi.SaveTrianglesToStlAscii(outputFilename, triangles);

            //So.. as long as we are here.. let's make a preview

            //Since we can, normalize it now
            triangles.ReduceToUnit();

            //Save a rendering out to a PNG, why not, too.
            Console.WriteLine("Creating preview grid");
            Grid gridFromStl = RasterLib.RasterApi.CreateGrid(96, 96, 96, 4);

            Console.WriteLine("Rendering triangles to grid");
            RasterLib.RasterApi.Renderer.RenderTrianglesToGrid(triangles, gridFromStl);

            //Then render to a new grid
            Console.WriteLine("Rendering grid to oblique preview grid");
            Grid gridObliqueRendered = RasterLib.RasterApi.Renderer.RenderObliqueCells(gridFromStl);

            //Then save            
            //const string filenamePreview = "..\\..\\preview.png";
            //Console.WriteLine("Saving file to {0}", filenamePreview);
            //GraphicsApi.SaveFlatPng(filenamePreview, gridObliqueRendered);

            //.. and write finish
            Console.WriteLine("\nDone.");
        }
    }
}


/*


AutoScene - automatically resizes like gui
 * Constructs digraph of shapes
 * Handles rotations of base shapes to fit
 ** Automatically creates other rotations

Two parts:
 * Describe Scene
 * Use Scenex

[Describe]
 Case Study: rounded box
 
 <Box>
  Corner : WedgeCorn1
  Edge   : Wedge
  Face   : Box
  Center : Box


[Use] : Make a scaled box

 (Box) 0 0 0 400 50 400
 




















*/