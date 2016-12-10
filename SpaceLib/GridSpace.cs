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
        public GridSpace()
        {
            grids = new Dictionary<string, string>();
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

        public void Generate()
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
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, DataGate, Prototypes, Timer, Hexa, DataGate, Prototypes, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, HighRoad, Roads, Roads, Hexa, Timer, Hexa, GateTimer, Hexa, Timer, Hexa, DataGate, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Bounds",
              "Bounds, Ocean, Beach, Roads, Cells, Roads, Roads, Cells, Roads, HighRoad, Roads, Cells, Hexa, DataGate, Prototypes, Timer, Hexa, Prototypes, Hexa, Cells, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Bounds",
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
    }
}
