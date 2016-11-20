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
using GraphicsLib;
using GraphicsLib.Language;

namespace GlyphicsUnitTests
{
    [TestClass]
    public class GlyphicsFileUnitTests
    {
        private bool GridsAreEqual(Grid gridIn, Grid gridOut)
        {
            if ((gridIn.SizeX != gridOut.SizeX) ||
                (gridIn.SizeY != gridOut.SizeY) ||
                (gridIn.SizeZ != gridOut.SizeZ))
            {
                //diff size
                return false;
            }

            for (int z = 0; z < gridIn.SizeZ; z++)
            {
                for (int y = 0; y < gridIn.SizeY; y++)
                {
                    for (int x = 0; x < gridIn.SizeX; x++)
                    {
                        ulong uIn = gridIn.GetRgba(x, y, z);
                        ulong uOut = gridOut.GetRgba(x, y, z);
                        if (uIn != uOut)
                            return false;
                    }
                }
            }
            return true;
        }

        
        private void RunPngLoadSaveTest(int bpp)
        {
            const string cubeCode1 = "Size3D1 4 4 1;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4";
            const string cubeCode2 = "Size3D2 4 4 1;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4";
            const string cubeCode3 = "Size3D3 4 4 1;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4";
            const string cubeCode4 = "Size3D4 4 4 1;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4";
            const string filename = "test.png";

            string cubeCode = "";

            //Set BPP
            if (bpp == 1) cubeCode = cubeCode1;
            if (bpp == 2) cubeCode = cubeCode2;
            if (bpp == 3) cubeCode = cubeCode3;
            if (bpp == 4) cubeCode = cubeCode4;

            //Generate the triangles
            Code code = GraphicsLib.RasterApi.CreateCode(cubeCode);
            Grid gridOut = GraphicsLib.RasterApi.CodeToGrid(code);

            //Save and load
            GraphicsApi.SaveFlatPng(filename, gridOut);
            Grid gridIn = GraphicsApi.PngToGrid(filename);

            Assert.IsTrue(GridsAreEqual(gridIn, gridOut)); //If not equal, problem
        }

        [TestMethod]
        public void RunPngLoadSaveTest_1BPP()
        {
            RunPngLoadSaveTest(1);
        }

        [TestMethod]
        public void RunPngLoadSaveTest_2BPP()
        {
            RunPngLoadSaveTest(2);
        }

        [TestMethod]
        public void RunPngLoadSaveTest_3BPP()
        {
            RunPngLoadSaveTest(3);
        }

        [TestMethod]
        public void RunPngLoadSaveTest_4BPP()
        {
            RunPngLoadSaveTest(4);
        }

        [TestMethod]
        public void RunStlLoadSaveTest()
        {
            const string cubeCode = "Size3D4 4 4 4;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4";
            const string filename = "test.stl";

            //Generate the triangles
            Code code = GraphicsLib.RasterApi.CreateCode(cubeCode);
            Grid grid = GraphicsLib.RasterApi.CodeToGrid(code);
            RectList rects = GraphicsLib.RasterApi.GridToRects(grid);
            Triangles trianglesOut = GraphicsLib.RasterApi.RectsToTrianglesCube(rects);

            //Write them out
            GraphicsLib.RasterApi.SaveTrianglesToStl(filename, trianglesOut);

            //Then read them back
            Triangles trianglesIn = GraphicsLib.RasterApi.StlToTriangles(filename);

            //First check initial sizes
            Assert.IsTrue(trianglesOut.GetTriangleArray().Length == trianglesIn.GetTriangleArray().Length);

            //Check every vertex of every triangle
            for (int i = 0; i < trianglesOut.GetTriangleArray().Length; i++)
            {
                Triangle t1 = trianglesOut.GetTriangleArray()[i];
                Triangle t2 = trianglesIn.GetTriangleArray()[i];

                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex1[0], t2.Vertex1[0]));
                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex1[1], t2.Vertex1[1]));
                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex1[2], t2.Vertex1[2]));

                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex2[0], t2.Vertex2[0]));
                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex2[1], t2.Vertex2[1]));
                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex2[2], t2.Vertex2[2]));

                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex3[0], t2.Vertex3[0]));
                Assert.IsTrue(GraphicsLib.RasterApi.FloatsAreEqual(t1.Vertex3[1], t2.Vertex3[1]));
            }
        }

        [TestMethod]
        public void RunGlyLoadSaveTest()
        {
            const string filename = "test.gly";

            CodeList codes = GraphicsLib.RasterApi.CreateCodes();

            //Create some codeString
            const string cubeCode1 = "Testx4,Size3D4 4 4 4;PenColorD4 255 255 255 255;FillRect 0 0 0 4 4 4";
            const string cubeCode2 = "Testx8,Size3D4 8 8 8;PenColorD4 255 255 255 255;FillRect 0 0 0 8 8 8";

            //Add them to codes
            codes.AddCode(GraphicsLib.RasterApi.CreateCode(cubeCode1));
            codes.AddCode(GraphicsLib.RasterApi.CreateCode(cubeCode2));

            //Write them to file
            GraphicsLib.RasterApi.CodesToGly(filename, codes);

            //Then read them back
            CodeList codes2 = GraphicsLib.RasterApi.GlyToCodes(filename);

            Assert.IsTrue(codes.Count == codes2.Count);

            for (int i = 0; i < codes.Count; i++)
            {
                string code1 = codes.GetCode(i).codeString;
                string code2 = codes2.GetCode(i).codeString;
                Assert.IsTrue(String.CompareOrdinal(code1,code2) == 0);
            }
        }
    }
}
