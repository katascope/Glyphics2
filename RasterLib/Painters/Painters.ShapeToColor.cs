#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

using GraphicsLib.Utility;

namespace GraphicsLib.Painters
{
   public partial class CPainter
    {
        public void ShapeToColor(GridContext bgc, int span1, int span2, int span3, int span4, int span5, int span6, int span7, int span8)
        {
            if (bgc == null) return;
            Grid grid = bgc.Grid;

            grid.InhibitCodeTracking();
            int[] spans = new int[8];
            spans[0] = span1;
            spans[1] = span2;
            spans[2] = span3;
            spans[3] = span4;
            spans[4] = span5;
            spans[5] = span6;
            spans[6] = span7;
            spans[7] = span8;

            for (int z = 0; z < grid.SizeZ; z++)
            {
                for (int y = 0; y < grid.SizeY; y++)
                {
                    for (int x = 0; x < grid.SizeX; x++)
                    {
                        ulong u = grid.GetRgba(x, y, z);
                        CellProperties cp = grid.GetProperty(x, y, z);

                        if (cp.ShapeId == 0)
                        {
                        }
                        else if (cp.ShapeId >0 && cp.ShapeId <= spans[0])
                        {
                            u = Converter.Rgba2Ulong(0, 255, 0, 255);
                        }
                        else if (cp.ShapeId > spans[0] && cp.ShapeId <= spans[1])
                        {
                            u = Converter.Rgba2Ulong(255, 0, 0, 255);
                        }
                        else
                            u = Converter.Rgba2Ulong(255, 0, 255, 255);

                        grid.Plot(x, y, z, u);
                    }
                }
            }
            grid.AllowCodeTracking();
        }
    }
}
