#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;

namespace GraphicsLib
{
    //Set of painting functions to draw to an Grid or IByteGridContext(which has an Grid)
    public interface IPainter
    {
        void CopyInto(GridContext bgc, int x, int y, int z, int archtype);
        void Blit(GridContext bgc, Grid pal, int x, int y, int z);
        void RectBlit(GridContext bgc, Grid pal, int x1, int y1, int z1, int x2, int y2, int z2);
        void RectBlit(GridContext bgc, Grid pal, int x1, int y1, int z1, int x2, int y2, int z2, byte groupId);
        void PaletteBlit(GridContext bgc, Grid grid, Grid palette);
        void BlendBlit(GridContext bgc, Grid pal, int x1, int y1, int z1, int x2, int y2, int z2, int blend);

        void DrawLine2D(GridContext bgc, int x1, int y1, int x2, int y2, int z);
        void DrawLetter(GridContext bgc, PenTwist twistType, int x, int y, int z, int letter, bool flip);
        void DrawHollowRect(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2);

        void DrawAlien(GridContext bgc, int xc, int yc, int zc, int radius);
        void DrawStar(GridContext bgc, int xc, int yc, int zc, int radius);
        void DrawFastFillRect(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2);

        void DrawTriangle2D(GridContext bgc, int x1, int y1, int x2, int y2, int x3, int y3, int z);
        void DrawFillTriangle2D(GridContext bgc, int x1, int y1, int x2, int y2, int x3, int y3);
        void DrawFillTriangle3D(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int x3, int y3, int z3);

        void DrawFillRect(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2);
        
        void DrawClear(GridContext bgc);

        void DrawCircle2DAnyAxis(GridContext bgc, PenTwist ptt, int x0, int y0, int z, int radius);
        void DrawFillCircle2D(GridContext bgc, PenTwist ptt, int x1, int y1, int z, int radius);
        void DrawWallCube(GridContext bgc, byte bitmask);
        void DrawSupports(GridContext bgc);
        void DrawPen(GridContext bgc, int x, int y, int z);
        void DrawLine3D(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2);
        void DrawArc(GridContext bgc, PenTwist twistType, int x, int y, int z, int radius, int startAnglePercent, int stopAnglePercent);
        void DrawStairs(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int w, int h, int d);
        void DrawFillStairs(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int w, int h, int d);
        void DrawCircle3D(GridContext bgc, int sx, int sy, int sz, int radius);
        void DrawMaskHollowRect(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, byte bitmask);
        void DrawMaskFillRect(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, byte bitmask);
        void DrawOval3D(GridContext bgc, int sx, int sy, int sz, int width, int height, int depth);
        void Pyramid3D(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2);
        void Diamond2D(GridContext bgc, int sx, int sy, int sz, int width, int height);
        void DrawTriangle3D(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int x3, int y3, int z3);

        void EdgeColor(GridContext bgc, int axis, byte ri, byte gi, byte bi, byte ai);
        void UpV(GridContext bgc, int reps, byte ri, byte gi, byte bi, byte ai);
        
        void Quad2D(GridContext bgc, int x1, int y1, int x2, int y2, int z, int height);
        void DrawFillCircle3D(GridContext bgc, int x1, int y1, int z, int radius);
        void ArchRect(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int shape, int rotation, int spacing);
        void ArchLine(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int shape, int rotation, int spacing);
        void DrawPolygon(GridContext bgc, PenTwist twistType, int x, int y, int z, int radius, int sides);
        void Extrude(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int shape, int startScale, int stopScale);

        void ExtrudeX(GridContext bgc, int startX, int startY, int startZ, int stopX, int shape, int startScale, int stopScale, int skips);
        void ExtrudeY(GridContext bgc, int startX, int startY, int startZ, int stopX, int shape, int startScale, int stopScale, int skips);
        void ExtrudeZ(GridContext bgc, int startX, int startY, int startZ, int stopX, int shape, int startScale, int stopScale, int skips);

        void FlipX(GridContext bgc);
        void FlipY(GridContext bgc);
        void FlipZ(GridContext bgc);
        void MirrorX(GridContext bgc);
        void MirrorY(GridContext bgc);
        void MirrorZ(GridContext bgc);
        void RotateX(GridContext bgc);
        void RotateY(GridContext bgc);
        void RotateZ(GridContext bgc);

        void PalGen1D(Grid pal, byte vs1, byte vs2, byte vs3, byte vs4, byte vd1, byte vd2, byte vd3, byte vd4);
        void PalGen1DBanded(Grid pal, List<ulong> bandColors);
        void PalGen1DBand(int numBands, Grid pal, ulong color1, ulong color2, int band);

        void HueShift(GridContext bgc, double hue);
        void Brightness(GridContext bgc, double factor);
        void Saturation(GridContext bgc, double factor);
        void Invert(GridContext bgc);
        void Grayscale(GridContext bgc);
        void Colorize(GridContext bgc, double hue, double saturation);
        void Palettize(GridContext bgc, Grid palette);
        void Shade(GridContext bgc, int axis, byte r1, byte g1, byte b1, byte r2, byte g2, byte b2);

        void ApplyFilterBlur(GridContext bgc);
        void ApplyFilterMotion(GridContext bgc);
        void ApplyFilterEdgeHorizontal(GridContext bgc);
        void ApplyFilterEdgeVertical(GridContext bgc);
        void ApplyFilterEdgeAll(GridContext bgc);
        void ApplyFilterSharpen(GridContext bgc);
        void ApplyFilterEmboss(GridContext bgc);
        void ApplyFilterSmooth(GridContext bgc);

        void DrawCorners(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2);
        void DrawShadows(GridContext bgc);

        void DrawMaze(GridContext bgc, byte seed, int x1, int y, int z1, int x2, int z2);

        void ShapeSmoothX(GridContext bgc);
        void ShapeSmoothY(GridContext bgc);
        void ShapeSmoothZ(GridContext bgc);

        void EdgeCorners(GridContext bgc, byte ri, byte gi, byte bi, byte ai);

        void ShapeToColor(GridContext bgc, int span1, int span2, int span3, int span4, int span5, int span6, int span7, int span8);
        void Put(GridContext bgc, string filename, int x1, int y1, int z1);
        void PutGroup(GridContext bgc, string filename, int x1, int y1, int z1, byte grpId);
        void ScalePut(GridContext bgc, string filename, int x1, int y1, int z1, int x2, int y2, int z2);

        void Wire(GridContext bgc, int x1, int y1, int z1, int x2, int y2, int z2, int h);

        void DrawString(GridContext bgc, int x, int y, int z, string text);
    }
}

