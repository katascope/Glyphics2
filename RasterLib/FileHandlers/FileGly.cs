#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

using RasterLib.Language;
using RasterLib;

namespace RasterLib
{
    //Static set of Glyphics file operations
    public class GlyphicsFile
    {
        private GlyphicsFile() { }

        //Write a series of Glyphics codes to file
        public static bool CodesToGly(string filename, CodeList codes)
        {
            using (var file = new System.IO.StreamWriter(filename))
            {
                foreach (Code code in codes)
                {
                    file.WriteLine(code.codeString);
                }
            }
            return false;
        }

        //Read and return series of Glyphics codeString from a file
        public static CodeList GlyToCodes(string filename)
        {
            CodeList codes = new CodeList();
            using (var file = new System.IO.StreamReader(filename))
            {
                string line;
                while ((line = file.ReadLine()) != null)
                {
                    string codeString = line;
                    if (!line.Contains(","))
                        codeString = "noname," + codeString;

                    Code code = new Code(codeString);
                    codes.AddCode(code);
                }
            }
            return codes;
        }

        //Read and return series of Glyphics codeString from a file
        public static string GlyCToCode(string filename)
        {
            string codeString = "";
            using (var file = new System.IO.StreamReader(filename))
            {
                string line;

                while ((line = file.ReadLine()) != null)
                {
                    line = line.TrimEnd();
                    line = line.TrimEnd(';');
                    line += ";";

                    codeString += line;
                }
            }
            return codeString;
        }

        //Write Glyphics codeString to file
        public static bool CodeToGlyC(string filename, string code)
        {
            using (var file = new System.IO.StreamWriter(filename))
            {
                file.WriteLine(code);
            }
            return false;
        }

        //Load archetypes from a file
        public static bool LoadArchetypes(string filename)
        {
            using (var file = new System.IO.StreamReader(filename))
            {
                string line;
                while ((line = file.ReadLine()) != null)
                {
                    Grid grid = CodeConverter.TokensToGrid(CodeConverter.CodeToTokens(new Code(line)));
                    if (grid != null)
                        GridLibrary.GridList.AddGrid(grid);
                }
            }
            return false;
        }

        //Load a glyphics file, precompute rectangles and append them to codeString as speedy cache
        public static void PreSerializeGlyphicsFile(string filename)
        {
            CodeList codes = GlyToCodes(filename);

            foreach (Code t in codes)
            {
                string code = t.codeString;
                    
                if (code.Contains("*"))
                {
                    code = code.Split('*')[0];
                }

                Grid grid = CodeConverter.TokensToGrid(CodeConverter.CodeToTokens(new Code(code)));

                if (grid != null)
                {
                    RectList rectSet = GridConverter.GridToRects(grid);
                    string serializedRects = RectConverter.RectsToSerializedRects(rectSet).SerializedData;
                    code = code + serializedRects;
                    t.codeString = code;
                }
            }
            CodesToGly(filename, codes);
        }
    }
}
