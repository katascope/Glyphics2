using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;

namespace WebServer
{
    class WebHandler_srects2html : IWebHandler
    {
        public string GetResponse(string query)
        {
            string serializedRectsString = query.Substring(1, query.Length - 1);
            SerializedRects srects = RasterLib.RasterApi.CreateSerializedRects(serializedRectsString);
            RectList rects = RasterLib.RasterApi.SerializedRectsToRects(srects);

            string response = "<title>SerializedRects-to-HTML</title><body>";
            foreach (Rect rect in rects)
                response += rect + "<br>";
            response += "</body>";
            return response;
        }
    }
}
