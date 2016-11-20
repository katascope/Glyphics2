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
using GraphicsLib;
using GraphicsLib.Utility;

namespace GlyphicsUnitTests
{
    [TestClass]
    public class GlyphicsTriangleUnitTests
    {
        private void CompareVertex(float vx, float vy, float vz, float x, float y, float z)
        {
            Assert.IsTrue(Compare.FloatAreEqual(vx, x));
            Assert.IsTrue(Compare.FloatAreEqual(vy, y));
            Assert.IsTrue(Compare.FloatAreEqual(vz, z));
        }

        public void CompareVertices(Triangle triangle, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3)
        {
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex1[0], x1));
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex1[1], y1));
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex1[2], z1));

            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex2[0], x2));
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex2[1], y2));
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex2[2], z2));

            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex3[0], x3));
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex3[1], y3));
            Assert.IsTrue(Compare.FloatAreEqual(triangle.Vertex3[2], z3));
        }

        [TestMethod]
        public void TriangleTest_Translate()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.Translate(1,2,3);
            CompareVertices(triangle, 1, 2, 3, 2, 3, 3, 2, 2, 3);
        }

        [TestMethod]
        public void TriangleTest_RotateX()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.RotateX(90);
            CompareVertices(triangle, 0, 0, 0, 1, 0, 1, 1, 0, 0);
        }

        [TestMethod]
        public void TriangleTest_RotateY()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.RotateY(90);
            CompareVertices(triangle, 0, 0, 0, -1, 1, 0, -1, 0, 0);
        }

        [TestMethod]
        public void TriangleTest_RotateZ()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.RotateZ(90);
            CompareVertices(triangle, 0, 0, 0, -1, 1, 0, 0, 1, 0);
        }

        [TestMethod]
        public void TriangleTest_Scale()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(1, 1, 1, 1, 1, 1, 1, 1, 1);
            triangle.Scale(1,2,3);
            CompareVertex(triangle.Vertex1[0], triangle.Vertex1[1], triangle.Vertex1[2], 1, 2, 3);
        }

        [TestMethod]
        public void TriangleTest_MirrorX()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.MirrorX();
            CompareVertices(triangle, 1,0,0, 0,1,0, 0,0,0);
        }

        [TestMethod]
        public void TriangleTest_MirrorY()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.MirrorY();
            CompareVertices(triangle, 0, 0, 0, 1, -1, 0, 1, 0, 0);
        }

        [TestMethod]
        public void TriangleTest_MirrorZ()
        {
            Triangle triangle = GraphicsLib.RasterApi.CreateTriangle(0, 0, 0, 1, 1, 0, 1, 0, 0);
            triangle.MirrorZ();
            CompareVertices(triangle, 0, 0, 0, 1, 1, 0, 1, 0, 0);
        } 
    }
}

