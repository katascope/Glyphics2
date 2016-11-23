using System;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Net;
using GraphicsLib;
using RasterLib.Language;
using Newtonsoft.Json;
using GraphicsLib.Simulator;

namespace WebServer
{
    class Program
    {
        static public Digest digest;
        static public Dictionary<string, SimulationModel> simulations = new Dictionary<string, SimulationModel>();

        static void Main()
        {
            Console.WriteLine("Restful Glyphic Server");
            string myFolder = @"C:\Github\Glyphics2\Site\";

            WebResponder.responseHandlers.Add("/ping",            new WebHandler_ping());
            WebResponder.responseHandlers.Add("/api/code2srects", new WebHandler_code2srects());
            WebResponder.responseHandlers.Add("/api/simulation",  new WebHandler_simulation());
            WebResponder.responseHandlers.Add("/api/digest",      new WebHandler_digest());
            //WebResponder.responseHandlers.Add("/api/srects2html", new WebHandler_srects2html());
            //WebResponder.responseHandlers.Add("/api/srects2json", new WebHandler_srects2json());

            //Only have to simulate one thing at a time?
            var file = new StreamReader(myFolder+"\\Digest\\digest.json");
            digest = JsonConvert.DeserializeObject<Digest>(file.ReadToEnd());

            //create server with auto assigned port
            SimpleHttpServer myServer = new SimpleHttpServer(myFolder, 3838);

            if (myServer != null)
                while (true) { }
        }
    }
}
