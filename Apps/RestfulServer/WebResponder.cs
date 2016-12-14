using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using GraphicsLib;
using RasterLib.Language;

namespace WebServer
{
    class WebResponder
    {
        static public Dictionary<string, IWebHandler> responseHandlers = new Dictionary<string, IWebHandler>();
        private static void QuickResponse(HttpListenerContext context, string response)
        {
            context.Response.ContentType = "text/html";
            context.Response.AddHeader("Date", DateTime.Now.ToString("r"));
            context.Response.AddHeader("Last-Modified", DateTime.Now.ToString("r"));
            context.Response.ContentLength64 = response.Length;
            byte[] buffer = new byte[response.Length * 16];
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

            string[] parts = url.Trim('/').Split('/');

            if (parts[0] == "api" && parts.Length > 2)
            {
                string fullname = parts[0] + "/" + parts[1];
                if (responseHandlers.ContainsKey(fullname))
                {
                    IWebHandler wh = responseHandlers[fullname];
                    QuickResponse(context, wh.GetResponse(parts[2] + query));
                    return true;
                }
            }
            else if (parts[0] == "api" && parts.Length > 1)
            {
                string fullname = parts[0] + "/" + parts[1];
                if (responseHandlers.ContainsKey(fullname))
                {
                     IWebHandler wh = responseHandlers[fullname];
                    QuickResponse(context, wh.GetResponse(query));
                    return true;
                }
            }
            else if (parts[0] == "ping")
            {
                if (responseHandlers.ContainsKey(url))
                {
                    IWebHandler wh = responseHandlers[url];
                    QuickResponse(context, wh.GetResponse(query));
                    return true;
                }
            }
            else
            {
                QuickResponse(context, "failed ");
            }
            return false;
        }
    }
}
