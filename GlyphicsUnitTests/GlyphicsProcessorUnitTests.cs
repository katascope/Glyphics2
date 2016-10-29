﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using GraphicsLib;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using RasterLib;
using RasterLib.Language;

namespace GlyphicsUnitTests
{
    [TestClass]
    public class GlyphicsProcessorUnitTests
    {
        const string Code = @"Size3D4 4 4 4;PenColorD4 255 255 255 255;Rect 1 1 1 2 2 2";

        [TestMethod]
        public void ConvertCodeToGridToRectsToQuadsToTriangles()
        {
            Code rasterCode = RasterLib.RasterApi.CreateCode(Code);
            Assert.IsNotNull(rasterCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(rasterCode);
            Assert.IsNotNull(grid);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            Assert.IsNotNull(rects);
            QuadList quads = RasterLib.RasterApi.RectsToQuads(rects);
            Assert.IsNotNull(quads);
            Triangles triangles = RasterLib.RasterApi.QuadsToTriangles(quads);
            Assert.IsNotNull(triangles);
        }

        [TestMethod]
        public void ConvertCodeToGridToRectsToScene()
        {
            Code rasterCode = RasterLib.RasterApi.CreateCode(Code);
            Grid grid = RasterLib.RasterApi.CodeToGrid(rasterCode);
            RectList rectsFromGrid = RasterLib.RasterApi.GridToRects(grid);

            Grid gridFromRects = grid.Clone();
            Assert.IsTrue(grid.IsEqualTo(gridFromRects));

            GraphicsApi.Renderer.RenderRectsToGrid(rectsFromGrid, gridFromRects);
            Assert.IsTrue(grid.IsEqualTo(gridFromRects));

            Scene sceneFromRects = RasterLib.RasterApi.RectsToScene(rectsFromGrid);
            RectList rectsFromScene = RasterLib.RasterApi.SceneToRects(sceneFromRects);

            Assert.IsTrue(rectsFromGrid.IsEqualTo(rectsFromScene));

            Grid gridMega = grid.Clone();
            GraphicsApi.Renderer.RenderRectsToGrid(rectsFromScene, gridMega);

            Assert.IsTrue(grid.IsEqualTo(gridMega));
        }
    }
}
