using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphicsLib;
using RasterLib.Renderers;
using RasterLib;
using Newtonsoft.Json;



namespace GridSpace
{

    class GridSpace
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
        public void ReadFromFolder()
        {
            //string[] files = Directory.GetFiles();

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
              "Ocean, Ocean, Beach, Grass, Beach, Grass, Beach, Beach, Beach, Grass, Beach, Grass, Beach, Grass, Beach, Roads, Grass, Beach, Grass, Beach, Grass, Beach, Grass, Beach, Beach, Grass, Beach, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Beach, Roads, Roads, Roads, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Beach, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Walls, Walls, Walls, Roads, Walls, Walls, Walls, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Roads, Nexus, Shops, Roads, Shops, Nexus, Roads, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Roads, Shops, Roads, Roads, Roads, Shops, Roads, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Cube, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Roads, Shops, Roads, Roads, Roads, Shops, Roads, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Roads, Nexus, Shops, Roads, Shops, Nexus, Roads, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Walls, Walls, Walls, Walls, Roads, Walls, Walls, Walls, Walls, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Grass, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Grass, Grass, Roads, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Roads, Grass, Grass, Roads, Beach, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Roads, Beach, Ocean, Ocean",
              "Ocean, Ocean, Beach, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Roads, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Grass, Beach, Ocean, Ocean",
              "Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Ocean, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach, Beach",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
              "Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean, Ocean",
            };

            int x = -16;
            int y = 21;

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

            for (int spike=1;spike<8;spike++)
            {
                var gsa = new GridSpaceAddress(0, spike, 0);
                grids.Add(gsa.ToString(), "Cube");
                Console.WriteLine(gsa);

                gsa = new GridSpaceAddress(2, spike, 2);
                grids.Add(gsa.ToString(), "Cube");
                Console.WriteLine(gsa);
                gsa = new GridSpaceAddress(-2, spike, 2);
                grids.Add(gsa.ToString(), "Cube");
                Console.WriteLine(gsa);
                gsa = new GridSpaceAddress(-2, spike, -2);
                grids.Add(gsa.ToString(), "Cube");
                Console.WriteLine(gsa);
                gsa = new GridSpaceAddress(2, spike, -2);
                grids.Add(gsa.ToString(), "Cube");
                Console.WriteLine(gsa);


            }

       /*     foreach (KeyValuePair<string, string> kvp in grids)
            {
                Console.WriteLine(kvp.Key + " " + kvp.Value);

                string colorCode = "PenColorD4 255 255 255 255";
                string name = kvp.Value.Split('@')[0];
                if (name == "Gras") colorCode = "PenColorD4 127 255 127 255";
                if (name == "Road") colorCode = "PenColorD4 127 127 127 255";
                if (name == "Wall") colorCode = "PenColorD4 255 255 127 255";
                if (name == "Shop") colorCode = "PenColorD4 255 127 127 255";
                string code =
                    "@" + kvp.Value + ",\r\n\r\n" +
                    "Size3D4 64 64 64\r\n" +
                    "\r\n" +
                    colorCode + "\r\n" +
                    "FillRect 0 0 0 63 1 63\r\n" +

                    //border
                    "PenColorD4 255 255 255 255\r\n" +
                    "Rect 0 0 0 63 1 63\r\n";

                RasterLib.RasterApi.CodeToGlyC(kvp.Value + ".glyc", code);
            }
            */
            
        }
    }
    class Program
    {
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
        static void RenderMegaGrid(GridSpace gridspace, Grid GridMega)
        {
            foreach (KeyValuePair<string, string> kvp in gridspace.grids)
            {
                Console.WriteLine("Processing " + kvp.Key + " : " + kvp.Value);
                string stringCode = RasterLib.RasterApi.GlyCToCode(kvp.Value + ".glyc");
                RasterLib.Language.Code code = new RasterLib.Language.Code(stringCode);
                Grid grid = RasterLib.RasterApi.CodeToGrid(code);

                Int32 ox, oy, oz;
                GetGridSpaceAddressFromString(kvp.Key.ToString(), out ox, out oy, out oz);
                ox += 5;
                oz += 5;
                Console.WriteLine("Offset {0} {1} {2}", ox, oy, oz);

                //Now copy the grid into the xyz location * 64
                for (int z = 0; z < 64; z++)
                {
                    for (int y = 0; y < 64; y++)
                    {
                        for (int x = 0; x < 64; x++)
                        {
                            CellProperties cp = grid.GetProperty(x, y, z);
                            GridMega.Plot(x + ox * 64, y, z + oz * 64, cp);
                        }
                    }
                }
            }
        }
        static void Main(string[] args)
        {
            GridSpace gridspace = new GridSpace();

            /*var file = new StreamReader("megagrid.json");
            Dictionary<string, string> useDict = JsonConvert.DeserializeObject<Dictionary<string, string>>(file.ReadToEnd());
            gridspace.grids = useDict;*/

            
            gridspace.Generate();
            gridspace.SaveDictionary("megagrid.json");
            return;

            //gridspace.ReadFromFolder();

            Grid GridMega = new Grid(768, 64, 768, 4);
            Console.WriteLine("Rendering mega grid");
            if (true)//render mega grid
            {
                RenderMegaGrid(gridspace, GridMega);

                GraphicsLib.Renderers.Renderer renderer = new GraphicsLib.Renderers.Renderer();
                Grid gridIsometric = RasterLib.RasterApi.Renderer.RenderIsometricCellsScaled(GridMega, 0, 0, 0, 255, 2, 2, "GridSpace");
                FilePngWrite.SaveFlatPng("megagrid.png", gridIsometric);
            }
        

        }
    }
}

