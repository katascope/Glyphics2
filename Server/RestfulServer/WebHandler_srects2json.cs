using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;

namespace WebServer
{
    class WebHandler_srects2json : IWebHandler
    {
        public string GetResponse(string query)
        {
            string serializedRectsString = query.Substring(1, query.Length - 1);
            SerializedRects srects = RasterLib.RasterApi.CreateSerializedRects(serializedRectsString);
            RectList rects = RasterLib.RasterApi.SerializedRectsToRects(srects);

            string response = "<title>SerializedRects-to-JSON</title>";
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
            return response;
        }
    }
}
