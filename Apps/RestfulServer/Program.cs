using System;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;

/*
 * Need:
 *  Response hook
 *  SerializedRectsToJson
 */
namespace WebServer
{
    class WebResponder
    {
        private static void QuickResponse(HttpListenerContext context, string response)
        {
            context.Response.ContentType = "text/html";

            context.Response.AddHeader("Date", DateTime.Now.ToString("r"));
            context.Response.AddHeader("Last-Modified", DateTime.Now.ToString("r"));
            context.Response.ContentLength64 = response.Length;
            byte[] buffer = new byte[1024 * 16];
            for (int i = 0; i < response.Length; i++)
            {
                buffer[i] = (byte)response[i];
            }
            context.Response.OutputStream.Write(buffer, 0, response.Length);
        }

        public static bool GetResponse(HttpListenerContext context)
        {
            string url = context.Request.Url.AbsolutePath;
            string query = context.Request.Url.Query;
            Console.WriteLine("url={0} : Query={1}", url, query);

            if (url.Equals("/Test"))
            {
                string response = "<title>This is a page</title><body>I know Foo!\nTest successful</body>";
                QuickResponse(context, response);
                return true;
            }
            else if (url.Equals("/Execute"))
            {
                string worldPart = query.Split('=')[1];
                worldPart = WebUtility.UrlDecode(worldPart);
                Code code =RasterLib.RasterApi.CreateCode(worldPart);
                Grid grid =RasterLib.RasterApi.CodeToGrid(code);
                SerializedRects srects =RasterLib.RasterApi.RectsToSerializedRects(RasterLib.RasterApi.GridToRects(grid));
                //response = srects.SerializedData;
                string response = "<A href=\"deserializer.html?serialized=" + srects.SerializedData+"\">Viewer</a>";
                QuickResponse(context, response);
                return true;
            }
            else if (url.Equals("/Worlds"))
            {
                StringBuilder sb = new StringBuilder();

                string response;
                Code code = Program.Codes.GetCode(0);
                //foreach (Code codeString in Program.codes)
                {
                    response = "";
                    string name = code.codeString.Split(',')[0];
                    //string worldPart = codeString.codeString.Split('*')[1];

                    int compressed = code.codeString.IndexOf('*');
                    string worldPart = code.codeString.Substring(compressed);
                    response += "<a href=\"World?name=" + name + "\">" + name+ "</a>";
                    response += ", <a href=\"Execute?codeString=" + code.codeString + "\">" + code.codeString + "</a>";
                    response += " - <a href=\"deserializer.html?serialized=" + worldPart + "\">Viewer " + name + "</a>";
                    response += "<br>";
                    sb.Append(response);
                }
                response = sb.ToString();
                Console.WriteLine(response);
                QuickResponse(context, response);
                return true;
            }
            else if (url.Equals("/World"))
            {
                //http://localhost:3838/World?name=Ascent
                string response = "";
                string worldPart = query.Split('=')[1];
                foreach (Code code in Program.Codes)
                {
                    string name = code.codeString.Split(',')[0];
                    if (name.Equals(worldPart))
                    {
                        response += code.codeString;
                        QuickResponse(context, response);
                        return true;
                    }
                }
                return false;
            }
            else if (url.Equals("/srects2html"))
            {
                string serializedRectsString = query.Substring(1,query.Length-1);
                SerializedRects srects =RasterLib.RasterApi.CreateSerializedRects(serializedRectsString);
                RectList rects =RasterLib.RasterApi.SerializedRectsToRects(srects);

                string response = "<title>SerializedRects-to-HTML</title><body>";
                foreach (Rect rect in rects)
                    response += rect + "<br>";
                response += "</body>";
                QuickResponse(context, response);
                return true;
            }
            else if (url.Equals("/srects2json"))
            {
                string serializedRectsString = query.Substring(1, query.Length - 1);
                SerializedRects srects =RasterLib.RasterApi.CreateSerializedRects(serializedRectsString);
                RectList rects =RasterLib.RasterApi.SerializedRectsToRects(srects);

                string response = "<title>SerializedRects-to-JSON</title>";
    /*            {"employees":[
    {"firstName":"John", "lastName":"Doe"},
    {"firstName":"Anna", "lastName":"Smith"},
    {"firstName":"Peter", "lastName":"Jones"}
]}*/
                response += "{\"rects\":[<br>\n";

                StringBuilder sb = new StringBuilder();

                foreach (Rect rect in rects)
                {
                    string str = "{\"Pt1\":\"" + rect.Pt1 + "\"," +
                                  "\"Pt2\":\"" + rect.Pt2 + "\"," +
                                  "\"RGBA\":\"" + rect.Properties.Rgba + "\"}<br>\n";
                    
                    sb.Append(str);
                }
                response += sb.ToString();
                response += "]}";
                QuickResponse(context, response);
                return true;
            }
            return false;
        }
    }
    class Program
    {
        public static CodeList Codes;
        static void Main()
        {
            Console.WriteLine("Simple web server starting up");

            const string mediaPath = "\\GitHub\\Glyphics2\\Glyph Cores\\";
            Codes =RasterLib.RasterApi.GlyToCodes(mediaPath + "default.gly");
            Console.WriteLine("Glyphics core loaded");

            string myFolder = @"C:\Github\Glyphics2\JavascriptWebGLSDeserializer\";

            //create server with auto assigned port
            SimpleHttpServer myServer = 
                new SimpleHttpServer(myFolder, 3838);

            if (myServer != null)
                while (true) { }
        }
    }
}
