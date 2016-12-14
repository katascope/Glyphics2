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
using RasterLib.Renderers;
using RasterLib.Utility;

namespace RasterLib
{
    public static class RasterApi 
    {
        private static readonly IRenderer RealRenderer = new Renderer();
        public static IRenderer Renderer { get { return RealRenderer; } }

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

        //Quad and QuadList
        public static QuadList RectsToQuads(RectList rectSet) { return RectConverter.RectsToQuads(rectSet); }
        public static int RemoveRedundantQuads(QuadList quads) { return RectConverter.RemoveRedundantQuads(quads); }

        public static RectList CodeToRects(Code rasterCode) { return RectConverter.CodeToRects(rasterCode); }

        //Grid-To
        public static RectList GridToRects(Grid grid) { return GridConverter.GridToRects(grid); }

        //Circuit
        public static void BuildCircuit(RectList rects, bool verbose) { GridConverter.BuildCircuit(rects, verbose); }

        //Rect(s)-To
        public static Code RectsToCode(RectList rectSet) { if (rectSet == null) return null; return RectConverter.RectsToCode(rectSet); }
        public static Rect RectsToBoundaries(RectList rectSet) { if (rectSet == null) return null; return rectSet.Boundaries; }
        public static Grid RectsToGrid(RectList rectSet)
        {
            Rect rect = RasterLib.RasterApi.RectsToBoundaries(rectSet);
            Grid grid = new Grid((int)rect.Pt2[0], (int)rect.Pt2[1], (int)rect.Pt2[2], 4);
            RasterLib.RasterApi.Renderer.RenderRectsToGrid(rectSet, grid);
            return grid;
        }

        public static SerializedRects CreateSerializedRects(string serialized) { return new SerializedRects(serialized); }
        public static SerializedRects RectsToSerializedRects(RectList rectSet) { return RectConverter.RectsToSerializedRects(rectSet); }
        public static RectList SerializedRectsToRects(SerializedRects serializedRects) { return RectConverter.SerializedRectsToRects(serializedRects); }
        //public static RectList SerializedRectsToRects(string serializedRects) { return RectConverter.SerializedRectsToRects(new SerializedRects(serializedRects)); }
        public static SerializedRects RectsToSerializedRectsLimit255(RectList rectSet) { return new SerializedRects(RectConverter.SerializeLimit255(rectSet)); }

        //Translates hex data in string format to byte array
        public static byte[] HexDataToByteArray(string data) { return Transcode64.HexDataToByteArray(data); }
        public static Bytes HexDataToBytes(string data) { return new Bytes(Transcode64.HexDataToByteArray(data)); }

        public static Triangle CreateTriangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3) { return new Triangle(x1, y1, z1, x2, y2, z2, x3, y3, z3); }
        public static Triangles CreateTriangles() { return new Triangles(); }
        public static TrianglesList CreateTrianglesList() { return new TrianglesList(); }

        //File IO for STL files
        public static Triangles StlToTriangles(string filename) { return FileStlRead.ReadFile(filename); }
        public static void SaveTrianglesToStl(string filename, Triangles triangles) { FileStlWrite.WriteFile(triangles, filename); }
        public static void SaveTrianglesToStlAscii(string filename, Triangles triangles) { FileStlWrite.WriteAsciiFile(triangles, filename); }

        public static Triangles QuadsToTriangles(QuadList quads) { return TriangleConverter.QuadsToTriangles(quads); }

        //OBJ file
        public static Triangles ObjToTriangles(string filename) { return FileObjRead.ReadfileAscii(filename); }

        //Triangles-To
        public static Triangles RectsToTrianglesCube(RectList rectSet) { return RectToTriangles.RectsToTrianglesCube(rectSet); }
        public static string TrianglesToWebGl(Triangles triangles, string declarationName) { return TriangleConverter.TrianglesToWebGl(triangles, declarationName); }

        //Text file
        public static void SaveFlatText(string filename, string text) { FileTxtWrite.SaveFlatText(filename, text); }

        //DAE Collada/Mesh file
        public static void SaveDae(string filename, RectList rects) { FileDaeWrite.ExportRectsCollada.WriteMesh(filename, rects); }

        //File IO for GLY Glyphics files
        public static bool CodesToGly(string filename, CodeList codes) { return GlyphicsFile.CodesToGly(filename, codes); }
        public static CodeList GlyToCodes(string filename) { return GlyphicsFile.GlyToCodes(filename); }
        public static string ReadGlyc(string filename) { return GlyphicsFile.ReadGlyc(filename); }
        public static bool CodeToGlyC(string filename, string code) { return GlyphicsFile.CodeToGlyC(filename, code); }

        public static bool LoadArchetypes(string filename) { return GlyphicsFile.LoadArchetypes(filename); }
        public static void PreSerializeGlyphicsFile(string filename) { GlyphicsFile.PreSerializeGlyphicsFile(filename); }

        #region SceneGraph
        //Scenegraph Creational 
        public static Transform CreateTransform() { return new Transform(); }
        public static Element CreateElement() { return new Element(); }
        public static Scene CreateScene() { return new Scene(); }
        public static Deck CreateDeck() { return new Deck(); }

        //Scenegraph functions
        public static Scene RectsToScene(RectList rects) { return SceneConverter.RectsToScene(rects); }
        public static RectList SceneToRects(Scene scene) { return SceneConverter.SceneToRects(scene); }
        public static Rect ElementToRect(Element element) { return SceneConverter.ElementToRect(element); }
        public static Element RectToElement(Rect rect) { return SceneConverter.RectToElement(rect); }
#endregion

        public static string GridTo3DDescription(Grid grid, int ax, int ay, int az) { return RealRenderer.GridTo3DDescription(grid, ax, ay, az); }
        public static string GridToHexDescription(Grid grid) { return Renderer.GridToHexDescription(grid); }

        public static Grid CodeToObliqueCells(Code rasterCode) { return Renderer.RenderObliqueCells(RasterLib.RasterApi.CodeToGrid(rasterCode)); }
    }
}

