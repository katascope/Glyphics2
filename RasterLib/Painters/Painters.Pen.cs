﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace RasterLib.Painters
{
    public partial class CPainter
    {
        //Re-dRect and draw a pen to Grid
        public void DrawAxisPen(GridContext bgc, PenTwist penTwist, int x, int y, int z)
        {
            if (bgc == null) return;

            switch (penTwist)
            {
                case PenTwist.XYaxis: DrawPen(bgc, x, y, z); break;
                case PenTwist.YZaxis: DrawPen(bgc, z, y, x); break;
                case PenTwist.XZaxis: DrawPen(bgc, x, z, y); break;
            }
        }

        //Draw the pen to a Grid
        public void DrawPen(GridContext bgc, int x, int y, int z)
        {
            if (bgc == null) return;

            if ((bgc.Pen.HatchX != 1) || (bgc.Pen.HatchY != 1) || (bgc.Pen.HatchZ != 1))
            {
                for (int sz = bgc.Pen.StartZ; sz <= bgc.Pen.StopZ; sz++)
                {
                    for (int sy = bgc.Pen.StartY; sy <= bgc.Pen.StopY; sy++)
                    {
                        for (int sx = bgc.Pen.StartX; sx <= bgc.Pen.StopX; sx++)
                        {
                            bool apply = ((((x + sx) % bgc.Pen.HatchX) == 0) &&
                                          (((y + sy) % bgc.Pen.HatchY) == 0) &&
                                          (((z + sz) % bgc.Pen.HatchZ) == 0)
                                );

                            if (!apply)
                                bgc.Grid.Plot(sx + x, sy + y, sz + z, bgc.Pen);//.Rgba, bgc.Pen.PhysicsByte,bgc.Pen.ShapeByte, bgc.Pen.TextureByte, bgc.Pen.GroupByte);
                        }
                    }
                }
                return;
            }
            if ((bgc.Pen.StopX != 0) || (bgc.Pen.StopY != 0) || (bgc.Pen.StopZ != 0))
            {
                for (int sz = bgc.Pen.StartZ; sz <= bgc.Pen.StopZ; sz++)
                    for (int sy = bgc.Pen.StartY; sy <= bgc.Pen.StopY; sy++)
                        for (int sx = bgc.Pen.StartX; sx <= bgc.Pen.StopX; sx++)
                            bgc.Grid.Plot(sx + x, sy + y, sz + z, bgc.Pen);//bgc.Pen.Rgba, bgc.Pen.PhysicsByte, bgc.Pen.ShapeByte, bgc.Pen.TextureByte, bgc.Pen.GroupByte);
                return;
            }
            bgc.Grid.Plot(x, y, z, bgc.Pen);//bgc.Pen.Rgba, bgc.Pen.PhysicsByte, bgc.Pen.ShapeByte, bgc.Pen.TextureByte, bgc.Pen.GroupByte);
        }
    }
}