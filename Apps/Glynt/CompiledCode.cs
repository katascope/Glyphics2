using System;
using RasterApi;
using RasterLib.Language;

namespace Glynt
{
    public class CompiledCode
    {
        public string name { get; set; }
        public int SizeX { get; set; }
        public int SizeY { get; set; }
        public int SizeZ { get; set; }

        public string minimalCode { get; set; }

        public string filename { get; set; }
        public string path { get; set; }
        public DateTime timestamp { get; set; }

        public int tokenCount { get; set; }
        public int rectCount { get; set; }
        public int quadCount { get; set; }
        public int triCount { get; set; }

        public string SerializedRects { get; set; }
        public RasterLib.QuadList Quads { get; set; }
        public RasterLib.Triangles Triangles { get; set; }

        public string unified
        {
            get
            {
                return name + "," + minimalCode + SerializedRects;
            }
        }
        public CompiledCode()
        {

        }
        public CompiledCode(string n, string minCode, string fn, string p, DateTime lastWrite)
        {
            name = n;
            minimalCode = minCode;
            filename = fn;
            path = p;
            timestamp = lastWrite;
        }       
    }
}
