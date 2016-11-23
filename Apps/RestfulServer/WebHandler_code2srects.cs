using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;

namespace WebServer
{
    class WebHandler_code2srects : IWebHandler
    {
        public string GetResponse(string query)
        {
            string worldPart = query.Split('=')[1];
            worldPart = WebUtility.UrlDecode(worldPart);
            Code code = RasterLib.RasterApi.CreateCode(worldPart);
            Grid grid = RasterLib.RasterApi.CodeToGrid(code);
            SerializedRects srects = RasterLib.RasterApi.RectsToSerializedRects(RasterLib.RasterApi.GridToRects(grid));
            string response = srects.SerializedData;
            //string response = "<A href=\"deserializer.html?serialized=" + srects.SerializedData + "\">Viewer</a>";
            return response;
        }
    }
}
