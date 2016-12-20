using System;
using System.Collections.Generic;
using GraphicsLib;
using RasterLib;
using SpaceLib;

namespace MegaGridRender
{
    public class MegaGridRendererMain
    {
        static Grid RenderNetGrid(Dictionary<string, string> gsa2names, Dictionary<string, RectList> name2rects, int rangeX, int rangeY, int rangeZ)
        {
            int width = rangeX * 64 * 2;
            int height = rangeY * 64 * 2;
            int depth = rangeZ * 64 * 2;
            Grid grid = RasterLib.RasterApi.CreateGrid(width, 64, depth, 4);
            int ox = width / 2;
            int oz = depth / 2;

            IPainter painter = RasterLib.RasterApi.Painter;
            for (int z = -rangeZ; z <= rangeZ; z++)
            {
                //for (int y = 0; y <= rangeY; y++)
                int y = 0;
                {
                    for (int x = -rangeX; x <= rangeX; x++)
                    {
                        GridSpaceAddress gsa = new GridSpaceAddress(x, y, z);
                        if (gsa2names.ContainsKey(gsa.ToString()))
                        {
                            string name = gsa2names[gsa.ToString()];
                            RectList cellRects = name2rects[name];

                            Console.WriteLine("Rendering " + name);
                            RasterLib.RasterApi.Renderer.RenderRectsToGrid(cellRects, grid, x * 64 + ox, y * 64, z * 64 + oz);
                        }
                    }
                }
            }

            GC.Collect();

            return grid;
        }
        static void BirdsEye(Grid grid, Grid targetGrid, int ox, int oy)
        {
            for (int y = 0; y < grid.SizeY; y++)
            {
                for (int z = 0; z < grid.SizeZ; z++)
                {
                    for (int x = 0; x < grid.SizeX; x++)
                    {
                        CellProperties cp = grid.GetProperty(x, y, z);
                        byte r, g, b, a;
                        RasterLib.RasterApi.Ulong2Rgba(cp.Rgba, out r, out g, out b, out a);
                        if (r + g + b > 10)
                        {
                            //targetGrid.Plot(x + ox, y + oy, 0, cp); 
                            grid.Plot(x, z, 0, cp);
                        }
                    }
                }
            }

            for (int y = 0; y < grid.SizeY/2; y++)
            {
                for (int x = 0; x < grid.SizeX/2; x++)
                {
                    CellProperties cp1 = grid.GetProperty(x*2, y*2, 0);
                    CellProperties cp2 = grid.GetProperty(x * 2+1, y * 2, 0);
                    if (cp1.Rgba > 0)
                        targetGrid.Plot(x + ox, y + oy, 0, cp1);
                    if (cp2.Rgba > 0)
                        targetGrid.Plot(x + ox, y + oy, 0, cp2);
                }
            }
        }
        static Grid RenderFlatGrid(Dictionary<string, string> gsa2names, Dictionary<string, RectList> name2rects, int rangeX, int rangeY, int rangeZ)
        {
            int width = rangeX * 64;
            int height = rangeZ * 64;
            Grid grid = RasterLib.RasterApi.CreateGrid(width, height, 1, 4);

            IPainter painter = RasterLib.RasterApi.Painter;
            for (int z = -rangeZ; z <= rangeZ; z++)
            {
                //for (int y = 0; y <= rangeY; y++)
                int y = 0;
                {
                    for (int x = -rangeX; x <= rangeX; x++)
                    {
                        GridSpaceAddress gsa = new GridSpaceAddress(x, y, z);
                        if (gsa2names.ContainsKey(gsa.ToString()))
                        {
                            string name = gsa2names[gsa.ToString()];
                            RectList cellRects = name2rects[name];

                            Console.WriteLine("Rendering " + name);
                            Grid tempGrid = new Grid(64, 64, 64, 4);
                            RasterLib.RasterApi.Renderer.RenderRectsToGrid(cellRects, tempGrid, 0, 0, 0);

                            BirdsEye(tempGrid, grid, (x + rangeX) * 64/2, (z + rangeZ) * 64/2);
                        }
                    }
                }
            }

            GC.Collect();

            return grid;
        }

        static void Main(string[] args)
        {
            int rangeX = 32;
            int rangeY = 1;
            int rangeZ = 25;

            SpaceLib.MegaGridClient client = new MegaGridClient("http://localhost:3838");
            Dictionary<string, string> gsa2names = client.GetNames(rangeX, rangeY, rangeZ);
            Dictionary<string, RectList> name2rects = client.Names2Rects(gsa2names);
            Console.WriteLine("Names and Rectangles resolved.");

            Console.WriteLine("Rendering net grid");
            //Grid netGrid = RenderNetGrid(gsa2names, name2rects, rangeX, rangeY, rangeZ);
            
            Console.WriteLine("Rendering isometric net grid.");
  //          Grid renderedGrid = RasterLib.RasterApi.Renderer.RenderIsometricCellsScaled(netGrid, 204, 204, 238, 0, 1, 1, "MegaGrid");
            
            Console.WriteLine("Saving final grid.");
//            GraphicsApi.SaveFlatPng("\\github\\glyphics2\\megagrid_iso.png", renderedGrid);

            Console.WriteLine("Rendering mega grid.");
            Grid grid = RenderFlatGrid(gsa2names, name2rects, rangeX, rangeY, rangeZ);
            
            Console.WriteLine("Saving final grid.");
            GraphicsApi.SaveFlatPng("\\github\\glyphics2\\megagrid_flat.png", grid);

            Console.WriteLine("Done.");
        }
    }
}



