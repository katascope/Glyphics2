using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphicsLib;
using GraphicsLib.Renderers;
using Newtonsoft.Json;


namespace GridSpace
{
    class GridSpaceAddress
    {
        Int32 X;
        Int32 Y;
        Int32 Z;
        public GridSpaceAddress(Int32 x, Int32 y, Int32 z)
        {
            X = x;
            Y = y;
            Z = z;
        }
        public override string ToString()
        {
            return "@"
                + String.Format("{0:X8}_", X)
                + String.Format("{0:X8}_", Y)
                + String.Format("{0:X8}", Z) + "";
        }
    }

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
            string[] map = {
            "Gras, Gras, Gras, Gras, Gras, Road, Gras, Gras, Gras, Gras, Gras",
            "Gras, Wall, Wall, Wall, Wall, Road, Wall, Wall, Wall, Wall, Gras",
            "Gras, Wall, Road, Road, Road, Road, Road, Road, Road, Wall, Gras",
            "Gras, Wall, Road, Shop, Shop, Road, Shop, Shop, Road, Wall, Gras",
            "Gras, Wall, Road, Shop, Shop, Road, Shop, Shop, Road, Wall, Gras",
            "Road, Road, Road, Road, Road, Null, Road, Road, Road, Road, Road",
            "Gras, Wall, Road, Shop, Shop, Road, Shop, Shop, Road, Wall, Gras",
            "Gras, Wall, Road, Shop, Shop, Road, Shop, Shop, Road, Wall, Gras",
            "Gras, Wall, Road, Road, Road, Road, Road, Road, Road, Wall, Gras",
            "Gras, Wall, Wall, Wall, Wall, Road, Wall, Wall, Wall, Wall, Gras",
            "Gras, Gras, Gras, Gras, Gras, Road, Gras, Gras, Gras, Gras, Gras"
                       };
            int x = -6;
            int y = 5;

            for (int i = 0; i < map.Length; i++)
            {
                x = -6;
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

                GraphicsLib.RasterApi.CodeToGlyC(kvp.Value + ".glyc", code);
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
        static void Main(string[] args)
        {
            GridSpace gridspace = new GridSpace();

            var file = new StreamReader("megagrid.json");
            Dictionary<string, string> useDict = JsonConvert.DeserializeObject<Dictionary<string, string>>(file.ReadToEnd());
            gridspace.grids = useDict;
//            gridspace.Generate();
            //gridspace.ReadFromFolder();

            Grid GridMega = new Grid(768, 64, 768, 4);
            Console.WriteLine("Rendering mega grid");
            if (true)//render mega grid
            {
                foreach (KeyValuePair<string, string> kvp in gridspace.grids)
                {
                    Console.WriteLine("Processing " + kvp.Key + " : " + kvp.Value);
                    string stringCode = GraphicsLib.RasterApi.GlyCToCode(kvp.Value + ".glyc");
                    GraphicsLib.Language.Code code = new GraphicsLib.Language.Code(stringCode);
                    Grid grid = GraphicsLib.RasterApi.CodeToGrid(code);

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
                GraphicsLib.Renderers.Renderer renderer = new GraphicsLib.Renderers.Renderer();
                Grid gridIsometric = GraphicsLib.RasterApi.Renderer.RenderIsometricCellsScaled(GridMega, 0, 0, 0, 255, 2, 2, "GridSpace");
                FilePngWrite.SaveFlatPng("megagrid.png", gridIsometric);
            }
        

//            gridspace.SaveDictionary("megagrid.json");
        }
    }
}

