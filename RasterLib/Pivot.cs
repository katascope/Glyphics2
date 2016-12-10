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
            if (obj.GetType() == typeof(string)) return ToRects(ToCode((string)obj));
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
