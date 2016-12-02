using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RasterLib;

namespace GraphicsLib
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

        public void Generate()
        {
            string[] map = 
            {
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach",
              "Ocean, Ocean, Beach, Vegas, Beach, Vegas, Beach, Beach, Beach, Vegas, Beach, Vegas, Beach, Vegas, Beach, Roads, Vegas, Beach, Vegas, Beach, Vegas, Beach, Vegas, Beach, Beach, Vegas, Beach, Vegas, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Beach, Roads, Roads, Roads, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Roads, Roads, Castle, Roads, Ascent, Roads, Ascent, Roads, Ascent, Roads, Roads, Roads, Ascent, Roads, Ascent, Roads, Roads, Roads, Ascent, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Beach, Levels, Vegas, Roads, Castle, Vegas, Vegas, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, GridWall, Roads, Castle, GridWall, Roads, GridWall, GridWall, GridWall, GridWall, GridWall, Roads, GridWall, GridWall, GridWall, GridWall, GridWall, Roads, GridWall, Roads, GridWall, GridWall, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Decoder, Decoder, Decoder, Decoder, Roads, Decoder, Decoder, Decoder, Decoder, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Decoder, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Pillar, Pillar, Pillar, Roads, Pillar, Pillar, Pillar, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Decoder, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Roads, Roads, Shops, Roads, Shops, Roads, Roads, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Roads, Shops, Roads, Roads, Roads, Shops, Roads, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Decoder, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Cube, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Roads, Shops, Roads, Roads, Roads, Shops, Roads, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Roads, Roads, Shops, Roads, Shops, Roads, Roads, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Decoder, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Pillar, Pillar, Pillar, Pillar, Roads, Pillar, Pillar, Pillar, Pillar, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Vegas, Roads, Castle, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Vegas, Vegas, Vegas, Vegas, Roads, Vegas, Roads, Vegas, Vegas, Roads, Vegas, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Levels, Decoder, Roads, Castle, Decoder, Roads, Decoder, Decoder, Decoder, Decoder, Decoder, Roads, Decoder, Decoder, Decoder, Decoder, Decoder, Roads, Decoder, Roads, Decoder, Decoder, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Vegas, Levels, Arena, Vegas, Arena, Vegas, Arena, Vegas, Arena, Vegas, Arena, Vegas, Roads, Vegas, Arena, Vegas, Arena, Vegas, Arena, Vegas, Arena, Vegas, Arena, Vegas, Arena, Beach, Ocean, Ocean",
              "Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
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
            for (int spike = 1; spike < 8; spike++)
            {
                var gsa = new GridSpaceAddress(0, spike, 0);
                grids.Add(gsa.ToString(), "Rings");
                Console.WriteLine(gsa);

                gsa = new GridSpaceAddress(2, spike, 2);
                grids.Add(gsa.ToString(), "Rings");
                Console.WriteLine(gsa);
                gsa = new GridSpaceAddress(-2, spike, 2);
                grids.Add(gsa.ToString(), "Rings");
                Console.WriteLine(gsa);
                gsa = new GridSpaceAddress(-2, spike, -2);
                grids.Add(gsa.ToString(), "Rings");
                Console.WriteLine(gsa);
                gsa = new GridSpaceAddress(2, spike, -2);
                grids.Add(gsa.ToString(), "Rings");
                Console.WriteLine(gsa);
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
