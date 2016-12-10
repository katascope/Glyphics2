using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpaceLib.Module
{
    public class ModuleDocumentation : IModule
    {
        [FlagsAttribute]
        public enum Options
        {
            None = 0,
            Print,
            All = 0xFFFF
        }
        private string documentationOutputPath;
        private Options _options;

        public string name { get { return this.ToString().Split('.')[1].Remove(0, 6); } }
        public ModuleDocumentation(string args, Options options = Options.All) {
            documentationOutputPath = args; _options = options; 
        }
        public bool Run()
        {
            Console.WriteLine("======================= Documenting glyphs to " + documentationOutputPath + " =======================\n");
            GraphicsLib.Creators.DocumentationCreator.DocumentByCode(documentationOutputPath);
            return false;
        }
    }        
}
