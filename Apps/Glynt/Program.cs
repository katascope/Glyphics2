using System;
using System.Collections.Generic;
using System.IO;
using GraphicsLib;
using RasterLib.Language;
using RasterLib;

namespace Glynt
{
    public class Example
    {
        public static void Main()
        {
            const string staticPreviewOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";
            const string digestOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";


            string originalFolder = Directory.GetCurrentDirectory();

            //Now do .vox files
            Console.WriteLine("\nVOX files");
            string[] infiles = Directory.GetFiles(originalFolder, "*.vox");

            foreach (string infile in infiles)
            {
                string name = Path.GetFileNameWithoutExtension(infile);
                VoxFile_VoxelSet.Vox2Glyc("\\github\\glyphics2\\glyph cores\\", name);
            }

            Console.WriteLine("Creating digest at " + digestOutputPath + "\n");
            Digest digest = GraphicsLib.Creators.DigestCreator.Create(originalFolder, digestOutputPath,
                //DownSolver.enables.All
                DownSolver.enables.DoRects | DownSolver.enables.DoRectsMipMap

                //DownSolver.enables.RenderIsometricThumb | DownSolver.enables.DoRects
                );

        }
    }
}