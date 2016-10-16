﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Text;
using RasterLib;

namespace GraphicsLib.Renderers
{
    internal partial class Renderer
    {
        //Input: Grid
        //Output: Pseudo-rendering to text of Grid
        public string GridTo3DDescription(Grid grid, int ax, int ay, int az)
        {
            var builder = new StringBuilder("");

            string empty = "__";
            if (grid.Bpp == 1) empty = "__";
            if (grid.Bpp == 2) empty = "____";
            if (grid.Bpp == 3) empty = "______";
            if (grid.Bpp == 4) empty = "________";

            for (int y = grid.SizeY - 1; y >= 0; y--)
            {
                for (int z = grid.SizeZ - 1; z >= 0; z--)
                {
                    for (int i = z; i > 0; i--) builder.Append(' ');
                    for (int x = 0; x < grid.SizeX; x++)
                    {
                        if ((ax == x) && (ay == y) && (az == z))
                            builder.Append("XX");
                        else
                        {
                            ulong u = grid.GetRgba(x, y, z);
                            builder.Append(u == 0 ? empty : String.Format("{0:X2}", grid.GetRgba(x, y, z)));
                        }
                    }
                    builder.Append("\n");
                }
            }
            return builder.ToString();
        }
    }
}