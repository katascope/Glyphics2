using System;
using System.Collections.Generic;
using System.Threading;
using RasterLib;
using GraphicsLib;
using RasterLib.Language;

namespace GraphicsLib.Simulator
{
    public class Simulation
    {
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

        static void DisplayGrid(Grid grid, Avatar _avatar)
        {
            _frameCount++;
            string desc = RasterLib.RasterApi.Renderer.GridTo3DDescription(grid, (int)_avatar.x, (int)_avatar.y, (int)_avatar.z);
            Console.Clear();
            Console.Write(desc + " Frame=" + _frameCount + " Avatar=" + _avatar.x + "," + _avatar.y + "," + _avatar.z);
            Thread.Sleep(50);
        }
        public static void RunSimulation(SimulationModel model)
        {
            Avatar _avatar = new Avatar();
            char _lastKey = ' ';

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
                BoundaryInhibit(model.grid, _avatar);
                // DisplayGrid(model.grid);
                model.IterateSimulation();
            }
        }
    }
}
