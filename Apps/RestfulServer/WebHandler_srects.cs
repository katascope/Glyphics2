using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;

namespace WebServer
{
    class WebHandler_srects : IWebHandler
    {
        public string GetResponse(string query)
        {
            string name = query.Substring(1, query.Length - 1);
            CompiledCode code = WebServer.digest.FindByName(name);
            if (code == null) return "";
            return code.SerializedRects;
        }
    }
}
