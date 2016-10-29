#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using RasterApi;
using RasterLib;
using RasterLib.Language;
using RasterLib.Renderers;

namespace GraphicsLib
{
    //FlowSolver class, not really that efficient, but good for making inputs solve out to all possible outputs
    public class DownSolver
    {
        public CodeList Codes;
        public GridList Grids;
        public Code code;
        public Codename codename;
        public TokenList Tokens;
        public Grid Grid;
        public Grid GridOblique;
        public RectList Rects;
        public SerializedRects SerializedRects;
        public SerializedRects SerializedRectsLimit255;
        public QuadList Quads;
        public Triangles Triangles;
        public string JSON;
        public byte[] Rawbytes;

        public DownSolver() { }
        public DownSolver(Code inCode) { FromCode(inCode); }
        public DownSolver(string filename) { FromFilename(filename); }
        public DownSolver(Codename inCodename) { codename = inCodename; }
        public DownSolver(TokenList inTokens) { FromTokens(inTokens); }
        public DownSolver(Grid inGrid) { FromGrid(inGrid); }
        public DownSolver(RectList inRects) { FromRects(inRects); }
        public DownSolver(SerializedRects inSerializedRects) { FromSerializedRects(inSerializedRects); }
        public DownSolver(QuadList inQuads) { FromQuads(inQuads); }
        public DownSolver(Triangles inTriangles) { FromTriangles(inTriangles); }

        public void FromFilename(string filename)
        {
            if (filename.ToUpper().Contains(".PNG")) FromGrid(GraphicsApi.PngToGrid(filename));
            if (filename.ToUpper().Contains(".STL")) FromTriangles(RasterLib.RasterApi.StlToTriangles(filename));
            if (filename.ToUpper().Contains(".OBJ")) FromTriangles(RasterLib.RasterApi.ObjToTriangles(filename));
            if (filename.ToUpper().Contains(".GIF"))
            {
                Grids = GraphicsApi.GifToGrids(filename);
                Grid = Grids.GetGrid(0);
                FromGrid(Grid);
            }
            if (filename.ToUpper().Contains(".GLY"))
            {
                Codes = RasterLib.RasterApi.GlyToCodes(filename);
                code = Codes.GetCode(0);
                FromCode(code);
            }
        }

        public void FromCode(Code inCode)
        {
            code = inCode;
            codename = RasterLib.RasterApi.CodeToCodename(code);
            try
            {
                Tokens = RasterLib.RasterApi.CodeToTokens(code);
                FromTokens(Tokens);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception " + ex);
            }
        }

        public void FromTokens(TokenList inTokens)
        {
            Tokens = inTokens;
            Grid = RasterLib.RasterApi.TokensToGrid(Tokens);
            FromGrid(Grid);
        }
        
        public void FromGrid(Grid inGrid)
        {
            Grid = inGrid;

            int scale;
            if (Grid.SizeX > 128)
                scale = 1;
            else
                scale = (int)((256) / (float)(Grid.SizeX ) * 1.3) & 254 ;

            GridOblique = RasterLib.RasterApi.Renderer.RenderIsometricCellsScaled(Grid, 255, 255, 255, 255, scale, scale);

            Rects = GridConverter.GridToRects(Grid);
            FromRects(Rects);
        }
        
        public void FromRects(RectList inRects)
        {
            Rects = inRects;
            SerializedRects = RasterLib.RasterApi.RectsToSerializedRects(Rects);
            SerializedRectsLimit255 = RasterLib.RasterApi.RectsToSerializedRectsLimit255(Rects);

            Scene scene = RasterLib.RasterApi.RectsToScene(Rects);
            JSON = SceneToJson.Convert(scene);

            FromSerializedRects(SerializedRects);
        }

        public void FromSerializedRects(SerializedRects inSerializedRects)
        {
            SerializedRects = inSerializedRects;
            Rects = RasterLib.RasterApi.SerializedRectsToRects(SerializedRects);
            Quads = RasterLib.RasterApi.RectsToQuads(Rects);
            FromQuads(Quads);
        }

        public void FromQuads(QuadList quads)
        {
            Triangles = TriangleConverter.QuadsToTriangles(quads);
            FromTriangles(Triangles);
        }

        public void FromTriangles(Triangles inTriangles)
        {
            Triangles = inTriangles;
        }
    }
}

