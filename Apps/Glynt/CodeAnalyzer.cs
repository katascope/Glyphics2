using System;
using System.IO;
using System.Collections.Generic;

namespace Glynt
{
    public class CodeAnalyzer
    {
        public static string MultiLineCodeToSingleLineCode(string code)
        {
            string result = code.TrimStart().TrimEnd();
            result = result.Replace("\r\n", "\n");
            result = result.Replace('\n', ';');
            while (result.Contains(";;")) result = result.Replace(";;", ";");
            return result;
        }

        public static int Analyze(string inputFilenameWithPath, CompiledCodeDigest digest)
        {
            string filename = Path.GetFileNameWithoutExtension(inputFilenameWithPath);
            List<CodeAnalyzerError> results = new List<CodeAnalyzerError>();
            Console.WriteLine("Analyzing: "+inputFilenameWithPath);

            DateTime dt = File.GetLastWriteTime(inputFilenameWithPath);
            using (StreamReader reader = File.OpenText(inputFilenameWithPath))
            {
                string name = reader.ReadLine().TrimEnd().TrimEnd(',');

                if (name.CompareTo(filename) != 0)
                    results.Add(new CodeAnalyzerError(inputFilenameWithPath, 0, String.Format("Filename '{0}' mismatch to '{1}'", filename, name), CodeAnalyzerError.Severity.Warning));

                string fullcode = "";
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    if (line.Length > 0 && line[0] == '#')
                    {
                        //Ignore comment
                    }
                    else fullcode += line + "\n";
                }
                RasterLib.DownSolver ds = new RasterLib.DownSolver(inputFilenameWithPath);
                CompiledCode ca = new CompiledCode(name, MultiLineCodeToSingleLineCode(fullcode), filename+".glyc", Path.GetDirectoryName(inputFilenameWithPath), dt);
                if (digest.FindByName(ca.name) != null)
                    results.Add(new CodeAnalyzerError(inputFilenameWithPath, 0, String.Format("{0} already exists in digest!", name), CodeAnalyzerError.Severity.Error));
                else 
                    digest.codes.Add(ca);

                ca.tokenCount = ds.Tokens.Count;
                if (ds.Rects != null)
                {
                    ca.rectCount = ds.Rects.Count;
                    ca.quadCount = ds.Quads.Count;
                    ca.triCount = ds.Triangles.Count;
                }

                ca.SizeX = ds.Grid.SizeX;
                ca.SizeY = ds.Grid.SizeY;
                ca.SizeZ = ds.Grid.SizeZ;

                ca.SerializedRects = ds.SerializedRects.SerializedData;


                foreach (CodeAnalyzerError result in results)
                {
                    Console.WriteLine(result);
                    if (result.severity == CodeAnalyzerError.Severity.Error) return -1;
                }

                if (results.Count > 0) Console.WriteLine();

                return 0;
            }
        }
    }
}
