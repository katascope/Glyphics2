using System;
using System.Collections.Generic;
using System.IO;
using GraphicsLib;
using RasterLib.Language;
using RasterLib;

namespace SpaceLib.Module
{
    public class ModuleGenesis : IModule
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
        public ModuleGenesis(string args, Options options = Options.All)
        {
            outputPath = args; _options = options;
        }
        public bool Run()
        {
            Console.WriteLine("======================= Genesis ========================");
            SpaceLib.GridSpace gridspace = new SpaceLib.GridSpace();
            gridspace.Generate();
            gridspace.SaveDictionary("megagrid.json"); return false;
        }
    }
}
