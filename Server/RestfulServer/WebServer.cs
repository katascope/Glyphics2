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
using GraphicsLib.Module;
using RasterLib;
using ServerLib;

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

    class WebServer
    {
        static public Digest digest;
        static public Simulations simulations;
        //static public Dictionary<string, string> megagridAddressDictionary;
        static public GridSpace gridspace = new GridSpace();
        static public Users users = new Users();
        static public string megagrid_name = "\\github\\glyphics2\\glyph cores\\megagrid_clear.json";
        static public string digestOutputPath = "\\GitHub\\Glyphics2\\Site\\Digest\\";
        //static public string coreFolder = "\\GitHub\\Glyphics2\\glyph cores\\";
        static public string coreFolder = "\\GitHub\\Glyphics2\\Crawler\\";

        static void Main()
        {
            string rootFolder = Directory.GetCurrentDirectory();
            Directory.SetCurrentDirectory(coreFolder);

            Console.WriteLine("Refreshing inputs");
            Modules plugins = new Modules();
            plugins.Add(new ModuleVox2Gly(coreFolder));
            plugins.Add(new ModuleDigest(digestOutputPath, DownSolver.enables.DoRects));
            //plugins.Add(new ModuleGenesis("megagrid.json"));
            
            plugins.Run();

            Directory.SetCurrentDirectory(rootFolder);

            Console.WriteLine("Restful Glyphic Server");
            Console.WriteLine("Enabling file change tracking");
            FileChangeTracker.Run(coreFolder, "*.glyc");

            string webfolder = @"C:\Github\Glyphics2\Site\";

            WebResponder.responseHandlers.Add("ping",              new WebHandler_ping());
            WebResponder.responseHandlers.Add("api/id2name",       new WebHandler_id2name());
            WebResponder.responseHandlers.Add("api/code2srects",   new WebHandler_code2srects());
            WebResponder.responseHandlers.Add("api/simulation",    new WebHandler_simulation());
            WebResponder.responseHandlers.Add("api/digest",        new WebHandler_digest());
            WebResponder.responseHandlers.Add("api/srects",        new WebHandler_srects());
            WebResponder.responseHandlers.Add("api/megagrid",      new WebHandler_megagrid());
            WebResponder.responseHandlers.Add("api/code",          new WebHandler_code());
            WebResponder.responseHandlers.Add("api/user",          new WebHandler_user());
            WebResponder.responseHandlers.Add("api/users",         new WebHandler_users());
            WebResponder.responseHandlers.Add("api/useradd",       new WebHandler_useradd());
            WebResponder.responseHandlers.Add("api/userdel",       new WebHandler_userdel());
            WebResponder.responseHandlers.Add("api/grid",          new WebHandler_grid());
            //WebResponder.responseHandlers.Add("/api/srects2html", new WebHandler_srects2html());
            //WebResponder.responseHandlers.Add("/api/srects2json", new WebHandler_srects2json());

            //Only have to simulate one thing at a time?
            var file = new StreamReader(webfolder+"\\Digest\\digest.json");
            digest = JsonConvert.DeserializeObject<Digest>(file.ReadToEnd());

            /*file = new StreamReader(megagrid_name);
            gridspace.grids = JsonConvert.DeserializeObject<Dictionary<string, string>>(file.ReadToEnd());
            file.Close();
            simulations = new Simulations(gridspace.grids, digest);
            */
            users.ReadFromFile(webfolder + "users.json");

            //create server with auto assigned port
            SimpleHttpServer myServer = new SimpleHttpServer(webfolder, 3838);

            if (myServer != null)
                while (true)
                {
                    //simulations.Simulate();
                    Thread.Sleep(500);
                }
        }
    }
}

