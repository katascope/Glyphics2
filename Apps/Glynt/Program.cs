using System;
using System.Collections.Generic;
using System.IO;
using RasterLib;
using RasterLib.Language;
using GraphicsLib;

namespace Glynt
{
    public class Example
    {
        public static void Main()
        {
            const string staticPreviewOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";
            const string digestOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";

            Console.WriteLine("Creating digest at " + digestOutputPath + "\n");

            string originalFolder = Directory.GetCurrentDirectory();
            Digest digest = GraphicsLib.Creators.DigestCreator.Create(originalFolder, digestOutputPath, 
                DownSolver.enables.All
                //DownSolver.enables.RenderIsometricThumb | DownSolver.enables.DoRects
                );

        }
    }
}