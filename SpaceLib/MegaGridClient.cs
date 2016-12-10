using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading;
using System.Net.Http.Headers;
using GraphicsLib;
using RasterLib;

namespace SpaceLib
{
    public class MegaGridClient
    {
        private string URL = "http://localhost:3838";
        public MegaGridClient(string baseUrl)
        {
            URL = baseUrl;
        }
        public string RequestNameAtGSA(GridSpaceAddress gsa)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            string urlParameters = "/api/megagrid?" + gsa.ToString();
            // List data response.
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call!
            if (response.IsSuccessStatusCode)
            {
                string result = response.Content.ReadAsStringAsync().Result;
                //              Console.WriteLine("Data: " + result);
                return result.Trim();
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
            }
            return null;
        }
        public string RequestRects(string name)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            string urlParameters = "/api/srects?" + name;
            // List data response.
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call!
            if (response.IsSuccessStatusCode)
            {
                string result = response.Content.ReadAsStringAsync().Result;
                //                Console.WriteLine("Data: " + result);
                client.Dispose();
                return result.Trim();
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
            }
            return null;
        }
        public Dictionary<string, string> GetNames(int rangeX, int rangeY, int rangeZ)
        {
            Dictionary<string, string> gsa2names = new Dictionary<string, string>();
            for (int z = -rangeZ; z <= rangeZ; z++)
            {
                for (int y = -rangeY; y <= rangeY; y++)
                {
                    for (int x = -rangeX; x <= rangeX; x++)
                    {
                        GridSpaceAddress gsa = new GridSpaceAddress(x, y, z);
                        string name = RequestNameAtGSA(gsa);
                        if (name != null && name.Length > 0)
                        {
                            Console.WriteLine(x + "," + y + "," + z + " = '" + name + "'");
                            gsa2names.Add(gsa.ToString(), name);
                            //Thread.Sleep(25);
                        }
                    }
                }
            }
            return gsa2names;
        }
        public Dictionary<string, RectList> Names2Rects(Dictionary<string, string> gsa2names)
        {
            Dictionary<string, RectList> names2rects = new Dictionary<string, RectList>();
            foreach (KeyValuePair<string, string> kvp in gsa2names)
            {
                if (!names2rects.ContainsKey(kvp.Value))
                {
                    Console.WriteLine("Searching : " + kvp.Value);

                    string srectData = RequestRects(kvp.Value);
                    SerializedRects srects = new SerializedRects(srectData);
                    RectList rects = RasterLib.RasterApi.SerializedRectsToRects(srects);
                    Console.WriteLine(rects);

                    names2rects.Add(kvp.Value, rects);
                }
            }
            return names2rects;
        }
        public string RequestLive(string name)
        {
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            string urlParameters = "/api/simulation?" + name;
            // List data response.
            HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call!
            if (response.IsSuccessStatusCode)
            {
                string result = response.Content.ReadAsStringAsync().Result;
                //                Console.WriteLine("Data: " + result);
                client.Dispose();
                return result.Trim();
            }
            else
            {
                Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
            }
            return null;
        }
    }
}

