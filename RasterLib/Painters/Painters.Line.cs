#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;

namespace GraphicsLib.Painters
{
    public partial class CPainter
    {
        public void DrawHorizontalLine2D(GridContext bgc, int x1, int x2, int y, int z)
        {
            for (int x = x1; x <= x2; x++)
                DrawPen(bgc, x, y, z);
        }

        public void DrawVerticalLine2D(GridContext bgc, int x, int y1, int y2, int z)
        {
            for (int y = y1; y <= y2; y++)
                DrawPen(bgc, x, y, z);
        }

        //Draw an arbitrary 2d line to Grid
        public void DrawLine2D(GridContext bgc, int x1, int y1, int x2, int y2, int z)
        {
            if (x1 == x2) DrawVerticalLine2D(bgc, x1, y1, y2, z);
            if (y1 == y2) DrawHorizontalLine2D(bgc, x1, x2, y1, z);

            int dx = Math.Abs(x2 - x1), sx = x1 < x2 ? 1 : -1;
            int dy = Math.Abs(y2 - y1), sy = y1 < y2 ? 1 : -1;
            int err = (dx > dy ? dx : -dy) / 2;

            for (; ; )
            {
                DrawPen(bgc, x1, y1, z);
                if (x1 == x2 && y1 == y2) break;
                int e2 = err;
                if (e2 > -dx) { err -= dy; x1 += sx; }
                if (e2 < dy) { err += dx; y1 += sy; }
            }
        }

        //Draw an arbitrary 2d line along twisted axis to Grid
        public void DrawAxisLine2D(GridContext bgc, PenTwist twistType, int x1, int y1, int x2, int y2, int z)
        {
            int dx = Math.Abs(x2 - x1), sx = x1 < x2 ? 1 : -1;
            int dy = Math.Abs(y2 - y1), sy = y1 < y2 ? 1 : -1;
            int err = (dx > dy ? dx : -dy) / 2;

            for (; ; )
            {
                DrawAxisPen(bgc, twistType, x1, y1, z);
                if (x1 == x2 && y1 == y2) break;
                int e2 = err;
                if (e2 > -dx) { err -= dy; x1 += sx; }
                if (e2 < dy) { err += dx; y1 += sy; }
            }
        }
    }
}
