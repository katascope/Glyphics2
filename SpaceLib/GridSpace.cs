#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RasterLib;
using SpaceLib;

namespace SpaceLib
{
    public class GridSpace
    {
        public Dictionary<string, string> grids { get; set; }
        public Dictionary<string, DateTime> updateTimes { get; set; }

        public void SetName(string addr, string name)
        {
            if (grids.ContainsKey(addr))
            {
                grids[addr] = name;
                updateTimes[addr] = DateTime.Now;
            }
            else
            {
                grids.Add(addr, name);
                updateTimes.Add(addr, DateTime.Now);
            }
        }

        public string GetName(string addr)
        {
            if (grids.ContainsKey(addr))
                return grids[addr];
            return null;
        }

        public GridSpace()
        {
            grids = new Dictionary<string, string>();
            updateTimes = new Dictionary<string, DateTime>();
        }

        public void SaveDictionary(string filename)
        {
            string digestJson = Newtonsoft.Json.JsonConvert.SerializeObject(grids, Newtonsoft.Json.Formatting.Indented);
            using (var file = new System.IO.StreamWriter(filename))
            {
                file.WriteLine(digestJson);
            }
        }

        public void Spike(ref Dictionary<string,string> additions, int height, int x, int z, string name)
        {
            for (int spike = 1; spike < height; spike++)
            {
                var gsa = new GridSpaceAddress(x, spike, z);
                additions.Add(gsa.ToString(), name);
                Console.WriteLine("Spike: {0} {1} {2}", x, spike, z, gsa);
            }
        }

        public void GenerateOld()
        {
            string[] map = 
            {
              "Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Bounds",
              "Bounds, Ocean, Beach, Vegas, Beach, Vegas, Beach, Beach, Beach, Vegas, Beach, Vegas, Beach, Vegas, Beach, Roads, Vegas, Beach, Vegas, Beach, Vegas, Beach, Vegas, Beach, Beach, Vegas, Beach, Vegas, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Beach, Roads, Roads, Roads, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, DataPillar, Roads, Roads, Cells, Roads, DataCube, Roads, DataCube, Roads, DataCube, Roads, Roads, Roads, DataCube, Roads, DataCube, Roads, Roads, Roads, DataPillar, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Beach, GridWall, Vegas, Roads, Cells, Vegas, Vegas, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Vegas, Roads, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Freaky, Cells, Cells, Freaky, Cells, Cells, HighRoad, Cells, Cells, Cells, Cells, Cells, Freaky, Cells, Cells, Cells, Cells, Cells, Freaky, Cells, Freaky, Cells, Cells, Freaky, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, HighRoad, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Freaky, Cells, Vegas, Freaky, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Freaky, Vegas, Vegas, Vegas, Vegas, Vegas, Freaky, Vegas, Freaky, Vegas, Vegas, Freaky, Vegas, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, HighRoad, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Freaky, Cells, Freaky, Freaky, Cells, Freaky, HighRoad, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Freaky, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, WarmCube, Cells, Cells, Cells, Roads, Cells, Cells, Cells, WarmCube, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, Hexa, Hexa, Hexa, Hexa, Hexa, Hexa, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, DataPillar, DataGate, Hexa, DataGate, DataPillar, Hexa, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, DataGate, Prototypes, Hexa, Hexa, DataGate, Prototypes, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Hexa, Hexa, Hexa, GateTimer, Hexa, Hexa, Hexa, DataGate, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, DataGate, Prototypes, Hexa, Hexa, Prototypes, Hexa, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, DataPillar, DataGate, Hexa, DataGate, DataPillar, Hexa, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, Hexa, Hexa, Hexa, Hexa, Hexa, Hexa, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, WarmCube, Cells, Cells, Cells, Roads, Cells, Cells, Cells, WarmCube, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Vegas, Roads, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Vegas, Roads, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Vegas, Roads, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Vegas, Roads, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Vegas, Roads, Cells, Vegas, HighRoad, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Vegas, DataPillar, DataCube, Vegas, DataCube, Vegas, DataCube, Vegas, DataCube, Vegas, DataCube, Vegas, Roads, Vegas, DataCube, Vegas, DataCube, Vegas, DataCube, Vegas, DataCube, DataPillar, DataCube, Vegas, DataCube, Beach, Ocean, Bounds",
              "Bounds, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Bounds",
              "Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds, Bounds",
            };

            int x = -16;
            int y = 21;

            Console.WriteLine("Adding main map");
            for (int i = 0; i < map.Length; i++)
            {
                x = -16;
                string[] parts = map[i].Split(',');
                foreach (string part in parts)
                {
                    x++;
                    string partName = part.Trim();
                    Console.Write(partName + " " + x + "," + y + " ");
                    var gsa = new GridSpaceAddress(x, 0, y);
                    grids.Add(gsa.ToString(), partName);
                }
                y--;
                Console.WriteLine();
            }

            Console.WriteLine("Adding elevation cells");
            Dictionary<string, string> additions = new Dictionary<string, string>();
            foreach (KeyValuePair<string,string> kvp in grids)
            {
                GridSpaceAddress gsaOrig = GridSpaceAddress.TryParse(kvp.Key);
                if (kvp.Value == "Tower")
                    Spike(ref additions, 4, gsaOrig.X, gsaOrig.Z, "Tower");
                if (kvp.Value == "WarmCube")
                    Spike(ref additions, 6, gsaOrig.X, gsaOrig.Z, "WarmCube");
                if (kvp.Value == "DataCube")
                    Spike(ref additions, 3, gsaOrig.X, gsaOrig.Z, "DataCube");
                if (kvp.Value == "DataPillar")
                    Spike(ref additions, 16, gsaOrig.X, gsaOrig.Z, "DataPillar");
                if (kvp.Value == "DataGate")
                    Spike(ref additions, 16, gsaOrig.X, gsaOrig.Z, "DataGate");
                if (kvp.Value == "Bounds")
                    Spike(ref additions, 16, gsaOrig.X, gsaOrig.Z, "Bounds");
            }
            foreach (KeyValuePair<string,string> kvp in additions)
            {
                grids.Add(kvp.Key, kvp.Value);
            }
        }
        static string GetGridSpaceAddressFromString(string value, out Int32 x, out Int32 y, out Int32 z)
        {
            x = 0;
            y = 0;
            z = 0;
            string rawStr = value;
            if (rawStr.Contains('@'))
            {
                rawStr = rawStr.Split('@')[1];
            }
            string[] parts = rawStr.Split('_');
            x = Convert.ToInt32(parts[0], 16);
            y = Convert.ToInt32(parts[1], 16);
            z = Convert.ToInt32(parts[2], 16);
            return "";
        }

        public void Generate()
        {
            int MX = 127;
            int MY = 127;
            Dictionary<string, string> additions = new Dictionary<string, string>();

            for (int y = -MY; y < MY; y++)
            {
                for (int x = -MX; x < MX; x++)
                {
                    GridSpaceAddress gsa = new GridSpaceAddress(x,0,y);
                    SetName(gsa.ToString(),"Grid");
                    Console.WriteLine(gsa.ToString() + " - " + x + "," + y);
                }
            }
        }
    }
}
