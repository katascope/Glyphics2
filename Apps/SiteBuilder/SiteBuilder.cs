using System;
using System.IO;
using GraphicsLib;
using RasterLib.Language;
using RasterLib;

namespace SiteBuilder
{
    class SiteBuilder
    {
        static void Main(string[] args)
        {
            const string documentationOutputPath = "\\GitHub\\Glyphics2\\Site\\Documentation\\";
            const string staticPreviewOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";
            const string digestOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";
            string originalFolder = Directory.GetCurrentDirectory();

            Console.WriteLine("Documenting glyphs to " + documentationOutputPath + "\n");
            GraphicsLib.Creators.DocumentationCreator.DocumentByCode(documentationOutputPath);

            Console.WriteLine("Creating digest at " + digestOutputPath + "\n");
            Digest digest = GraphicsLib.Creators.DigestCreator.Create(originalFolder, digestOutputPath, DownSolver.enables.All );

            Console.WriteLine("Creating static preview at " + staticPreviewOutputPath + "\n");
            GraphicsLib.Creators.StaticPreviewCreator.Create(digest, staticPreviewOutputPath);
        }
    }
}
