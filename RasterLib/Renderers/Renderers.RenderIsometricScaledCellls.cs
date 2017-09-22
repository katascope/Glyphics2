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
using RasterLib.Painters;

namespace RasterLib.Renderers
{
    //Partial class to render Isometric cells
    internal partial class Renderer
    {
        //Render a cell at x,y coords
        private static void RenderIsometricCellScaled(GridContext bgc, int x, int y, int cellWidth, int cellHeight)
        {
            IPainter painter = new CPainter();
            ulong color = bgc.Pen.Rgba;
            //const int subSize = 8;
            //const int tinSize = (cellSize - subSize);
            byte r, g, b, a;
            RasterLib.RasterApi.Ulong2Rgba(color, out r, out g, out b, out a);

            int ir = r;
            int ig = g;
            int ib = b;

            bgc.Pen.Rgba = RasterLib.RasterApi.Rgba2Ulong((byte)ir, (byte)ig, (byte)ib, 255);

            bool skipWire = false;
            if (cellWidth == 1 && cellHeight == 1)
            {
                painter.DrawPen(bgc, x, y, 0);
                return;
            }
            else if (cellWidth <= 4 && cellHeight <= 4)
                skipWire = true;

            cellWidth = cellWidth * 2;
            cellHeight = cellHeight * 2;

            int Is11 = (cellHeight / 4) * 3 - 1;

            //Top Left
            painter.DrawFillTriangle2D(bgc,
                x + 1, y + cellHeight/4,
                x + cellWidth / 2 , y + 0,
                x + cellWidth / 2 , y + cellHeight/2);
            
            //Top Right
            painter.DrawFillTriangle2D(bgc,
                x + cellWidth, y+cellHeight/4,
                x + cellWidth / 2, y + 0,
                x + cellWidth / 2 - 1, y + cellHeight / 2);
            
            //Left
            ir = (byte)(r / 1.5);
            ig = (byte)(g / 1.5);
            ib = (byte)(b / 1.5);
            bgc.Pen.Rgba = RasterLib.RasterApi.Rgba2Ulong((byte)ir, (byte)ig, (byte)ib, 255);
            painter.DrawFillTriangle2D(bgc,
                x + 0, y + cellHeight/4,
                x + cellWidth / 2, y + cellHeight/2,
                x + 0, y + Is11+1);
            
            painter.DrawFillTriangle2D(bgc,
                x + 0, y + Is11+1,
                x + cellWidth / 2, y + cellHeight/2,
                x + cellWidth / 2 , y + cellHeight);

            
            //right
            ir = r / 2;
            ig = g / 2;
            ib = b / 2;
            bgc.Pen.Rgba = RasterLib.RasterApi.Rgba2Ulong((byte)ir, (byte)ig, (byte)ib, 255);
            painter.DrawFillTriangle2D(bgc,
                x + cellWidth , y + cellHeight / 4,
                x + cellWidth / 2+1, y + cellHeight / 2,
                x + cellWidth / 2+1, y + cellHeight );

            painter.DrawFillTriangle2D(bgc,
                x + cellWidth , y + cellHeight / 4,
                x + cellWidth , y + Is11+1,
                x + cellWidth / 2+1, y + cellHeight );
            



            if (skipWire) return;

            ir = (byte)(r / 2.5);
            ig = (byte)(g / 2.5);
            ib = (byte)(b / 2.5);

            //Top side
            bgc.Pen.Rgba = RasterLib.RasterApi.Rgba2Ulong((byte)ir, (byte)ig, (byte)ib, 255);
            painter.DrawLine2D(bgc,
                x + 0, y + cellWidth/4,
                x + cellWidth/2-1, y + 0,
                0);
            //Top right
            painter.DrawLine2D(bgc,
                x + cellWidth/2-1, y + 0,
                x + cellWidth - 1, y + cellHeight / 4,
                0);

            //ToCenter - Top
            painter.DrawLine2D(bgc,
                x + 0, y + cellWidth/4,
                x + cellWidth / 2 - 1, y + cellHeight / 2,
                0);
            //FromCenter - Top
            painter.DrawLine2D(bgc,
                x + cellWidth/2-1, y + cellHeight/2,
                x + cellWidth-1, y + cellHeight / 4 ,
                0);

             //Halfway
            
            //Left Side
            painter.DrawLine2D(bgc,
                x + 0, y + cellWidth/4,
                x + 0, y + Is11,
                0);
            //Right side
            painter.DrawLine2D(bgc,
                x + cellWidth , y + cellHeight / 4,
                x + cellWidth , y + Is11,
                0);

            //Right Bottom
            painter.DrawLine2D(bgc,
                x + cellWidth, y + Is11+1,
                x + cellWidth / 2, y + cellHeight ,
                0);
            //Right Left
            painter.DrawLine2D(bgc,
                x + cellWidth / 2 , y + cellHeight ,
                x + 0 , y + Is11+1,
                0);
        }

        //Render a grid into another grid with Isometric perspective and iconic cells
        private static void RenderIsometricCellsSetScaled(Grid gridSrc, Grid gridDst, int tileW, int tileH, string title)
        {
            GridContext bgc = new GridContext(gridDst);

            int cellSizeX = tileW;
            int cellSizeY = tileH;

            for (int z = gridSrc.SizeZ - 1; z >= 0; z--)
            {
                //Console.Write("\r" +(int)(100 - (float)z/gridSrc.SizeZ * 100)+"%");
                DrawProgressBar(title,(int) (100 - (float) z/gridSrc.SizeZ*100));
                for (int y = 0; y < gridDst.SizeY; y++)
                {
                    for (int x = gridSrc.SizeX - 1; x >= 0; x--)
                    {
                        ulong u = gridSrc.GetRgba(x, y, z);
                        if (u != 0)
                        {
                            bgc.Pen.SetColor(u);

                            int sx = (x - z) * tileW;
                            //int sy = y * (tileH - 1) + (x + z) * tileH / 2;
                            int sy = y * (tileH) + (x + z) * tileH / 2 + tileH*4;

                            RenderIsometricCellScaled(bgc, sx + gridDst.SizeX / 2 - tileW, gridDst.SizeY - sy + tileH, cellSizeX, cellSizeY);
                        }
                    }
                }
            }
            DrawProgressBar(title, 100);
            Console.WriteLine();
        }

        //Render Isometricly and return
        public Grid RenderIsometricCellsScaled(Grid grid, byte bgR, byte bgG, byte bgB, byte bgA, int cellWidth, int cellHeight, string title = "")
        {
            if (grid == null) return null;

            int cellSizeX = cellWidth;
            int cellSizeY = cellHeight;

            int maxSize = (grid.SizeX > grid.SizeZ) ? grid.SizeX : grid.SizeZ;
            int ix = (int)(maxSize * cellSizeX * 2.2);
            //int iy = (int)(maxSize * cellSizeY * 1.2);//1.6);
            int iy = (int)(maxSize * cellSizeY * 2.2);
            Grid grid2 = new Grid(ix, iy, 1, grid.Bpp);

            GridContext bgc = new GridContext(grid2) { Pen = { Rgba = RasterLib.RasterApi.Rgba2Ulong(bgR, bgG, bgB, bgA) } };

            IPainter painter = new CPainter();
            painter.DrawFastFillRect(bgc, 0, 0, 0, grid2.SizeX, grid2.SizeY, 1);

            RenderIsometricCellsSetScaled(grid, grid2, cellSizeX, cellSizeY, title);
            return grid2;
        }
    }
}
