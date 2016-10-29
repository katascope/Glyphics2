using System;
using System.Threading;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;

namespace Simulator
{
    class Avatar
    {
        public double x, y, z;
    }

    class Simulator
    {
        static readonly Avatar _avatar = new Avatar();
        static char _lastKey = ' ';
        static int _frameCount;

        static void BoundaryInhibit(Grid grid, Avatar avatar)
        {
            if (avatar.x < 0) avatar.x = 0;
            if (avatar.x > grid.SizeX - 1) avatar.x = grid.SizeX - 1;
            if (avatar.y < 0) avatar.y = 0;
            if (avatar.y > grid.SizeY - 1) avatar.y = grid.SizeY - 1;
            if (avatar.z < 0) avatar.z = 0;
            if (avatar.z > grid.SizeZ - 1) avatar.z = grid.SizeZ - 1;
        }

        static void DisplayGrid(Grid grid)
        {
            _frameCount++;
            string desc = RasterLib.RasterApi.Renderer.GridTo3DDescription(grid, (int)_avatar.x, (int)_avatar.y, (int)_avatar.z);
            Console.Clear();
            Console.Write(desc + " Frame=" + _frameCount + " Key=" + _lastKey+ " Avatar="+_avatar.x+","+_avatar.y+","+_avatar.z);
            Thread.Sleep(50);
        }
        static void Simulate(Grid grid)
        {
            BoundaryInhibit(grid, _avatar);
        }
        static void Main()
        {
            string code =
                @"Simulation,

#Spawn point
Spawn 2 2 2

#Size of Grid
Size3D1 32 4 16;

#White border around ground's edge
PenColorD1 255;FillRect 0 0 0 31 31 15;
PenColorD1 0;FillRect 1 1 1 30 30 14;

PenColorD1 127;
Stairs 5 0 2 5 5 7 3 1 1

";
            //Glyphics codeString object
            Code rasterCode =RasterLib.RasterApi.CreateCode(code);

            //Save final result to PNG file

            Grid grid =RasterLib.RasterApi.CodeToGrid(rasterCode);
//            RectList rects = GraphicsApi.GridToRects(grid);
            //Scene scene = GraphicsApi.RectsToScene(rects);
            
            //Execute, render, and save to png
//            GraphicsApi.SaveFlatPng(filename,
  //              RasterLib.RasterApi.Renderer.RenderObliqueCells(
    //                RasterApi.CodeToGrid(rasterCode)));

            bool done = false;
            while (!done)
            {
                if (Console.KeyAvailable)
                {
                    ConsoleKeyInfo key = Console.ReadKey();
                    _lastKey = key.KeyChar;

                    if (_lastKey == 27) done = true;
                    
                    switch (_lastKey)
                    {
                        case 'a': _avatar.x--; break;
                        case 'd': _avatar.x++; break;
                        case 'w': _avatar.z++; break;
                        case 's': _avatar.z--; break;
                        case 'e': _avatar.y++; break;
                        case 'q': _avatar.y--; break;
                    }
                }
                Simulate(grid);
                DisplayGrid(grid);
            }
        }
    }
}
