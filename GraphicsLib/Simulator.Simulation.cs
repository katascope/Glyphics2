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
            Thread.Sleep(50);
            _frameCount++;
            string desc = RasterLib.RasterApi.Renderer.GridTo3DDescription(grid, (int)_avatar.x, (int)_avatar.y, (int)_avatar.z);
            Console.Clear();
            Console.Write( desc + " Frame=" + _frameCount + " Avatar=" + _avatar.x + "," + _avatar.y + "," + _avatar.z);
        } 
        public static void RunSimulation(SimulationModel model, string name)
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
                
                IPainter painter = RasterLib.RasterApi.Painter;
                GridContext gridContext = new GridContext();
                gridContext.Grid = model.grid;
                painter.DrawClear(gridContext);
                RasterLib.RasterApi.Renderer.RenderRectsToGrid(model.rects, model.grid);
                DisplayGrid(model.grid, _avatar);
                Console.Write("\n{0} ", name);
                model.IterateSimulation(name);
            }
        }
    }
}
