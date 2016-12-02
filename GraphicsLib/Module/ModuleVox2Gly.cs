using System;
using System.Collections.Generic;
using System.IO;
using GraphicsLib;
using RasterLib.Language;
using RasterLib;

namespace GraphicsLib.Module
{
    public class ModuleVox2Gly : IModule
    {
        [FlagsAttribute]
        public enum Options
        {
            None = 0,
            Print,
            All = 0xFFFF
        }
        private string outputPath;
        private Options _options;

        public string name { get { return this.ToString().Split('.')[1].Remove(0, 6); } }
        public ModuleVox2Gly(string args, Options options = Options.All)
        {
            outputPath = args; _options = options;
        }
        public bool Run()
        {
            //Now do .vox files
            Console.WriteLine("======================= VOX files =======================");
            string[] infiles = Directory.GetFiles(Directory.GetCurrentDirectory(), "*.vox");

            foreach (string infile in infiles)
            {
                string name = Path.GetFileNameWithoutExtension(infile);
                VoxFile_VoxelSet.Vox2Glyc(outputPath, name);
            }
            return false;
        }
    }
}
