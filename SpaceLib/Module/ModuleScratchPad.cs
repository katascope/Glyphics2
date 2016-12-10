#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.IO;
using ScratchPad.Scratch;
using Newtonsoft.Json;

namespace SpaceLib.Module
{
    public class ModuleScratchPad : IModule
    {
        [FlagsAttribute]
        public enum Options
        {
            None = 0,
            Print,
            All = 0xFFFF
        }
        private string filename;
        private Options _options;

        public string name { get { return this.ToString().Split('.')[1].Remove(0, 6); } }
        public ModuleScratchPad(string args, Options options = Options.All)
        {
            filename = args; _options = options;
        }
        public bool Run()
        {
            Console.WriteLine("======================= ScratchPad =======================\n");
            using (var file = new StreamReader(filename))
            {
                ScratchControl scratch = null;

                if (filename.ToUpper().Contains(".YML"))
                {
                    Console.WriteLine("Reading Scratch config in YAML from " + filename);
                    var inputStream = new StringReader(file.ReadToEnd());
                    var ymlDeserializer = new YamlDotNet.Serialization.Deserializer();
                    try
                    {
                        scratch = ymlDeserializer.Deserialize<ScratchControl>(inputStream);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine("Caught exception " + ex);
                        return true;
                    }
                }
                if (filename.ToUpper().Contains(".JSON"))
                {
                    Console.WriteLine("Reading Scratch config in JSON from " + filename);
                    scratch = JsonConvert.DeserializeObject<ScratchControl>(file.ReadToEnd());
                }
                ScratchLogic.SuperDebug(scratch);
                ScratchLogic.Titler();
            }

            return false;
        }
    }
}
