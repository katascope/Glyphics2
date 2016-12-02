using System;
using System.IO;
using System.Collections.Generic;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;

namespace GraphicsLib.Module
{
    public class ModuleDigest : IModule
    {
        private string digestOutputPath;
        private DownSolver.enables _options;

        public string name { get { return this.ToString().Split('.')[1].Remove(0, 6); } }
        public ModuleDigest(string args, DownSolver.enables options = DownSolver.enables.All)
        {
            digestOutputPath = args; _options = options;
        }
        public bool Run()
        {
            Console.WriteLine("======================= Creating digest at " + digestOutputPath + " =======================\n");
            Digest digest = GraphicsLib.Creators.DigestCreator.Create(Directory.GetCurrentDirectory(), digestOutputPath, _options);

            Console.WriteLine("======================= Creating static preview at " + digestOutputPath + " =======================\n");
            GraphicsLib.Creators.StaticPreviewCreator.Create(digest, digestOutputPath);
            return false;
        }
    }
}

