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
using System.Windows.Forms;

namespace ScratchPad
{
    /* Example: ScratchPad */
    class ScratchPad
    {
        private static void Titler()
        {
            Console.WriteLine(@"________                        ");
            Console.WriteLine(@"\______ \   ____   ____   ____  ");
            Console.WriteLine(@" |    |  \ /  _ \ /    \_/ __ \ ");
            Console.WriteLine(@" |    `   (  <_> )   |  \  ___/ ");
            Console.WriteLine(@"/_______  /\____/|___|  /\___  >");
            Console.WriteLine(@"        \/            \/     \/");
        }

        private static void Extrusion(Grid grid, Grid gridImage, int div)
        {
            for (int y = 0; y < gridImage.SizeY; y++)
            {
                for (int x = 0; x < gridImage.SizeX; x++)
                {
                    CellProperties cp = gridImage.GetProperty(x, y, 0);

                    byte r, g, b, a;
                    RasterApi.Ulong2Rgba(cp.Rgba, out r, out g, out b, out a);

                    int lum = (r + g + b)/3;
                    int height = (lum)/div;
                    
                    if (height > 0)
                        for (int barY = 0; barY <= height; barY++)
                            grid.Plot(x, barY, y, cp);
                }
            }
        }

        [STAThread]
        static void SuperDebug(string codeString)
        {
            Grid gridImg = GraphicsApi.FileToGrid("c:\\github\\earthx64.png");
            GridContext gc = new GridContext(gridImg);
            RasterApi.Painter.FlipY(gc);
            int div = 4;
            Grid grid = RasterApi.CreateGrid(gridImg.SizeX, 255/div+1, gridImg.SizeY, 4);

            Console.WriteLine("Extruding");
            Extrusion(grid, gridImg, div);
            Console.WriteLine("Rendering");
            Grid gridIsometricScaledQuick = GraphicsApi.Renderer.RenderIsometricCellsScaled(grid, 0, 0, 0, 0, 4, 4);
            Console.WriteLine("Saving");
            GraphicsApi.SaveFlatPng("..\\..\\isometricScaled.png", gridIsometricScaledQuick);

            Titler();
            return;

            //grid.CopyFrom(gridImg);

            //Copy from image
            
            /*Grid gridImg = GraphicsApi.FileToGrid("c:\\github\\earth.gif");
            GridContext gc = new GridContext(gridImg);
            RasterApi.Painter.FlipY(gc);
            Grid grid = RasterApi.CreateGrid(gridImg.SizeX, gridImg.SizeY, 1, 4);
            grid.CopyFrom(gridImg);*/
            


            /*
             * Triangles
             */
            //const string inputFilenameObj = "..\\..\\..\\..\\..\\..\\diamond.obj";
            //Triangles triangles = GraphicsApi.ObjToTriangles(inputFilenameObj);
            //Console.WriteLine("trianglesObj: {0}", trianglesObj);            
            /*const string inputFilenameStl = "..\\..\\..\\..\\..\\pentacle.stl";
            Console.WriteLine("Input filename: {0}", inputFilenameStl);
            //Load the triangles from the STL file and reduce to a unit 1x1x1 size
            Triangles triangles = GraphicsApi.StlToTriangles(inputFilenameStl);
            triangles.ReduceToUnit();
            Console.WriteLine("Triangle count: {0}", triangles.Count);
            //Render the triangles to the grid, will autosize to grid size
            GraphicsApi.Renderer.RenderTrianglesToGrid(triangles, grid);

            GridContext gc = new GridContext();            
            gc.Grid = grid;
            gc.Pen = new Pen();
            gc.Pen.SetColor(0, 0, 0, 0);
            RasterApi.Painter.DrawFillRect(gc, 0, 15, 0, 64, 64, 64);
             */

            Code code = RasterApi.CreateCode(codeString);
            Console.WriteLine("Code: {0}\n", codeString);

            Codename codename = RasterApi.CodeToCodename(code);
            Console.WriteLine("Codename: {0}\n", codename);

            TokenList glyphTokens = RasterApi.CodeToTokens(code);
            string tokenDesc = "Tokens:\n" + glyphTokens + "\n";
            Console.WriteLine(tokenDesc);

            //codeString = RasterApi.CodeToRescaledCode(codeString, 128, 128, 128);
          
            //Grid grid = RasterApi.CodeToGrid(codeString);
            Console.WriteLine("Grid: {0}\n", grid);
            //DownSolver ds = new GeneralLibrary.DownSolver(codeString);

            //string bytesDesc = RasterApi.BytesToString(grid.CloneData());
            //Console.WriteLine("GridBytes:\n{0}\n", bytesDesc);
            //string bytesDesc = RasterApi.BytesToString(grid.CloneData()); 
            //Console.WriteLine("GridBytes:\n{0}\n", bytesDesc);

            RectList rects = GraphicsApi.GridToRects(grid);
            Console.WriteLine("Rects: {0}\n{1}", rects.Count, rects);

            GraphicsApi.BuildCircuit(rects, true);

            //Code codeFromRects = GraphicsApi.RectsToCode(rects);
            //Console.WriteLine("New codeString string:\n\"" + codeFromRects + "\"");

            
            Grid gridOblique = GraphicsApi.Renderer.RenderObliqueCells(grid);
            GraphicsApi.SaveFlatPng("..\\..\\oblique.png", gridOblique);

            //Grid gridIsometric = GraphicsApi.Renderer.RenderIsometricScaled(grid, 0, 0, 0, 0, 8, 8);
            //GraphicsApi.SaveFlatPng("..\\..\\isometric.png", gridIsometric);

            Grid gridIsometricScaled = GraphicsApi.Renderer.RenderIsometricCellsScaled(grid, 0,0,0, 0, 4,4);
            GraphicsApi.SaveFlatPng("..\\..\\isometricScaled.png", gridIsometricScaled);

            string serialized = GraphicsApi.RectsToSerializedRectsLimit255(rects).SerializedData;
            Console.WriteLine("Serialized Rects: (len={0})\n{1}\n", serialized.Length, serialized);
            
            GraphicsApi.SaveFlatText("..\\..\\foo.txt", serialized);
            Clipboard.SetText(serialized);

            //Scene scene = GraphicsApi.RectsToScene(rects); Console.WriteLine("Scene: {0}", scene);
            //QuadList quads = GraphicsApi.RectsToQuads(rects);Console.WriteLine("Quads: {0}", quads);
            //Triangles triangles = GraphicsApi.QuadsToTriangles(quads);Console.WriteLine("Triangles: {0}", triangles);

            //Console.WriteLine("2d view:\n{0}", GraphicsApi.GridToHexDescription(grid));            
            //Console.WriteLine("3d view:\n{0}", GraphicsApi.GridTo3DDescription(grid, 0, 0, 0));

            SerializedRects serializedRects = new SerializedRects(serialized);
            RectList rectsDecoded = RectConverter.SerializedRectsToRects(serializedRects);

            //Console.WriteLine("Serialized {0}", serializedRects);

            int count = 0;
            Console.WriteLine("# of Decoded Rects = {0}", rectsDecoded.Count);
            foreach (Rect rect in rectsDecoded)
            {
                Console.WriteLine(count +" : " +rect);
                count++;
            }
        }

        [STAThread]
        static void Main()
        {
            string codeString = GraphicsApi.GlyCToCode(@"C:\Github\Glyphics2\Glyph Cores\MegaGrid.glyc").Replace(';', '\n');
            SuperDebug(codeString);

            Titler();
        }
    }
}
