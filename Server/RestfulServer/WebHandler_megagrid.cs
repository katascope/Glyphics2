using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;
using ServerLib;

namespace WebServer
{
    class WebHandler_megagrid : IWebHandler
    {
        public string GetResponse(string data)
        {
            GridSpaceAddress gsa;
            if ((gsa = GridSpaceAddress.TryParse(data)) != null)
            {
                string worldName = WebServer.gridspace.GetName(gsa.ToString());
                return "" + worldName;
            }
            return "";
        }
    }
}
