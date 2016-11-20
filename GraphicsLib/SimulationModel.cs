using System;
using System.Collections.Generic;
using System.Threading;
//using GraphicsLib;
using GraphicsLib;
using GraphicsLib.Language;

namespace GraphicsLib.Simulator
{
    public class Avatar
    {
        public string avatarId;
        public double x, y, z;
    }

    public class SimulationModel
    {
        public List<Avatar> avatars { get; set; }
        public Grid grid { get; set; }
        public RectList rects { get; set; }

        public int[] circuitIds { get; set; }

        public void Build()
        {
            GraphicsLib.RasterApi.BuildCircuit(rects, true);

            int maxCircuitId = 0;
            foreach (Rect rect in rects)
                if (rect.Properties.CircuitIds != null)
                    foreach (int circuitId in rect.Properties.CircuitIds)
                        if (circuitId > maxCircuitId)
                            maxCircuitId = circuitId;
            circuitIds = new int[maxCircuitId];
        }
        public void DisplayCircuits()
        {
            Console.Write("[ ");
            for (int i = 0; i < circuitIds.Length; i++)
                Console.Write(circuitIds[i] + " ");
            Console.Write("] ");
        }
        public void CircuitsRefresh(int circuitId)
        {

        }
        public void IterateSimulation()
        {
            DisplayCircuits();
            //Execution of circuits
            foreach (Rect rect in rects)
            {
                if (rect.Properties.PhysicsId > 0)
                {
                    if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.Circuit)
                    {
                        Console.Write(".");
                    }
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.SensorTimerPulsar)
                    {
                        Console.Write(">P");
                        foreach (int circuitId in rect.Properties.CircuitIds)
                        {
                            Console.Write(circuitId);

                            //toggle value
                            if (circuitIds[circuitId] == 0) circuitIds[circuitId] = 1;
                            else circuitIds[circuitId] = 0;

                            CircuitsRefresh(circuitId);
                        }
                    }
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateAnd)
                        Console.Write("&");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateOr)
                        Console.Write("|");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateXor)
                        Console.Write("^");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateNand)
                        Console.Write("!&");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateNot)
                        Console.Write("!");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleGlow)
                        Console.Write("TG");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.SensorMouseClick)
                        Console.Write("MB");
                    else Console.Write("?" + (PhysicsType)rect.Properties.PhysicsId);

                    /*                    if (rect.Properties.CircuitIds != null)
                                        {
                                            Console.Write(":");
                                            foreach (int circuitId in rect.Properties.CircuitIds)
                                                Console.Write(circuitId+" ");
                                        }*/
                    Console.Write("");
                }
            }
            Console.WriteLine();
            return;
        }
    }

}
