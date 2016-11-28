#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;


namespace RasterLib.Language
{
    //Tokenizer class for parsing codeString into tokens
    public partial class CodeConverter
    {
        //Tokenize a single command
        private static Token TokenizeLine2Token(string line, int codeLine)
        {
            if (line[0] == '#') return null;

            string[] parts = line.Split(' ');

            if (line.Contains(","))
            {
                parts = line.Split(',')[1].Split(' ');
            }

            int id = Glyphs.GetId(parts[0]);

            if (id == -1)
            {
                throw new RasterLibError(RasterLibErrorType.UnknownGlyph, codeLine,line);
            }

            Glyph glyph = Glyphs.GetGlyph(id);
            if (glyph.Args != parts.Length - 1)
            {
                if (glyph.Varargs == 0 && glyph.glyph != GlyphId.String)
                {
                    Console.WriteLine("Could not find in : " + line);
                    throw new RasterLibError(RasterLibErrorType.WrongArgumentCount, codeLine, line, "(Need " + glyph.Args + ", Found " + (parts.Length - 1) + ")");
                }
            }
            var token = new Token {_glyph = glyph};
            var args = new int[parts.Length - 1];
            var sargs = new string[parts.Length - 1];

            for (int arg = 0; arg < parts.Length-1; arg++)
            {
                if (ContainsCharacters(parts[arg + 1]))
                    sargs[arg] = parts[arg+1];
                else args[arg] = Convert.ToInt16(parts[arg+1]);
            }
            token.SetArgs(args);
            if (sargs.Length > 0)
                token.SetStringArgs(sargs);
            return token;
        }

        public static bool ContainsCharacters(string str)
        {
            foreach (char ch in str)
            {
                if (Char.IsLetter(ch)) return true;
            }
            return false;
        }

        //Convert codeString into a set of tokenList
        public static TokenList CodeToTokens(Code rasterCode)
        {
            string code = rasterCode.codeString;


            if (code.Contains("" + rasterCode.NameCodeSplitCharacter))
            {
                code = code.Split(rasterCode.NameCodeSplitCharacter)[1];
            }

            if (code.Contains("*"))
            {
                code = code.Split('*')[0];
            }
            if (code.Contains("$"))
            {
                code = code.Split('$')[0];
            }
            char[] splits = { '\n', ';' };
            string[] lines = code.Split(splits);

            if (code.Length < 2)
            {
                return null;
            }

            TokenList tokens = new TokenList();
            //if (tokens.Count == 0)                return tokens;

            int lineNumber = 0;
            foreach (string iterationLine in lines)
            {
                string line = iterationLine.Trim();
                if (line.Length > 0)
                {
                    if (line[0] == '#')
                    {
                        //Ignore the remark
                    }
                    else
                    {
                        Token token = TokenizeLine2Token(line, lineNumber);
                        if (token != null)
                        {
                            if ((int)token._glyph.glyph == 0)
                            {
                                throw new RasterLibError("No codeString");
                            }
                            tokens.AddToken(token);
                        }
                    }
                }
                lineNumber++;
            }
            return tokens;
        }
    }
}
