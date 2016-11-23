using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using GraphicsLib;
using RasterLib.Language;

namespace WebServer
{
    class WebHandler_digest : IWebHandler
    {
        public string GetResponse(string query)
        {
            StringBuilder sb = new StringBuilder(); 
            foreach (CompiledCode ccode in Program.digest.codes)
            {
                sb.Append(ccode.name + "<br>\n");
            }
            return sb.ToString();
        }
    }
}
