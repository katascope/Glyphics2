using System;
using System.Collections.Generic;

namespace Glynt
{
    public class CompiledCodeDigest
    {
        public List<CompiledCode> codes { get; set; }
        public CompiledCodeDigest()
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
