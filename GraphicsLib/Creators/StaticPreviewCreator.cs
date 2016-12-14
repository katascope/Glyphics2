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
using RasterLib.Language;

namespace GraphicsLib.Creators
{
    public class StaticPreviewCreator
    {
        public static void Create(Digest digest, string destinationFolder)
        {
            using (var file = new System.IO.StreamWriter(destinationFolder + "static.html"))
            {
                file.WriteLine("<title>Grid Digest</title>");
                file.WriteLine("<h1>Grid Digest</h1>");
                foreach (CompiledCode cc in digest.codes)
                {
                    //file.WriteLine("<a href=\"deserializer.html?serialized={0}\">", cc.SerializedRects);
                    file.WriteLine("<a href=\"{0}.html\">", cc.name);
                    file.WriteLine("<img src=\"{0}\" width=128 height=128>", Path.GetFileName(cc.isometricGridThumbFilename));
                    file.WriteLine("</a>");
                }
            }
        }
    }
}
