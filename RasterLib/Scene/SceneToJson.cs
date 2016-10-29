using System.Text;
using RasterLib;
using RasterLib.Utility;

namespace RasterApi
{
    public class SceneToJson
    {
        public static string Convert(Scene scene)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("{\r\n");
            sb.Append(" \"scene\": {\r\n");
            foreach (Element element in scene)
            {
                byte r, g, b, a;
                Converter.Ulong2Rgba(element.Properties.Rgba, out r, out g, out b, out a);

                string desc =
                    "  \"element\" {\r\n" +
                    "   \"rgba\" {" +
                    "\"r\" : \"" + r + "\", " +
                    "\"g\" : \"" + g + "\", " +
                    "\"b\" : \"" + b + "\", " +
                    "\"a\" : \"" + a + "\" " +
                    "}\r\n" +
                    "   \"transform\" {" +
                    "\"tx\" : \"" + element.Transform.Translation[0] + "\", " +
                    "\"ty\" : \"" + element.Transform.Translation[1] + "\", " +
                    "\"tz\" : \"" + element.Transform.Translation[2] + "\", " +
                    "\"rx\" : \"" + element.Transform.Rotation[0] + "\", " +
                    "\"ry\" : \"" + element.Transform.Rotation[1] + "\", " +
                    "\"rz\" : \"" + element.Transform.Rotation[2] + "\", " +
                    "\"sx\" : \"" + element.Transform.Scale[0] + "\", " +
                    "\"sy\" : \"" + element.Transform.Scale[1] + "\", " +
                    "\"sz\" : \"" + element.Transform.Scale[2] + "\" " +
                    "}\r\n" +
                    "  }\r\n" 
                    ;
                sb.Append(desc);
            }
            sb.Append(" }\r\n");
            sb.Append("}\r\n");

            return sb.ToString();
        }
    }
}
