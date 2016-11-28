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
    //Rescales the arguments to functions in a set of tokens, allows rescaling (up or down) of codeString to grids
    public partial class CodeConverter
    {
        //Resize a token
        private static void RescaleGlyphToken(ref Token token, double scaleX, double scaleY, double scaleZ)
        {
            int[] args = token.GetArgs();
            string[] sargs = token.GetStringArgs();

            if (token._glyph.Syntax.Length == 0)
                return;

            int arg = 0;
            //for (int arg = 0; arg < args.Length; arg++)
            while (arg < args.Length)
            {
                char syntax = token._glyph.Syntax[arg * 2];
                switch (syntax)
                {
                    case 'w':
                    case 'x':
                    case 'X':
                        if (token.GetArgs()[arg] > 1)
                            args[arg] = (int)(args[arg] * scaleX);
                        break;
                    case 'y':
                    case 'Y':
                    case 'h':
                        if (args[arg] > 1)
                            args[arg] = (int)(args[arg] * scaleY);
                        break;
                    case 'z':
                    case 'Z':
                    case 'd':
                        if (args[arg] > 1)
                            args[arg] = (int)(args[arg] * scaleZ);
                        break;
                    case 's':
                    case 'S':
                        if (args[arg]  > 1)
                            args[arg] = (int)(args[arg] * scaleX);
                        break;
                    case 't':
                        if (sargs[arg] != null)
                        {
                            sargs[arg] = sargs[arg];
                        }
                        break;
                }
                arg++;
            }
        }

        //Resize a codeString
        public static Code CodeToRescaledCode(Code rasterCode, int toX, int toY, int toZ)
        {
            string code = rasterCode.codeString;
            TokenList glyphTokens = CodeToTokens(new Code(code));

            string prepend = code.Split(rasterCode.NameCodeSplitCharacter)[0];

            double scaleX;
            double scaleY;
            double scaleZ;

            Token sizeToken = glyphTokens.GetToken(0);
            int[] args = sizeToken.GetArgs();

            switch (args.Length)
            {
                case 1:
                    scaleX = scaleY = scaleZ = (double)toX / args[0];
                    break;
                case 2:
                    scaleX = (double)toX / args[0];
                    scaleY = (double)toY / args[1];
                    scaleZ = 1;
                    break;
                case 3:
                    scaleX = (double)toX / args[0];
                    scaleY = (double)toY / args[1];
                    scaleZ = (double)toZ / args[2];
                    break;
                default:
                    return null;
            }

            int count = 0;
            try
            {
                foreach (Token t in glyphTokens)
                {
                    Token token = t;
                    count++;
                    if (count == 9)
                    {

                    }
                    if (!(t._glyph.glyph == GlyphId.PutGroup || t._glyph.glyph == GlyphId.Put || t._glyph.glyph == GlyphId.String))
                        RescaleGlyphToken(ref token, scaleX, scaleY, scaleZ);
                    else {
                        int foo;
                        foo = 1;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception : " + ex);
            }
            return new Code(prepend + "," + TokensToCodeString(glyphTokens));
        }
    }
}
