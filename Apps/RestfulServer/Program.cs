using System;
using System.IO;
using System.Threading;
using System.Collections.Generic;
using System.Text;
using System.Net;
using GraphicsLib;
using RasterLib.Language;
using Newtonsoft.Json;
using GraphicsLib.Simulator;
using SpaceLib.Module;
using RasterLib;
using SpaceLib;

namespace WebServer
{
    class Simulations
    {
        public Dictionary<string, SimulationModel> simulations = new Dictionary<string, SimulationModel>();

        public Simulations(Dictionary<string, string> megagridAddressDictionary, Digest digest)
        {
            foreach (KeyValuePair<string,string> kvp in megagridAddressDictionary)
            {
                if (!simulations.ContainsKey(kvp.Value.Trim()))
                {                    
                    SimulationModel simModel = new SimulationModel();

                    CompiledCode code = digest.FindByName(kvp.Value);
                    Grid grid = Pivot.ToGrid(new Code(code.minimalCode));
                    RectList rects = Pivot.ToRects(grid);
                    simModel.grid = grid;
                    RasterLib.RasterApi.BuildCircuit(rects, true);
                    simModel.rects = rects;
                    simModel.Build();
                    simulations.Add(kvp.Value.Trim(), simModel);
                }
            }
        }
        public void Simulate()
        {
            Console.Write("\rSim:");
            foreach (KeyValuePair<string, SimulationModel> kvp in simulations)
            {
                SimulationModel sim = kvp.Value;
                if (sim.circuitStates.Length > 0)
                {
                    Console.Write(kvp.Key + " ");
                    sim.IterateSimulation(kvp.Key);
                }
            }            
        }
    }

    class Program
    {
        static public Digest digest;
        static public Simulations simulations;
        static public Dictionary<string, string> megagridAddressDictionary;
        static public Users users = new Users();

        static void Main()
        {
            string rootFolder = Directory.GetCurrentDirectory();
            Directory.SetCurrentDirectory("\\GitHub\\Glyphics2\\glyph cores\\");
            Console.WriteLine("Refreshing inputs");
            Modules plugins = new Modules();
            plugins.Add(new ModuleVox2Gly("\\GitHub\\Glyphics2\\glyph cores\\"));
            plugins.Add(new ModuleDigest("\\GitHub\\Glyphics2\\Site\\Digest\\", DownSolver.enables.DoRects));
            plugins.Add(new ModuleGenesis("megagrid.json"));
            
            plugins.Run();

            Directory.SetCurrentDirectory(rootFolder);

            Console.WriteLine("Restful Glyphic Server");
            string webfolder = @"C:\Github\Glyphics2\Site\";

            WebResponder.responseHandlers.Add("/ping",              new WebHandler_ping());
            WebResponder.responseHandlers.Add("/api/code2srects",   new WebHandler_code2srects());
            WebResponder.responseHandlers.Add("/api/simulation",    new WebHandler_simulation());
            WebResponder.responseHandlers.Add("/api/digest",        new WebHandler_digest());
            WebResponder.responseHandlers.Add("/api/srects",        new WebHandler_srects());
            WebResponder.responseHandlers.Add("/api/megagrid",      new WebHandler_megagrid());
            WebResponder.responseHandlers.Add("/api/code",          new WebHandler_code());
            WebResponder.responseHandlers.Add("/api/user",          new WebHandler_user());
            WebResponder.responseHandlers.Add("/api/users",         new WebHandler_users());
            WebResponder.responseHandlers.Add("/api/useradd",       new WebHandler_useradd());
            WebResponder.responseHandlers.Add("/api/userdel",       new WebHandler_userdel());  
            //WebResponder.responseHandlers.Add("/api/srects2html", new WebHandler_srects2html());
            //WebResponder.responseHandlers.Add("/api/srects2json", new WebHandler_srects2json());

            //Only have to simulate one thing at a time?
            var file = new StreamReader(webfolder+"\\Digest\\digest.json");
            digest = JsonConvert.DeserializeObject<Digest>(file.ReadToEnd());

            file = new StreamReader(@"C:\Github\Glyphics2\Glyph Cores\megagrid.json");
            megagridAddressDictionary = JsonConvert.DeserializeObject<Dictionary<string, string>>(file.ReadToEnd());

            simulations = new Simulations(megagridAddressDictionary, digest);

            users.ReadFromFile(webfolder + "users.json");

            //create server with auto assigned port
            SimpleHttpServer myServer = new SimpleHttpServer(webfolder, 3838);

            if (myServer != null)
                while (true)
                {
                    simulations.Simulate();
                    Thread.Sleep(500);
                }
        }
    }
}

