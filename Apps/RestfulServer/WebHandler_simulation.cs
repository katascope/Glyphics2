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

            string response = "";
            GraphicsLib.Simulator.SimulationModel sim = Program.simulations.simulations[worldPart];
            sim.IterateSimulation(worldPart);

            int pid = 0;
            foreach (Rect rect in sim.rects)
            {
                pid++;
                if (rect.Properties.PhysicsId > 0)
                {
                    response += 
                        pid+" "+
                        rect.Properties.Rgba+" "+
                        rect.Pt1[0]+","+rect.Pt1[1]+","+rect.Pt1[2]+":"+
                        rect.Pt2[0]+","+rect.Pt2[1]+","+rect.Pt2[2]+"\n";
                }
            }

            return response;
        }
    }
}
