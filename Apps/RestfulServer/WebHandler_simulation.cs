using System;
using System.Collections.Generic;
using System.Text;
using System.Net;
using RasterLib;
using GraphicsLib;
using RasterLib.Language;

namespace WebServer
{
    
    class WebHandler_simulation : IWebHandler
    {
        public string GetResponse(string query)
        {
            if (query.Length == 0)
                return "No world";
            string worldPart = query.Split('?')[1];
            if (worldPart == null) return "";
            worldPart = WebUtility.UrlDecode(worldPart);

            if (!Program.simulations.ContainsKey(worldPart))
            {
                CompiledCode ccode = Program.digest.FindByName(worldPart);
                if (ccode == null) return "world not in digest";
                string digestCode = ccode.minimalCode;
                Code rasterCode = RasterLib.RasterApi.CreateCode(digestCode);
                Grid grid = RasterLib.RasterApi.CodeToGrid(rasterCode);
                RectList rects = RasterLib.RasterApi.GridToRects(grid);

                GraphicsLib.Simulator.SimulationModel simModel = new GraphicsLib.Simulator.SimulationModel();
                simModel.grid = grid;
                simModel.rects = rects;
                simModel.Build();
                GraphicsLib.Simulator.Simulation simulation = new GraphicsLib.Simulator.Simulation();
                //simModel.rects = RasterLib
                Program.simulations.Add(worldPart, simModel);
            }

            //can assume it exists here
                GraphicsLib.Simulator.SimulationModel sim = Program.simulations[worldPart];
                //GraphicsLib.Simulator.Simulation.RunSimulation(sim);
            
            sim.IterateSimulation();


                string response = "=";
                for (int i = 0; i < sim.circuitIds.Length; i++)
                    response += sim.circuitIds[i] + " ";

                response += RasterLib.RasterApi.RectsToSerializedRects(sim.rects);

                return response;

//            worldPart = WebUtility.UrlDecode(worldPart);
  //          string response = "<title>Ping Pong</title><body>Ping, Pong, Ping Pong"+worldPart+"</body>";
            //return response;
        }
    }
}
