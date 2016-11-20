using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GraphicsLib.Language
{
    public class Digest
    {
        public List<CompiledCode> codes { get; set; }
        public Digest()
        {
            codes = new List<CompiledCode>();
        }
        public void print()
        {
            foreach (CompiledCode code in codes)
                Console.WriteLine(code);
        }
        public CompiledCode FindByName(string searchName)
        {
            foreach (CompiledCode code in codes)
            {
                if (code.name == searchName)
                    return code;
            }
            return null;
        }
    }    
}
