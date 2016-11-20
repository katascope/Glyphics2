#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace GraphicsLib.Language
{
    //Implementation of Token, see for usage
    public class Token
    {
        //Glyph operation arguments
        private int[] _args;
        private string[] _sargs;

        //Glyph operation
        public Glyph _glyph { get; set; }

        //Get Args
        public int[] GetArgs()
        {
            return _args;
        }

        //Set args
        public void SetArgs(int[] args)
        {
            _args = args;
        }

        //Get String Args
        public string[] GetStringArgs()
        {
            return _sargs;
        }

        //Set args
        public void SetStringArgs(string[] sargs)
        {
            _sargs = sargs;
        }

        //Readable description
        public override string ToString()
        {
            string result = _glyph.Name;
            for (int l = 0; l < _glyph.Args; l++)
                result += " " + _args[l];
            return result;
        }
    }
}
