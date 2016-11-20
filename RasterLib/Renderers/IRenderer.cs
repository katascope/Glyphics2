#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using GraphicsLib;

namespace GraphicsLib
{
    //Set of rendering methods for top level drawing convenience
    public interface IRenderer
    {
        //Renders a list of Rects to an Grid
        void RenderRectsToGrid(RectList rects, Grid grid);

        //Renders Grid to a new Grid using isometric cell sprites
        Grid RenderIsometricCellsScaled(Grid grid, byte bgR, byte bgG, byte bgB, byte bgA, int cellWidth, int cellHeight, string title = "");

        //Renders Grid to a new Grid using oblique cell sprites
        Grid RenderObliqueCells(Grid grid);

        //Renders RectList to a new Grid using oblique cell sprites
        Grid RenderObliqueCellsRects(RectList rects);

        //Renders RectList using TrianglesList to a new Triangles
        Triangles RenderRectsAsStlMapping(RectList rects, TrianglesList trianglesList);

        //Renders Triangles to an Grid
        void RenderTrianglesToGrid(Triangles triangles, Grid grid);

        //Output: Hexadecimal description of Grid
        string GridToHexDescription(Grid grid);

        //Output: Pseudo-rendering to text of Grid
        string GridTo3DDescription(Grid grid, int ax, int ay, int az);

    }
}
