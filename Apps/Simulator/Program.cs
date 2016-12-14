using System;
using System.Collections.Generic;
using System.Threading;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;
using GraphicsLib.Simulator;

namespace Simulator
{
    class Simulator
    {
        static void Main()
        {
            string name = "GateTimer";
            string glycFilename = "c:\\github\\glyphics2\\glyph cores\\"+name+".glyc";
            string codeString = RasterLib.RasterApi.ReadGlyc(glycFilename).Replace(';', '\n');

            Grid grid = Pivot.ToGrid(codeString);
            RectList rects = Pivot.ToRects(grid);
            //RasterLib.RasterApi.BuildCircuit(rects, true);
            
            //Console.WriteLine("Rects\n");
            //Console.WriteLine(rects);

            SimulationModel model = new SimulationModel();
            model.grid = grid;
            model.rects = rects;
            model.Build();


            Console.ReadKey();
            Simulation.RunSimulation(model, name);
        }
    }
}

