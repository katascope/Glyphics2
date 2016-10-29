#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;
using RasterApi = RasterLib.RasterApi;

namespace GlyphicsUnitTests
{
    [TestClass]
    public class GlyphicsApiUnitTests
    {
        private const string FinalCubeCodeName = "FinalCube";
        private const string FinalCubeCode = FinalCubeCodeName + ",Size3D4 8 8 8;PenColorD4 255 255 255 255;FillRect 0 0 0 8 8 8*@@@@00000777";
        private const string SerializedFinalCubeCode = "*@@@@00000777";

        [TestMethod]
        public void TestPainter()
        {
            Assert.IsNotNull(RasterLib.RasterApi.Painter);
        }

        [TestMethod]
        public void TestRenderer()
        {
            Assert.IsNotNull(GraphicsApi.Renderer);
        }

        [TestMethod]
        public void TestCreateContext()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            Assert.IsNotNull(RasterLib.RasterApi.CreateContext(grid));
        }

        [TestMethod]
        public void TestCreateCode()
        {
            Assert.IsNotNull(RasterLib.RasterApi.CreateCode(FinalCubeCode));
        }

        [TestMethod]
        public void TestCreateRect()
        {
            Rect rect = RasterLib.RasterApi.CreateRect(0, 0, 0, 10, 10, 10);

            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt1[0], 0));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt1[1], 0));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt1[2], 0));

            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt2[0], 10));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt2[1], 10));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt2[2], 10));
        }

        [TestMethod]
        public void TestCreateTriangles()
        {
            Assert.IsNotNull(RasterLib.RasterApi.CreateTriangles());
        }

        [TestMethod]
        public void TestCreateTrianglesList()
        {
            Assert.IsNotNull(RasterLib.RasterApi.CreateTrianglesList());
        }

        [TestMethod]
        public void TestCreateSerializedRects()
        {
            Assert.IsNotNull(RasterLib.RasterApi.CreateSerializedRects(SerializedFinalCubeCode));
        }

        [TestMethod]
        public void TestGridTo3DDescription()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            IRenderer renderer = GraphicsApi.Renderer;
            string desc = renderer.GridTo3DDescription(grid, 0, 0, 0);

            Assert.IsNotNull(desc);
        }

        [TestMethod]
        public void TestCodeToCodename()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Codename codename = RasterLib.RasterApi.CodeToCodename(code);

            Assert.IsTrue(String.CompareOrdinal(codename.Name, "FinalCube") == 0);
        }

        [TestMethod]
        public void TestCodeToTokens()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            TokenList tokens = RasterLib.RasterApi.CodeToTokens(code);

            Assert.IsTrue(tokens.Count == 3);
        }

        [TestMethod]
        public void TestCodeToGrid()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);

            Assert.IsTrue(grid.SizeX == 8);
            Assert.IsTrue(grid.SizeY == 8);
            Assert.IsTrue(grid.SizeZ == 8);
        }

        [TestMethod]
        public void TestCodeToRects()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);

            Assert.IsTrue(rects.Count == 1);
        }

        [TestMethod]
        public void TestCodeToTriangles()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            Triangles triangles = RasterLib.RasterApi.RectsToTrianglesCube(rects);

            Assert.IsTrue(triangles.GetTriangleArray().Length == 12);
        }

        [TestMethod]
        public void TestCodeToOblique()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);

            IRenderer renderer = GraphicsApi.Renderer;
            Grid renderedObliqueGrid = renderer.RenderObliqueCells(grid);

            Assert.IsTrue(renderedObliqueGrid.SizeX == 96);
            Assert.IsTrue(renderedObliqueGrid.SizeY == 96);
            Assert.IsTrue(renderedObliqueGrid.SizeZ == 1);
        }

        [TestMethod]
        public void TestRectsToBoundaries()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            Rect rect = RasterLib.RasterApi.RectsToBoundaries(rects);

            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt1[0], 0));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt1[1], 0));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt1[2], 0));

            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt2[0], 7));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt2[1], 7));
            Assert.IsTrue(RasterLib.RasterApi.DoublesAreEqual(rect.Pt2[2], 7));
        }

        [TestMethod]
        public void TestRectsToTrianglesCube()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            Triangles triangles = RasterLib.RasterApi.RectsToTrianglesCube(rects);

            Assert.IsTrue(triangles.GetTriangleArray().Length == 12);
        }

        [TestMethod]
        public void TestRectsToSerialized()
        {
            Code code = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            SerializedRects serializedRects = RasterLib.RasterApi.RectsToSerializedRects(rects);

            Assert.IsTrue((String.CompareOrdinal(serializedRects.SerializedData, SerializedFinalCubeCode) == 0));
        }

        [TestMethod]
        public void TestSerializedRectsToRects()
        {
            SerializedRects serializedRects = RasterLib.RasterApi.CreateSerializedRects(SerializedFinalCubeCode);
            RectList rects = RasterLib.RasterApi.SerializedRectsToRects(serializedRects);

            Assert.IsTrue(rects.Count == 1);
        }

        [TestMethod]
        public void TestCodeToRescaledCode()
        {
            Code codeInitial = RasterLib.RasterApi.CreateCode(FinalCubeCode);
            Code codeRescaled = RasterLib.RasterApi.CodeToRescaledCode(codeInitial, 38, 38, 38);

            Grid grid = RasterLib.RasterApi.CodeToGrid(codeRescaled);

            Assert.IsTrue(grid.SizeX == 38);
            Assert.IsTrue(grid.SizeY == 38);
            Assert.IsTrue(grid.SizeZ == 38);
        }

        [TestMethod]
        public void TestRgba2Ulong()
        {
            ulong val = RasterLib.RasterApi.Rgba2Ulong(255, 127, 63, 255);

            Assert.IsTrue(val == 0xFF3F7FFF);
        }

        [TestMethod]
        public void TestUlong2Rgba()
        {
            byte r, g, b, a;
            RasterLib.RasterApi.Ulong2Rgba(0xFF3F7FFF, out r, out g, out b, out a);

            Assert.IsTrue(r == 255);
            Assert.IsTrue(g == 127);
            Assert.IsTrue(b == 63);
            Assert.IsTrue(a == 255);
        }
    }
}
