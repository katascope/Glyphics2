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
using RasterLib;
using RasterLib.Language;

namespace GraphicsLib
{
    public class CodeCompiler
    {
        public static string MultiLineCodeToSingleLineCode(string code)
        {
            string result = code.TrimStart().TrimEnd();
            result = result.Replace("\r\n", "\n");
            result = result.Replace('\n', ';');
            while (result.Contains(";;")) result = result.Replace(";;", ";");
            return result;
        }

        public static int Analyze(string inputFilenameWithPath, Digest digest, string outputFolder, RasterLib.DownSolver.enables enables)
        {
            string filename = Path.GetFileNameWithoutExtension(inputFilenameWithPath);
            List<CodeCompilerError> results = new List<CodeCompilerError>();
            Console.WriteLine("Analyzing: "+inputFilenameWithPath);

            string buildFolder = outputFolder;

            DateTime dt = File.GetLastWriteTime(inputFilenameWithPath);
            using (StreamReader reader = File.OpenText(inputFilenameWithPath))
            {
                string name = reader.ReadLine().TrimEnd().TrimEnd(',');

                if (name.CompareTo(filename) != 0)
                    results.Add(new CodeCompilerError(inputFilenameWithPath, 0, String.Format("Filename '{0}' mismatch to '{1}'", filename, name), CodeCompilerError.Severity.Warning));

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
                DownSolver ds = new DownSolver(inputFilenameWithPath, enables);

                CompiledCode ca = new CompiledCode();
                ca.name = name;
                ca.minimalCode = MultiLineCodeToSingleLineCode(fullcode);
                ca.filename = filename+".glyc";
                ca.path = ".";// Path.GetDirectoryName(inputFilenameWithPath);
                ca.timestamp = dt;

                if (digest.FindByName(ca.name) != null)
                    results.Add(new CodeCompilerError(inputFilenameWithPath, 0, String.Format("{0} already exists in digest!", name), CodeCompilerError.Severity.Error));
                else 
                    digest.codes.Add(ca);

                ca.tokenCount = ds.Tokens.Count;
                if (ds.Rects != null)
                    ca.rectCount = ds.Rects.Count;
                if (ds.Quads != null)
                    ca.quadCount = ds.Quads.Count;
                if (ds.Triangles != null)
                    ca.triCount = ds.Triangles.Count;

                ca.SizeX = ds.Grid.SizeX;
                ca.SizeY = ds.Grid.SizeY;
                ca.SizeZ = ds.Grid.SizeZ;

                if (ds.SerializedRects != null)
                    ca.SerializedRects = ds.SerializedRects.SerializedData;

                if (ds.SerializedRectsMipMap != null)
                    ca.SerializedRectsMipMapX16 = ds.SerializedRectsMipMap.SerializedData;

                if (ds.GridIsometricLarge != null)
                {
                    ca.isometricGridLargeFilename = buildFolder + filename + "_isometric_large.png";
                    GraphicsApi.SaveFlatPng(ca.isometricGridLargeFilename, ds.GridIsometricLarge);
                }
                if (ds.GridIsometric != null)
                {
                    ca.isometricGridFilename = buildFolder + filename + "_isometric.png";
                    GraphicsApi.SaveFlatPng(ca.isometricGridFilename, ds.GridIsometric);
                }
                if (ds.GridIsometricThumb != null)
                {
                    ca.isometricGridThumbFilename = buildFolder + filename + "_isometric_thumb.png";
                    GraphicsApi.SaveFlatPng(ca.isometricGridThumbFilename, ds.GridIsometricThumb);
                }
                if (ds.GridOrthogonal != null)
                {
                    ca.orthogonalGridFilename = buildFolder + filename + "_orthogonal.png";
                    GraphicsApi.SaveFlatPng(ca.orthogonalGridFilename, ds.GridOrthogonal);
                }

                if ((enables & RasterLib.DownSolver.enables.DoDocs) != 0)
                    GraphicsLib.Creators.DocumentationCreator.DocumentByCode(outputFolder, name, ca.minimalCode);

                foreach (CodeCompilerError result in results)
                {
                    Console.WriteLine(result);
                    if (result.severity == CodeCompilerError.Severity.Error) return -1;
                }

                if (results.Count > 0) Console.WriteLine();

                return 0;
            }
        }
    }
}
