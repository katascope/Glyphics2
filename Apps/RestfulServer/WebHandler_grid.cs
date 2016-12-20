using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;
using SpaceLib;

namespace WebServer
{
    class WebHandler_grid : IWebHandler
    {
        public string GetResponse(string data)
        {
            GridSpaceAddress gsa;
            data = data.TrimStart('?');
            string[] parts = data.Split('&');
            if (parts.Length != 2) return "FAIL";

            string gsaAddress = null;
            string name = null;

            foreach (string param in parts)
            {
                string[] paramParts = param.Split('=');
                string p_name = paramParts[0];
                string p_data = paramParts[1];

                if (p_name == "gsa") gsaAddress = p_data;
                if (p_name == "name") name = p_data;
            }

            if (gsaAddress == null || name == null)
            {
                return "fail";
            }

            if ((gsa = GridSpaceAddress.TryParse(gsaAddress)) != null)
            {
                string gsaStr = gsa.ToString();
                WebServer.gridspace.SetName(gsaStr, name); 
                WebServer.gridspace.SaveDictionary(WebServer.megagrid_name);
                return "OK";
            }
            return "";
        }
    }
}
