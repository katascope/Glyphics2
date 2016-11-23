﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace RasterLib.Language
{
    //Glyph class
    public class Glyph// : Glyph
    {
        //The name of the _glyph
        public string Name { get; set; }

        //The _glyph's id. 
        public int Id { get; private set; }

        //Variable arguments. Used for PalFromVal
        public int Varargs { get; set; }

        //Number of arguments Glyph requires
        public byte Args { get; set; }

        //Description of syntax. i.e. "x y z s"
        public string Syntax { get; set; }

        //Description of _glyph. i.e. "Draws tornado at <x> <y> <z> <scale>"
        public string Desc { get; set; }

        //Enum of Glyph's ID
        public GlyphId glyph { get; set; }

        //Default constructor
        public Glyph(GlyphId glyphId, string nName, int nVarargs, byte nArgs, string nSyntax, string nDesc)
        {
            Name = nName;

            glyph = glyphId;
            Id = (byte)glyph;

            Varargs = nVarargs;
            Args = nArgs;
            Syntax = nSyntax;
            Desc = nDesc;
        }
    }
}

