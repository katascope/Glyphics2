#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RasterLib.Language;

namespace RasterLib
{
    public class Pivot
    {
        static public Triangles ToTriangles(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToTriangles(new Code((string)obj));
            if (obj.GetType() == typeof(Code)) return ToTriangles(ToQuads(obj));
            if (obj.GetType() == typeof(RectList)) return ToTriangles(ToQuads(obj));
            if (obj.GetType() == typeof(QuadList)) return RasterLib.RasterApi.QuadsToTriangles((QuadList)obj);
            if (obj.GetType() == typeof(Triangles)) return (Triangles)obj;
            if (obj.GetType() == typeof(Grid)) return ToTriangles(ToQuads(obj));
            if (obj.GetType() == typeof(SerializedRects)) return ToTriangles(ToRects((SerializedRects)obj));
            return null;
        }
        static public QuadList ToQuads(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToQuads(new Code((string)obj));
            if (obj.GetType() == typeof(Code)) return ToQuads(ToRects(obj));
            if (obj.GetType() == typeof(RectList)) return RasterLib.RasterApi.RectsToQuads((RectList)obj);
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return (QuadList)obj;
            if (obj.GetType() == typeof(Grid)) return ToQuads(ToRects(obj));
            if (obj.GetType() == typeof(SerializedRects)) return ToQuads(ToRects((SerializedRects)obj));
            return null;
        }
        static public SerializedRects ToSerialized(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToSerialized(new Code((string)obj));
            if (obj.GetType() == typeof(Code)) return ToSerialized(ToRects(obj));
            if (obj.GetType() == typeof(RectList)) return RasterLib.RasterApi.RectsToSerializedRects((RectList)obj);
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return null;
            if (obj.GetType() == typeof(Grid)) return ToSerialized(ToRects(obj));
            if (obj.GetType() == typeof(SerializedRects)) return (SerializedRects)obj;
            return null;
        }
        static public SerializedRects ToSerialized255(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToSerialized255(new Code((string)obj));
            if (obj.GetType() == typeof(Code)) return ToSerialized255(ToRects(obj));
            if (obj.GetType() == typeof(RectList)) return RasterLib.RasterApi.RectsToSerializedRectsLimit255((RectList)obj);
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return null;
            if (obj.GetType() == typeof(Grid)) return ToSerialized255(ToRects(obj));
            if (obj.GetType() == typeof(SerializedRects)) return (SerializedRects)obj;
            return null;
        }
        static public RectList ToRects(object obj)
        {
            if (obj == null)
                return null;

            if (obj.GetType() == typeof(string))
            {
                string str = (string)obj;
                if (str.Length == 0) return null;

                if (str[0] == '*' || str[0] == '@' || str[0] == '$')
                    return ToRects(new SerializedRects(str));
                return ToRects(ToCode(str));
            }
            if (obj.GetType() == typeof(Code)) return ToRects(ToGrid(obj));
            if (obj.GetType() == typeof(RectList)) return (RectList)obj;
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return null;
            if (obj.GetType() == typeof(Grid)) return RasterLib.RasterApi.GridToRects((Grid)obj);
            if (obj.GetType() == typeof(SerializedRects)) return RasterLib.RasterApi.SerializedRectsToRects((SerializedRects)obj);
            return null;
        }
        static public Grid ToGrid(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToGrid(ToCode((string)obj));
            if (obj.GetType() == typeof(Code)) return RasterLib.RasterApi.CodeToGrid((Code)obj);
            if (obj.GetType() == typeof(RectList)) return RasterLib.RasterApi.RectsToGrid((RectList)obj);
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return null;
            if (obj.GetType() == typeof(Grid)) return (Grid)obj;
            if (obj.GetType() == typeof(SerializedRects)) return ToGrid(ToRects((SerializedRects)obj));
            return null;
        }
        static public TokenList ToTokens(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToTokens(ToCode((string)obj));
            if (obj.GetType() == typeof(Code)) return RasterLib.RasterApi.CodeToTokens((Code)obj);
            if (obj.GetType() == typeof(TokenList)) return (TokenList)obj;
            if (obj.GetType() == typeof(RectList)) return null;
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return null;
            if (obj.GetType() == typeof(Grid)) return null;
            if (obj.GetType() == typeof(SerializedRects)) return null;
            return null;
        }
        static public Code ToCode(object obj)
        {
            if (obj.GetType() == typeof(string)) return ToCode(new Code((string)obj));
            if (obj.GetType() == typeof(Code)) return (Code)obj;
            if (obj.GetType() == typeof(TokenList)) return null;
            if (obj.GetType() == typeof(RectList)) return null;
            if (obj.GetType() == typeof(Triangles)) return null;
            if (obj.GetType() == typeof(QuadList)) return null;
            if (obj.GetType() == typeof(Grid)) return null;
            if (obj.GetType() == typeof(SerializedRects)) return null;
            return null;
        }
    }
}
