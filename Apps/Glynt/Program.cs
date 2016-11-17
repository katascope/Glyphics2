using System;
using System.Collections.Generic;
using System.IO;

/*
 * Purpose: Analyze set of GLYC files to:
 *  1) Verify correctness
 *  2) Precompute rectangles
 *  3) Generate thumbnails
 *  4) Save digest files
 *  
 *  GridMap - location to name map
 *  
 *  Glynt does static analysis, outputs
 * 
 */

namespace Glynt
{
    public class Example
    {
        public static void CreateDigests()
        {
            //Step : Get current folder
            string curPath = Directory.GetCurrentDirectory();
            Console.WriteLine("Current path: {0}", curPath);            

            //Step : Get subfolders
            string[] subFolders = Directory.GetDirectories(curPath);
            List<string> folders = new List<string>(subFolders);
            folders.Insert(0, "./");

            CompiledCodeDigest digest = new CompiledCodeDigest();

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
                    if (infiles.Length == 0) return;

                    //Step : Process input files
                    foreach (string infile in infiles)
                    {
                        filesAnalyzed++;
                        
                        if (CodeAnalyzer.Analyze(infile, digest) != 0)
                        {
                            Console.WriteLine("\n!!!!!!FAILED!!!!!!");
                            return;
                        }
                    }
                }
            }

            Console.WriteLine("\nTotal analyzed files = " + filesAnalyzed);

            //Step : Go back to original folder
            Directory.SetCurrentDirectory(curPath);

            //Step : Save digest
            string digestJson = Newtonsoft.Json.JsonConvert.SerializeObject(digest, Newtonsoft.Json.Formatting.Indented);
            Console.WriteLine("Saving digest.json");
            File.WriteAllText("digest.json", digestJson);

            Console.WriteLine("Ok");
        }
        public static void Main()
        {
            CreateDigests();

            //After tests
            //string inJson = File.ReadAllText("digest.json");
            //CompiledCodeDigest digest2 = Newtonsoft.Json.JsonConvert.DeserializeObject < CompiledCodeDigest> (inJson);
            //digest2.print();
        }
    }
}