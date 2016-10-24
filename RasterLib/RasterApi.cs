#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source codeString must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using RasterLib.Language;
using RasterLib.Painters;
using RasterLib.Utility;

namespace RasterLib
{
    public static class RasterApi 
    {
        //Versioning 
        public static string Version { get { return "2.01"; } }
        public static string VersionName { get { return "Transcendental"; } }

        //API-Level Painter
        private static readonly IPainter RealPainter = new CPainter();
        public static IPainter Painter { get { return RealPainter; } }

        public static Code CreateCode(string code) { return new Code(code); }
        public static CodeList CreateCodes() { return new CodeList(); }
        
        //Glyphs
        public static Glyph[] GetGlyphDefs() { return Glyphs.GetGlyphDefs(); }
        public static Glyph GetGlyph(int id) { return Glyphs.GetGlyph(id); }
        public static int GetId(string name) { return Glyphs.GetId(name); }

        //Code-To
        public static Grid CodeToGrid(Code rasterCode) { if (rasterCode == null) return null; return CodeConverter.CodeToGrid(rasterCode.codeString); }
        public static TokenList CodeToTokens(Code rasterCode) { return CodeConverter.CodeToTokens(rasterCode); }
        public static Codename CodeToCodename(Code rasterCode) { return new Codename(rasterCode); }
        public static Code CodeToRescaledCode(Code rasterCode, int toX, int toY, int toZ) { return CodeConverter.CodeToRescaledCode(rasterCode, toX, toY, toZ); }
        public static GridList CodeToThumbnailed(Code code) { return Thumbnails.CodeToThumbnailed(code); }

        //Tokens-To
        public static Grid TokensToGrid(TokenList tokens) { return CodeConverter.TokensToGrid(tokens); }

        //Bytes
        public static string BytesToString(byte[] bytes) { return ByteConverter.BytesToString(bytes); }

        //Creational
        public static double[] CreatePoint(int x, int y, int z) { return new double[] { x, y, z }; }
        public static Rect CreateRect(double minx, double miny, double minz, double maxx, double maxy, double maxz) { return new Rect(minx, miny, minz, maxx, maxy, maxz); }
        public static GridContext CreateContext(Grid grid) { return new GridContext(grid); }
        public static Grid CreateGrid(int x, int y, int z, int bpp) { return new Grid(x, y, z, bpp); }
        public static Grid CreateGridFromValues(int dimx, int dimy, int dimz, int bpp, int[] vals) { return GridCreator.CreateGridFromValues(dimx, dimy, dimz, bpp, vals); }
        public static Grid CreateGridFromRectangle(Grid src, int x1, int y1, int z1, int x2, int y2, int z2) { return GridCreator.CreateGridFromRectangle(src, x1, y1, z1, x2, y2, z2); }

        //RGBA-To
        public static ulong Rgba2Ulong(byte r, byte g, byte b, byte a) { return Converter.Rgba2Ulong(r, g, b, a); }
        public static void Ulong2Rgba(ulong val, out byte r, out byte g, out byte b, out byte a) { Converter.Ulong2Rgba(val, out r, out g, out b, out a); }

        //Comparisons
        public static bool DoublesAreEqual(double v1, double v2) { return Compare.DoublesAreEqual(v1, v2); }
        public static bool FloatsAreEqual(float v1, float v2) { return Compare.FloatAreEqual(v1, v2); }
        //public static bool BytesAreEqual(byte[] result, byte[] expectedResult) { return Compare.BytesAreEqual(result, expectedResult); }

        //Rotations
        public static void RotateX(float angle, ref float y, ref float z) { MathTrigonometry.RotateX(angle, ref y, ref z); }
        public static void RotateY(float angle, ref float x, ref float z) { MathTrigonometry.RotateY(angle, ref x, ref z); }
        public static void RotateZ(float angle, ref float x, ref float y) { MathTrigonometry.RotateZ(angle, ref x, ref y); }
    }
}

