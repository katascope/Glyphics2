using System;
using System.IO;
using RasterLib;
using RasterLib.Language;
using GraphicsLib;

namespace SiteBuilder
{
    class SiteBuilder
    {
        static void Main(string[] args)
        {
            const string documentationOutputPath = "\\GitHub\\Glyphics2\\Site\\Documentation\\";
            const string staticPreviewOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";
            const string digestOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";

            Console.WriteLine("Building site...");

            Console.WriteLine("Documenting glyphs to " + documentationOutputPath + "\n");
            //GraphicsLib.Creators.DocumentationCreator.DocumentByCode(documentationOutputPath);


            Console.WriteLine("Creating digest at " + digestOutputPath + "\n");
            string originalFolder = Directory.GetCurrentDirectory();
            Digest digest = GraphicsLib.Creators.DigestCreator.Create(originalFolder, digestOutputPath,
                DownSolver.enables.All
                //DownSolver.enables.RenderIsometricThumb | DownSolver.enables.DoRects
                );            

            Console.WriteLine("Creating static preview at " + staticPreviewOutputPath + "\n");
            GraphicsLib.Creators.StaticPreviewCreator.Create(digest, staticPreviewOutputPath);
        }
    }
}
