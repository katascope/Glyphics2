#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections;
using System.Collections.Generic;

namespace RasterLib.Language
{
    //Implementation of TokenList, see for usage
    public class TokenList : IEnumerable<Token>
    {
        //Actual List of Token
        private List<Token> tokenList { get; set; }

        //Assignment constructor
        public TokenList()
        {
            tokenList = new List<Token>();
        }

        //Number of Token in list
        public int Count { get { return tokenList.Count; } }

        //Get Token from list, null if out of range
        public Token GetToken(int id)
        {
            if (id < 0 || id >= Count) return null;
            return tokenList[id];
        }

        //Add Token to list
        public void AddToken(Token token)
        {
            tokenList.Add(token);
        }

        //Readable description
        public override string ToString()
        {
            string str = "";

            foreach (Token token in tokenList)
            {
                str += token + "\r\n";
            }
            return str;
        }

        //Make enumerable instead
        #region Implementation of IEnumerable
        public IEnumerator<Token> GetEnumerator()
        {
            return tokenList.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        #endregion
    }
}