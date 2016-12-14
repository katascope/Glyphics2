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
        public List<Tuple<int, int, int>> circuitModel { get; set; }

        public int[] circuitStates { get; set; }

        public void Build()
        {
            RasterLib.RasterApi.BuildCircuit(rects, true);

            int maxCircuitId = 0;
            foreach (Rect rect in rects)
                if (rect.Properties.CircuitIds != null)
                    foreach (int circuitId in rect.Properties.CircuitIds)
                        if (circuitId > maxCircuitId)
                            maxCircuitId = circuitId;
            circuitStates = new int[maxCircuitId];

            CalculateCircuitModel(rects);
        }
        public void DisplayCircuitStates()
        {
            if (circuitStates.Length > 0)
            {
                Console.Write("[");
                for (int i = 0; i < circuitStates.Length; i++)
                    Console.Write((circuitStates[i] == 0) ? "-" : "+");
                Console.Write("] ");
            }
        }
        public void CalculateCircuitModel(RectList rects)
        {
            circuitModel = new List<Tuple<int, int, int>>();

            for (int id = 0; id < rects.Count; id++)
            {
                Rect rect = rects.GetRect(id);
                int pid = id + 1;
                if (rect.Properties.CircuitIds != null && rect.Properties.CircuitIds.Count > 0)
                {
                    Console.WriteLine("Circuit Rect " + pid + " : " + rect);
                    foreach (int cid in rect.Properties.CircuitIds)
                    {
                        Console.WriteLine(" CID " + cid);
                        circuitModel.Add(new Tuple<int, int, int>(pid, rect.Properties.PhysicsId, cid));
                    }
                }
            }
        }
        public void DisplayCircuits()
        {
            //Execution of circuits
            int pid = 0;
            foreach (Rect rect in rects)
            {
                //Tuple<int, int, int> data = circuitModel[pid];
                pid++;
                if (rect.Properties.PhysicsId > 0)
                {
                    bool show = true;
                    if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.Circuit)
                    {
                        show = false;
                        //Console.Write(".");
                    }
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.SensorTimerPulsar)
                    {
                        Console.Write("P");
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
                        Console.Write("G");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.SensorMouseClick)
                        Console.Write("M");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleRed)
                        Console.Write("R");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleYellow)
                        Console.Write("Y");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleGreen)
                        Console.Write("G");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleCyan)
                        Console.Write("C");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleBlue)
                        Console.Write("B");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleViolet)
                        Console.Write("V");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleWhite)
                        Console.Write("W");
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleBlack)
                        Console.Write("B");
                    else Console.Write("?" + (PhysicsType)rect.Properties.PhysicsId);

                    if (show)
                    {
                        Console.Write("(");
                        foreach (int circuitId in rect.Properties.CircuitIds)
                        {                            
                            int cid = circuitId - 1;
                            Console.Write(cid);
                            Console.Write((circuitStates[cid] == 0) ? "-" : "+");
                        }
                        Console.Write(") ");
                    }
                }
            }
            //Console.WriteLine();
        }
        public void Gate(Rect rect)
        {
            int cid1 = rect.Properties.CircuitIds[0] - 1;
            int cid2 = rect.Properties.CircuitIds[1] - 1;
            int v1 = circuitStates[cid1];
            int v2 = circuitStates[cid2];

            if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateNot)
            {
                circuitStates[cid2] = (v1 > 0) ? 0 : 1;
                return;
            }

            int cid3 = rect.Properties.CircuitIds[2] - 1;
            int vOut = circuitStates[cid3];

            if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateAnd) circuitStates[cid3] = (v1 > 0 && v2 > 0) ? 1 : 0;
            if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateOr) circuitStates[cid3] = (v1 > 0 || v2 > 0) ? 1 : 0;
            if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateXor) circuitStates[cid3] = ((v1 > 0 || v2 > 0) && (v1 != v2)) ? 1 : 0;
            if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateNand) circuitStates[cid3] = (v1 > 0 && v2 > 0) ? 1 : 0;

        }
        public void IterateSimulation(string name)
        {
            DisplayCircuitStates();
            DisplayCircuits();
            
            //Execution of circuits
            int pid = 0;
            foreach (Rect rect in rects)
            {
                //Tuple<int, int, int> data = circuitModel[pid];
                pid++;
                if (rect.Properties.PhysicsId > 0)
                {
                    if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.Circuit)
                    {
                        //Console.Write(".");
                    }
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.SensorTimerPulsar)
                    {
                        foreach (int circuitId in rect.Properties.CircuitIds)
                        {
//                            Console.Write(circuitId);

                            //toggle value
                            int cid = circuitId - 1;
                            if (circuitStates[cid] == 0) circuitStates[cid] = 1;
                            else circuitStates[cid] = 0;
                        }
                    }
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateAnd)
                        Gate(rect);
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateOr)
                        Gate(rect);
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateXor)
                        Gate(rect);
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateNand)
                        Gate(rect);
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.GateNot)
                        Gate(rect);
                    else if ((PhysicsType)rect.Properties.PhysicsId == PhysicsType.FunctionToggleRed)
                    {
                        int cid1 = rect.Properties.CircuitIds[0] - 1;
                        int v1 = circuitStates[cid1];
                        if (v1 > 0)
                            rect.Properties.Rgba = 0x111111FF;
                        else
                            rect.Properties.Rgba = 0x11111111;
                    }
                }
            }

            pid = 0;
/*            Console.WriteLine("\nRects\n------------------------");
            foreach (Rect rect in rects)
            {
                pid++;
                if (rect.Properties.PhysicsId > 0)
                {
                    string serialized2 = "" 
                        + pid + " "
                        + rect.Properties.Rgba + " "
                        + rect.Pt1[0] + ","
                        + rect.Pt1[1] + ","
                        + rect.Pt1[2]
                        + ":"
                        + rect.Pt2[0] + ","
                        + rect.Pt2[1] + ","
                        + rect.Pt2[2]
                        ;
                    Console.WriteLine(serialized2);
                }
            }*/
        }
        public void CircuitsRefresh(int circuitId)
        {
            int i = 0;
            int end = circuitStates.Length;

            for (; i < end; i ++)
            {
                int cid = circuitStates[i];
                /*integer cid = llList2Integer(circuits, i+2);
                if (cid == circuitId)
                {
                    integer id = llList2Integer(circuits, i+0);
                    integer physicsId = llList2Integer(circuits, i+1);
                    integer value = llList2Integer(circuitStates, circuitId);
                    //llOwnerSay("CIDHIT pid="+(string)(id)+" cid="+(string)cid);
            
                    if (physicsId == 48) //circuit
                }*/
            }
        }
    }            

}



/*

///////////////////////////// Circuits /////////////////////////////
CircuitGate(integer circuitId, integer id,integer type)
{
    integer outputCircuitId = GetCircuitID(id, 2, 0);
    if (circuitId != outputCircuitId)
    {
        integer circuitId1 = GetCircuitID(id,0, 0);
        integer value1 = llList2Integer(circuitStates, circuitId1);
        integer circuitId2 = GetCircuitID(id,1, 0);
        integer value2 = llList2Integer(circuitStates, circuitId2);

        if (type == 1) //And
        {
            if (value1 > 0 && value2 > 0) CircuitSet(outputCircuitId, 1);
            else CircuitSet(outputCircuitId, 0);
        }
        else if (type == 2) //Or
        {
            if (value1 > 0 || value2 > 0) CircuitSet(outputCircuitId, 1);
            else CircuitSet(outputCircuitId, 0);
        }
        else if (type == 3)//Xor
        {
            if ((value1 > 0 || value2 > 0) && (value1 != value2)) CircuitSet(outputCircuitId, 1);
            else CircuitSet(outputCircuitId, 0);
        }
        else if (type == 4)//Nand
        {
            if (value1 > 0 && value2 > 0) CircuitSet(outputCircuitId, 0);
            else CircuitSet(outputCircuitId, 1);
        }
        
        if (type >=0 && type <= 4)
        {
//            llOwnerSay("Refresh to outp="+(string)outputCircuitId);
            CircuitsRefresh(outputCircuitId);
        }
    }
}

CircuitsRefresh(integer circuitId)
{
    integer i = 0;
    integer end = llGetListLength(circuits);

    for (; i<end; i+=3)
    {
        integer cid = llList2Integer(circuits, i+2);
        if (cid == circuitId)
        {
            integer id = llList2Integer(circuits, i+0);
            integer physicsId = llList2Integer(circuits, i+1);
            integer value = llList2Integer(circuitStates, circuitId);
            //llOwnerSay("CIDHIT pid="+(string)(id)+" cid="+(string)cid);
            
            if (physicsId == 48) //circuit
            {
                integer outputCircuitId = GetCircuitID(id,1, 0);
                if (circuitId != outputCircuitId)
                {
                    if (value > 0) CircuitSet(outputCircuitId, 0);
                    else CircuitSet(outputCircuitId, 1);  
                                          
                    CircuitsRefresh(outputCircuitId);
                }
            }
            else if (physicsId == 49) { CircuitGate(circuitId, id,1); } //AND
            else if (physicsId == 50) { CircuitGate(circuitId, id,2); } //OR
            else if (physicsId == 51) { CircuitGate(circuitId, id,3); } //XOR
            else if (physicsId == 52) { CircuitGate(circuitId, id,4); } //NAND
            else if (physicsId == 2) //circuit 
            {
                float glow = 0;
                if (value>0)
                {
                    glow = 0.05;
                    vector rgb = llList2Vector(llGetLinkPrimitiveParams(PID2CHILD(id),[PRIM_COLOR, ALL_SIDES]),0);
                    llSetLinkPrimitiveParamsFast(PID2CHILD(id),[
                        PRIM_FULLBRIGHT, ALL_SIDES, TRUE,
                        PRIM_POINT_LIGHT, TRUE, rgb, 0.1, 10.0, 0.6]);
                }
                else
                {
                    glow = 0.0;
                    llSetLinkPrimitiveParamsFast(PID2CHILD(id), [
                        PRIM_FULLBRIGHT, ALL_SIDES, FALSE,
                        PRIM_POINT_LIGHT, FALSE, ZERO_VECTOR, 1.0, 10.0, 0.6]);
                }

                llSetLinkPrimitiveParamsFast(PID2CHILD(id),[PRIM_GLOW,ALL_SIDES,glow]);
            }
            else if (physicsId == 7) //toggle visible             
            {
                //llOwnerSay("TV("+(string)id+" "+(string)circuitId+") ");
                float a = 1;
                if (value>0.75) a = 0.75;
                else a = 1;
                llSetLinkAlpha(PID2CHILD(id), a, ALL_SIDES);
            }            
            else if (physicsId == 30) //toggle glow
            {
                //llOwnerSay("TV("+(string)id+" "+(string)circuitId+") ");
                float glow = 0;
                if (value > 0)
                {
                    glow = 0.2;
                    vector rgb = llList2Vector(llGetLinkPrimitiveParams(PID2CHILD(id),[PRIM_COLOR, ALL_SIDES]),0);
                    llSetLinkPrimitiveParamsFast(PID2CHILD(id),[
                        PRIM_FULLBRIGHT, ALL_SIDES, TRUE,
                        PRIM_POINT_LIGHT, TRUE, rgb, 1.0, 10.0, 0.6]);
                }
                else
                {
                    glow = 0.0;
                    llSetLinkPrimitiveParamsFast(PID2CHILD(id), [
                        PRIM_FULLBRIGHT, ALL_SIDES, FALSE,
                        PRIM_POINT_LIGHT, FALSE, ZERO_VECTOR, 1.0, 10.0, 0.6]);
                }
                llSetLinkPrimitiveParamsFast(PID2CHILD(id),[PRIM_GLOW,ALL_SIDES,glow]);
            }            
            else if (physicsId == 8)  { ToggleColor(PID2CHILD(id), value, <1.0, 0.1, 0.1>); } //red
            else if (physicsId == 9)  { ToggleColor(PID2CHILD(id), value, <1.0, 1.0, 0.1>); } //yellow
            else if (physicsId == 10) { ToggleColor(PID2CHILD(id), value, <0.1, 1.0, 0.1>); } //green
            else if (physicsId == 11) { ToggleColor(PID2CHILD(id), value, <0.1, 1.0, 1.0>); } //cyan
            else if (physicsId == 12) { ToggleColor(PID2CHILD(id), value, <0.1, 0.1, 1.0>); } //blue
            else if (physicsId == 13) { ToggleColor(PID2CHILD(id), value, <1.0, 0.1, 1.0>); } //violet
            else if (physicsId == 14) { ToggleColor(PID2CHILD(id), value, <1.0, 1.0, 1.0>); } //white
            else if (physicsId == 15) { ToggleColor(PID2CHILD(id), value, <0.1, 0.1, 0.1>); } //black
            else if (physicsId == 16) //toggle size
            {
                vector size = llList2Vector(llGetLinkPrimitiveParams(PID2CHILD(id),[PRIM_SIZE]),0);
                vector defaultSize = GetPrimRecord(PID2CHILD(id),2);
                if (value > 0)
                    llSetLinkPrimitiveParamsFast(PID2CHILD(id),[PRIM_SIZE, <0.001,0.001,0.001>]);
                else
                    llSetLinkPrimitiveParamsFast(PID2CHILD(id),[PRIM_SIZE, defaultSize]);
            }
        }
    }
}
*/


            /*
[23:03:31] ggMatrix-Vernacular v1.208: Starting at: 8
[23:03:35] ggMatrix-Vernacular v1.208: Energizing circuits
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=1,phy=5,cid=1
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=2,phy=2,cid=1
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=3,phy=2,cid=1
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=4,phy=2,cid=1
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=5,phy=49,cid=1
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=5,phy=49,cid=2
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=5,phy=49,cid=3
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=6,phy=4,cid=2
[23:03:36] ggMatrix-Vernacular v1.208: Circuit pid=7,phy=8,cid=3
[23:03:36] ggMatrix-Vernacular v1.208: Done : 2 lines, 7 prims, 3 circuits, 9142 free             */