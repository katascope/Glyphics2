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
using System.Collections.Generic;
using RasterLib.Language;

namespace GraphicsLib.Creators
{
    public class DigestCreator
    {
        public static Digest Create(string rootFolder, string outputFolder, RasterLib.DownSolver.enables enables)
        {
            DateTime startTime = DateTime.Now;
            Console.WriteLine("Starting at {0}", startTime);

            //Step : Get subfolders
            string[] subFolders = Directory.GetDirectories(rootFolder);
            List<string> folders = new List<string>(subFolders);
            folders.Insert(0, "./");

            Digest digest = new Digest();

            int filesAnalyzed = 0;
            //Step : Iterate through folders
            foreach (string folder in folders)
            {
                //Step : Gather input files
                string[] infiles = Directory.GetFiles(folder, "*.glyc");
                if (infiles.Length > 0)
                {
                    Directory.SetCurrentDirectory(folder);

                    Console.WriteLine("\nFolder '{0}'\n({1} files)", folder, infiles.Length);
                    if (infiles.Length == 0) return null;

                    //Step : Process input files
                    foreach (string infile in infiles)
                    {
                        filesAnalyzed++;

                        if (CodeCompiler.Analyze(infile, digest, outputFolder, enables) != 0)
                        {
                            Console.WriteLine("\n!!!!!!FAILED!!!!!!");
                            return null;
                        }
                    }
                }
            }

            Console.WriteLine("\nTotal analyzed files = " + filesAnalyzed);

            //Step : Go back to original folder
            Directory.SetCurrentDirectory(rootFolder);

            //Step : Save digest
            string digestJson = Newtonsoft.Json.JsonConvert.SerializeObject(digest, Newtonsoft.Json.Formatting.Indented);
            Console.WriteLine("Saving digest.json");
            File.WriteAllText(outputFolder+"\\digest.json", digestJson);

            DateTime endTime = DateTime.Now;
            Console.WriteLine("Ending at {0}", endTime);
            Console.WriteLine("Time elapsed = {0}", endTime - startTime);

            return digest;
        }
    }
}
