#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Windows.Forms;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;

namespace ScratchPad.Scratch
{
    class ScratchLogic
    {
        public static void Titler()
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

                    int lum = (r + g + b) / 3;
                    int height = (lum) / div;

                    if (height > 0)
                        for (int barY = 0; barY <= height; barY++)
                            grid.Plot(x, barY, y, cp);
                }
            }
        }

        [STAThread]
        public static void SuperDebug(ScratchControl ctl)
        {
            Grid grid = null;

            if (ctl.FileNameInCode == null && ctl.FileNameInImage == null && ctl.FileNameInStl == null && ctl.FileNameInSvg == null)
            {
                Console.WriteLine("Must have FileNameIn type.");
                return;
            }

            if (ctl.FileNameInSvg != null)
            {
                Console.WriteLine("SVG Input filename: {0}", ctl.FileNameInSvg);
                string codeString = Svg2Gly.ConvertSvg2Gly(ctl.FileNameInSvg);
                Console.WriteLine("SVG:\n" + codeString);

                Code code = RasterApi.CreateCode(codeString);
                Console.WriteLine("Code: {0}\n", codeString);
                grid = RasterApi.CodeToGrid(code);
            }
            else if (ctl.FileNameInStl != null)
            {
                grid = RasterApi.CreateGrid(64, 64, 64, 4);

                Console.WriteLine("STL Input filename: {0}", ctl.FileNameInStl);

                //Load the triangles from the STL file and reduce to a unit 1x1x1 size
                Triangles triangles = GraphicsApi.StlToTriangles(ctl.FileNameInStl);
                triangles.ReduceToUnit();
                Console.WriteLine("Triangle count: {0}", triangles.Count);

                //Render the triangles to the grid, will autosize to grid size
                GraphicsApi.Renderer.RenderTrianglesToGrid(triangles, grid);
            }
            else if (ctl.FileNameInImage != null)
            {
                Grid gridImg = GraphicsApi.FileToGrid(ctl.FileNameInImage);
                GridContext gc = new GridContext(gridImg);
                RasterApi.Painter.FlipY(gc);
                int div = 15;
                grid = RasterApi.CreateGrid(gridImg.SizeX, 255 / div + 1, gridImg.SizeY, 4);

                Console.WriteLine("Extruding");
                Extrusion(grid, gridImg, div);
                Console.WriteLine("Rendering");
                Grid gridIsometricScaledQuick = GraphicsApi.Renderer.RenderIsometricCellsScaled(grid, 0, 0, 0, 0, 4, 4);
                Console.WriteLine("Saving");
                GraphicsApi.SaveFlatPng(ctl.FileNameOutIsometric, gridIsometricScaledQuick);
                Console.WriteLine("Saved");
            }
            else if (ctl.FileNameInCode != null)
            {
                string codeString = GraphicsApi.GlyCToCode(ctl.FileNameInCode).Replace(';', '\n');

                Code code = RasterApi.CreateCode(codeString);
                Console.WriteLine("Code: {0}\n", codeString);

                Codename codename = RasterApi.CodeToCodename(code);
                Console.WriteLine("Codename: {0}\n", codename);

                if (ctl.OutputTokens)
                {
                    TokenList glyphTokens = RasterApi.CodeToTokens(code);
                    string tokenDesc = "Tokens:\n" + glyphTokens + "\n";
                    Console.WriteLine(tokenDesc);
                }

                if (ctl.Resize != null)
                {
                    code = RasterApi.CodeToRescaledCode(code, ctl.Resize[0], ctl.Resize[1], ctl.Resize[2]);
                }

                grid = RasterApi.CodeToGrid(code);
                Console.WriteLine("Grid: {0}\n", grid);

                if (ctl.FileNameOutOrthogonalAnimated || ctl.FileNameOutIsometricAnimated)
                {
                    ControlAnimator.DoAnimation(ctl, code.codeString, codename.ToString());
                }
            }

            //DownSolver ds = new GeneralLibrary.DownSolver(codeString);

            if (ctl.OutputBytes && grid != null)
            {
                string bytesDesc = RasterApi.BytesToString(grid.CloneData());
                Console.WriteLine("GridBytes:\n{0}\n", bytesDesc);
            }

            RectList rects = GraphicsApi.GridToRects(grid);
            if (ctl.OutputRectangles)//rects
            {
                Console.WriteLine("Rects: {0}\n{1}", rects.Count, rects);
                GraphicsApi.BuildCircuit(rects, true);

                string serialized = GraphicsApi.RectsToSerializedRectsLimit255(rects).SerializedData;
                Console.WriteLine("Serialized Rects: (len={0})\n{1}\n", serialized.Length, serialized);

                GraphicsApi.SaveFlatText("..\\..\\foo.txt", serialized);
                Clipboard.SetText(serialized);
                SerializedRects serializedRects = new SerializedRects(serialized);
                RectList rectsDecoded = RectConverter.SerializedRectsToRects(serializedRects);

                int count = 0;
                Console.WriteLine("# of Decoded Rects = {0}", rectsDecoded.Count);
                foreach (Rect rect in rectsDecoded)
                {
                    Console.WriteLine(count + " : " + rect);
                    count++;
                }
            }

            if (ctl.OutputRenderedAscii)
            {
                Console.WriteLine("2d view:\n{0}", GraphicsApi.GridToHexDescription(grid));
                Console.WriteLine("3d view:\n{0}", GraphicsApi.GridTo3DDescription(grid, 0, 0, 0));
            }

            if (ctl.OutputSceneGraph)
            {
                Scene scene = GraphicsApi.RectsToScene(rects); Console.WriteLine("Scene: {0}", scene);
                QuadList quads = GraphicsApi.RectsToQuads(rects); Console.WriteLine("Quads: {0}", quads);
                Triangles triangles = GraphicsApi.QuadsToTriangles(quads); Console.WriteLine("Triangles: {0}", triangles);
            }

            if (ctl.FileNameOutStl != null)
            {
                ControlStl.Control(ctl, rects);
            }

            if (ctl.FileNameOutOrthogonal != null)
            {
                Console.WriteLine("Orthogonal Rendering..");
                Grid gridOrthogonal = GraphicsApi.Renderer.RenderObliqueCells(grid);
                GraphicsApi.SaveFlatPng(ctl.FileNameOutOrthogonal, gridOrthogonal);
            }

            if (ctl.FileNameOutIsometric != null)
            {
                Console.WriteLine("Isometric Rendering..");
                if (ctl.IsometricCellWidth < 1) ctl.IsometricCellWidth = 1;
                if (ctl.IsometricCellHeight < 1) ctl.IsometricCellHeight = 1;
                Grid gridIsometricScaled = GraphicsApi.Renderer.RenderIsometricCellsScaled(grid, 
                    ctl.IsometricBgRgba[0],
                    ctl.IsometricBgRgba[1],
                    ctl.IsometricBgRgba[2],
                    ctl.IsometricBgRgba[3],
                    ctl.IsometricCellWidth, ctl.IsometricCellHeight);
                GraphicsApi.SaveFlatPng(ctl.FileNameOutIsometric, gridIsometricScaled);
            }

            Console.WriteLine();
        }
    }
}
