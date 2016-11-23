#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace RasterLib.Utility
{
    //General producer for various things
    public class GridCreator
    {
        private GridCreator() { }

        //Return a cloned copy of a grid
        public static Grid GridClone(Grid grid)
        {
            Grid newGrid = new Grid(grid.SizeX, grid.SizeY, grid.SizeZ, grid.Bpp);
            for (int z = 0; z < grid.SizeZ; z++)
                for (int y = 0; y < grid.SizeY; y++)
                    for (int x = 0; x < grid.SizeX; x++)
                    {
                        newGrid.Plot(x, y, z, grid.GetRgba(x, y, z));
                    }
            return newGrid;
        }

        //Create a grid dRectly from bytes
        public static Grid CreateGridFromValues(int dimx, int dimy, int dimz, int bpp, int[] vals)
        {
            Grid newgrid = new Grid(dimx, dimy, dimz, bpp);
            int offset = 0;
            if (dimx > 1) offset++;
            if (dimy > 1) offset++;
            if (dimz > 1) offset++;
            for (int z = 0; z < dimz; z++)
                for (int y = 0; y < dimy; y++)
                    for (int x = 0; x < dimx; x++)
                        newgrid.Plot(x, y, z, (ulong)vals[offset++]);
            return newgrid;
        }

        //GetToken the true range between two ints
        private static int GetRange(int v1, int v2)
        {
            if (v1 > v2)
            {
                //Swap them so V1 is always <= V2
                int temp = v1; v1 = v2; v2 = temp;
            }

            int range = v2 - v1;
            return range;
        }
        
        //Create a grid from another grid's rectangles, rendered out by plot
        public static Grid CreateGridFromRectangle(Grid src, int x1, int y1, int z1, int x2, int y2, int z2)
        {
            int sizeX = GetRange(x1, x2);
            int sizeY = GetRange(y1, y2);
            int sizeZ = GetRange(z1, z2);

            Grid newgrid = new Grid(sizeX, sizeY, sizeZ, src.Bpp);
            for (int z = 0; z < sizeZ; z++)
                for (int y = 0; y < sizeY; y++)
                    for (int x = 0; x < sizeX; x++)
                        newgrid.Plot(x, y, z, src.GetRgba(x1 + x, y1 + y, z1 + z));

            return newgrid;
        }
    }
}
