using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net;
using System.Web;
using System.IO;
using System.Threading;
using ServerLib;
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
            //const string URL = "http://localhost:3838/api/simulation?GateTimer";
            //Connect to simulation server and display grid

            bool done = false;
            int x = 0;
            int y = 0;
            int z = 0;
            char _lastKey = ' ';
            ServerLib.MegaGridClient client = new MegaGridClient("http://localhost:3838");
            while (!done)
            {
                if (Console.KeyAvailable)
                {
                    ConsoleKeyInfo key = Console.ReadKey();
                    _lastKey = key.KeyChar;

                    if (_lastKey == 27) done = true;

                    switch (_lastKey)
                    {
                        case 'a': x--; break;
                        case 'd': x++; break;
                        case 'w': z++; break;
                        case 's': z--; break;
                        case 'e': y++; break;
                        case 'q': y--; break;
                    }
                }

                GridSpaceAddress gsa = new GridSpaceAddress(x, y, z);
                string name = client.RequestNameAtGSA(gsa);
                string rectsStr = client.RequestRects(name);
                SerializedRects srects = new SerializedRects(rectsStr);
                Console.WriteLine(srects.SerializedData);
                //RectList rects = Pivot.ToRects(srects);
                //Console.WriteLine(rects);
                try
                {
                    string response = RequestData("http://localhost:3838/api/simulation?" + name);
                    Console.Out.WriteLine(response);
                }
                catch (Exception e)
                {
                    Console.Out.WriteLine("-----------------");
                    Console.Out.WriteLine(e.Message);
                }

                Thread.Sleep(1000);
                Console.WriteLine("GSA: " + gsa.ToString() + " = '" + name + "'");
            }
        }
    }
}
