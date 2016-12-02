using System.IO;
using RasterLib;
using RasterLib.Language;
using GraphicsLib;

namespace GlyToPov
{
    class Program
    {
        static void Main(string[] args)
        {
            GlycToPovConverter.GlycToPov("..\\..\\..\\..\\Glyph Cores\\PrintableNexus.glyc",
                                         "..\\..\\..\\..\\Glyph Cores\\PrintableNexus.pov",
                                         "..\\..\\..\\..\\povHeader.povTemplate");
        }
    }
}

