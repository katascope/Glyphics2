#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace GraphicsLib.Painters
{
    public partial class CPainter
    {
		private bool IsEmpty(Grid grid, int x, int y, int z)
        {
            if (x == -1 || x == grid.SizeX) return true;
            if (y == -1 || y == grid.SizeY) return true;
            if (z == -1 || z == grid.SizeZ) return true;

            if ((grid.GetRgba(x, y, z) == 0)
//                && ((byte)grid.GetProperty(x, y, z).ShapeId == 0)
                )
                return true;
            else return false;			
        }

        private int CountBits(int value)
        {
	        int bits = 0;
	        for (int i = 0;i < 32; i++)
		        if ((value & (1 << i)) != 0)
			        bits++;
	        return bits;
        }

		private byte GetEmptyNeighborMask(Grid grid, int x, int y, int z)
        {
            byte cubeMask = 0;
            if (!IsEmpty(grid, x + 1, y, z)) { cubeMask |= (int)CubeFaceMask.Left; }
            if (!IsEmpty(grid, x - 1, y, z)) { cubeMask |= (int)CubeFaceMask.Right; }
            if (!IsEmpty(grid, x, y + 1, z)) { cubeMask |= (int)CubeFaceMask.Top; }
            if (!IsEmpty(grid, x, y - 1, z)) { cubeMask |= (int)CubeFaceMask.Bottom; }
            if (!IsEmpty(grid, x, y, z + 1)) { cubeMask |= (int)CubeFaceMask.Front; }
            if (!IsEmpty(grid, x, y, z - 1)) { cubeMask |= (int)CubeFaceMask.Back; }
            return cubeMask;
        }



        enum CornerType
        {/*
            CornerLeftFrontTop  = 1,
            CornerRightFrontTop = 2,
            CornerLeftBackTop   = 3,
            CornerRightBackTop  = 4,
            CornerLeftFrontBottom= 5,
            CornerRightFrontBottom=6,
            CornerLeftBackBottom  =7,
            CornerRightBackBottom =8,

            WedgeTopLeft       =9,
            WedgeTopFront      =10,
            WedgeTopRight      =11,
            WedgeTopBack       =12,
            
            WedgeBottomLeft    =13,
            WedgeBottomBack    =14,
            WedgeBottomRight   =15,
            WedgeBottomFront   =16,
            
            WedgeBackRight     =17,
            WedgeFrontRight    =18,
            WedgeBackLeft      =19,
            WedgeFrontLeft     =20*/
        };

        private CornerType CalculateShape(Grid grid, int x, int y, int z)
        {
            byte neighborMask = GetEmptyNeighborMask(grid, x, y, z);
            int count = CountBits(neighborMask);

            if (count == 3)
            {
              /*  if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Front, CubeFaceMask.Top)) return CornerType.CornerRightBackBottom;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Front, CubeFaceMask.Top)) return CornerType.CornerLeftBackBottom;

                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Back, CubeFaceMask.Top)) return CornerType.CornerRightFrontBottom;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Back, CubeFaceMask.Top)) return CornerType.CornerLeftFrontBottom;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Front, CubeFaceMask.Bottom)) return CornerType.CornerRightBackTop;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Front, CubeFaceMask.Bottom)) return CornerType.CornerLeftBackTop;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Back, CubeFaceMask.Bottom)) return CornerType.CornerRightFrontTop;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Back, CubeFaceMask.Bottom)) return CornerType.CornerLeftFrontTop;*/
            }
            if (count == 4)
            {
              /*  //Left, Front & Back, Top:Bottom
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Front, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Back, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;

                //Right, Front & Back, Top:Bottom
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Front, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Back, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;

                //Left, Top & Bottom, Front:Back
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Top, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Bottom, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;

                //Right, Top & Bottom, Front:Back
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Top, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Bottom, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;

                //Front, Top & Bottom, Left:Right
                if (HasMasks(neighborMask, CubeFaceMask.Front, CubeFaceMask.Top, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Front, CubeFaceMask.Bottom, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.CornerTopLeft;

                //Back, Top & Bottom, Left:Right
                if (HasMasks(neighborMask, CubeFaceMask.Back, CubeFaceMask.Top, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Back, CubeFaceMask.Bottom, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.CornerTopLeft;*/
            }
            return 0;
        }

        private CornerType CalculateShapeX(Grid grid, int x, int y, int z)
        {
            byte neighborMask = GetEmptyNeighborMask(grid, x, y, z);
            int count = CountBits(neighborMask);

            /*
            if (count == 3)
            {
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Front, CubeFaceMask.Top)) return CornerType.CornerRightBackBottom;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Front, CubeFaceMask.Top)) return CornerType.CornerLeftBackBottom;

                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Back, CubeFaceMask.Top)) return CornerType.CornerRightFrontBottom;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Back, CubeFaceMask.Top)) return CornerType.CornerLeftFrontBottom;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Front, CubeFaceMask.Bottom)) return CornerType.CornerRightBackTop;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Front, CubeFaceMask.Bottom)) return CornerType.CornerLeftBackTop;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Back, CubeFaceMask.Bottom)) return CornerType.CornerRightFrontTop;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Back, CubeFaceMask.Bottom)) return CornerType.CornerLeftFrontTop;
            }*/
            if (count == 4)
            {
                //Left, Front & Back, Top:Bottom
                /*if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Front, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Back, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;

                //Right, Front & Back, Top:Bottom
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Front, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Back, CubeFaceMask.Top, CubeFaceMask.Bottom)) return CornerType.CornerTopLeft;

                //Left, Top & Bottom, Front:Back
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Top, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Left, CubeFaceMask.Bottom, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;

                //Right, Top & Bottom, Front:Back
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Top, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;
                if (HasMasks(neighborMask, CubeFaceMask.Right, CubeFaceMask.Bottom, CubeFaceMask.Front, CubeFaceMask.Back)) return CornerType.CornerTopLeft;
                
                //Front, Top & Bottom, Left:Right
                if (HasMasks(neighborMask, CubeFaceMask.Front, CubeFaceMask.Top, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.WedgeBottomFront;
                if (HasMasks(neighborMask, CubeFaceMask.Front, CubeFaceMask.Bottom, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.WedgeTopFront;

                //Back, Top & Bottom, Left:Right
                if (HasMasks(neighborMask, CubeFaceMask.Back, CubeFaceMask.Top, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.WedgeBottomBack;
                if (HasMasks(neighborMask, CubeFaceMask.Back, CubeFaceMask.Bottom, CubeFaceMask.Left, CubeFaceMask.Right)) return CornerType.WedgeTopBack;
                 */
            }
            return 0;
        }

        //Color edges an RGBA
        public void ShapeSmoothX(GridContext bgc)
        {
            if (bgc == null) return;
            Grid grid = bgc.Grid;
            
            //Inhibit because it would affect ALL drawn pixels
            grid.InhibitCodeTracking();
            for (int z = 0; z < grid.SizeZ; z++)
            {
                for (int y = 0; y < grid.SizeY; y++)
                {
                    for (int x = 0; x < grid.SizeX; x++)
                    {
                        ulong u = grid.GetRgba(x, y, z);
                        if (u > 0)
                        {
                            CornerType cornerType = CalculateShapeX(grid, x, y, z);
                            int shape = (int)cornerType;
                            grid.Plot(x, y, z, u, 0, (byte)shape, grid.GetProperty(x, y, z).TextureId, 0);
                        }
                    }
                }
            }
            grid.AllowCodeTracking();
        }
        public void ShapeSmoothY(GridContext bgc)
        {
            //if (bgc == null) return;
            //Grid grid = bgc.Grid;
        }
        public void ShapeSmoothZ(GridContext bgc)
        {
            //if (bgc == null) return;
            //Grid grid = bgc.Grid;
        }


        //Color edges an RGBA
        public void EdgeCorners(GridContext bgc, byte ri, byte gi, byte bi, byte ai)
        {
            if (bgc == null) return;
            Grid grid = bgc.Grid;
            //Inhibit because it would affect ALL drawn pixels

            grid.InhibitCodeTracking();
            for (int z = 0; z < grid.SizeZ; z++)
            {
                for (int y = 0; y < grid.SizeY; y++)
                {
                    for (int x = 0; x < grid.SizeX; x++)
                    {
                        ulong u = grid.GetRgba(x, y, z);
                        if (u > 0)
                        //if ((byte)grid.GetProperty(x, y, z).ShapeId != 0)
                        {
							/* Logic for detecting smoothing is... (using 6-cell axis formation cells left/right/forward/back/top/bottom)
                             * Blue : 2 units nearby
                             * Red  : 3 units nearby
                             * Green: 4 units nearby
                             */
                            CornerType cornerType = CalculateShape(grid, x, y, z);
                            int shape = (int)cornerType;
                            grid.Plot(x, y, z, u, 0, (byte)shape, grid.GetProperty(x, y, z).TextureId, 0);
                        }
                    }
                }
            }
            grid.AllowCodeTracking();
        }
    }
}
