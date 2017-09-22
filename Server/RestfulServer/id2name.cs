using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;

namespace WebServer
{
    class WebHandler_id2name : IWebHandler
    {
        Dictionary<ulong,string> names = new Dictionary<ulong,string>()
        {
            {0, "null"},
            {1, "home"},
            {2, "forest"},
            {3, "castle"}
        };

        public string GetResponse(string query)
        {
            string worldPart = query.Split('?')[1];
            worldPart = WebUtility.UrlDecode(worldPart);
            ulong WorldId = Convert.ToUInt64(worldPart);

            if (names.ContainsKey(WorldId))
                return names[WorldId];
            else return "unknown";
        }
    }
}
