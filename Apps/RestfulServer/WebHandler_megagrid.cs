using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using RasterLib.Language;
using SpaceLib;

namespace WebServer
{
    class WebHandler_megagrid : IWebHandler
    {
        public string GetResponse(string data)
        {
            GridSpaceAddress gsa;
            if ((gsa = GridSpaceAddress.TryParse(data)) != null)
            {
                if (Program.megagridAddressDictionary.ContainsKey(gsa.ToString()))
                {
                    string worldName = Program.megagridAddressDictionary[gsa.ToString()];
                    return worldName;
                }
            }
            return "";
        }
    }
}
