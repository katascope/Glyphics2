#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Text;

namespace GraphicsLib
{
    public partial class TriangleConverter
    {
        public static string TrianglesToWebGl(Triangles triangles, string declarationName)
        {
            IndexedTriangles iit = new IndexedTriangles(triangles);

            var sb = new StringBuilder();

            //sb.Append("var " + declarationName + "Vertices = [ ");
            sb.Append("var vertices = [\r\n");
            sb.Append(iit.VerticesString);
            sb.Append("];\r\n");

            sb.Append("\r\n");
            
            sb.Append("var colors = [\r\n");
            sb.Append(iit.ColorsString);
            sb.Append("];\r\n");

            sb.Append("\r\n");

            sb.Append("var indices = [\r\n");
            sb.Append(iit.FacesString);
            sb.Append("];\r\n");


            string str = sb.ToString();
            return str;
        }
    }
}



