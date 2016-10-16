﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;

namespace RasterLib.Language
{
    //General converters
    public partial class CodeConverter
    {
        //Convert tokenList to one-line string
        public static string TokensToCodeString(TokenList glyphTokens)
        {
            return TokensToString(glyphTokens, ";");
        }

        //Convert tokenList to a seperator-delimited string.
        private static string TokensToString(IEnumerable<Token> glyphTokens, string separator)
        {
            IEnumerable<string> strings = TokensToList(glyphTokens);
            
            string finalStr = "";
            foreach (string str in strings)
                finalStr += str + separator;
            return finalStr;
        }

        //Convert tokenList to a List of codelines
        private static IEnumerable<string> TokensToList(IEnumerable<Token> glyphTokens)
        {
            var tokenStrList = new List<string>();
            foreach (Token token in glyphTokens)
                tokenStrList.Add(token.ToString());
            return tokenStrList;
        }
    }
}
