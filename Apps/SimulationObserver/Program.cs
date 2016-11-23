using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Web;
using System.IO;
using System.Threading;
using RasterLib;

namespace SimulationObserver
{
    class Program
    {
        static string RequestData(string url)
        {
            const string DATA = "";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
            request.Method = "POST";
            request.ContentType = "application/json";
            request.ContentLength = DATA.Length;
            StreamWriter requestWriter = new StreamWriter(request.GetRequestStream(), System.Text.Encoding.ASCII);
            requestWriter.Write(DATA);
            requestWriter.Close();

            WebResponse webResponse = request.GetResponse();
            Stream webStream = webResponse.GetResponseStream();
            StreamReader responseReader = new StreamReader(webStream);
            string response = responseReader.ReadToEnd();
            responseReader.Close();
            return response;
        }

        static void Main(string[] args)
        {
            const string URL = "http://localhost:3838/api/simulation?Timer";
            //Connect to simulation server and display grid

            while (true)
            {
                try
                {
                    string response = RequestData(URL);

                    SerializedRects srects = new SerializedRects(response);
                    RectList rects = RasterLib.RasterApi.SerializedRectsToRects(srects);

                    //Console.WriteLine(rects);
                    Console.Out.WriteLine(response);
                }
                catch (Exception e)
                {
                    Console.Out.WriteLine("-----------------");
                    Console.Out.WriteLine(e.Message);
                }

                Thread.Sleep(1000);
                Console.Write(".");
            }
        }
    }
}
