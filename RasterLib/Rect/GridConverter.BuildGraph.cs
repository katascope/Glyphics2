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
using RasterLib;

namespace RasterLib
{
    //Utility class for creating a set of rectangles from a grid, then reducing them to a minimal set
    public partial class GridConverter
    {
        private const int MaxStackDepth = 4;

        public static bool FindInList(List<List<int>> lists, int id)
        {
            foreach (List<int> list in lists)
                foreach (int i in list)
                    if (i == id) return true;
            return false;
        }

        public static bool HasPath(bool[,] graph, int i, int j, int depth)
        {
            if (graph[i, j]) //has direct path
                return true;

            if (depth > MaxStackDepth)
                return false;

            //If didn't find, then recurse
            for (int q = 0; q < graph.GetLength(0); q++)
            {
                if (graph[i, q] && HasPath(graph, q, j, depth + 1))
                        return true;
            }

            return false;
        }

        public static void DisplayAdjacencyGraph(RectList rects, bool[,] graph)
        {
            Console.WriteLine("Adjacency graph:");
            for (int i = 0; i < rects.Count; i++)
            {
                Console.Write(i + "=" + rects.GetRect(i).Properties.PhysicsId + "\t: ");
                for (int j = 0; j < rects.Count; j++)
                {
                    if (graph[i, j])
                       Console.Write(j + "=" + rects.GetRect(j).Properties.PhysicsId + " ");
                }
                Console.WriteLine();
            }
        }

        public static void DisplayRectCircuits(RectList rects)
        {
            Console.WriteLine("\nTouch Graph : Optimized list results (multiple circuit):");
            int count = 0;
            foreach (Rect rect in rects)
            {
                Console.Write(count + " : " + rect + " ");
                if (rect.Properties.CircuitIds != null)
                {
                    foreach (int id in rect.Properties.CircuitIds)
                    {
                        Console.Write(id + " ");
                    }
                }
                Console.WriteLine();
                count++;
            }
            Console.WriteLine();
        }

        public static void DisplayTouchGraph(List<List<int>> touchGraph)
        {
            Console.WriteLine("\nTouch Graph:");
            //foreach (List<int> list in touchGraph)
            for (int l = 0; l < touchGraph.Count;l++)
            {
                List<int> list = touchGraph[l];
                Console.Write(l + " : ");
                foreach (int id in list)
                {
                    Console.Write(id + " ");
                }
                Console.WriteLine();
            }
        }

        public static void DisplayCircuitIds(List<List<int>> circuitIds)
        {
            Console.WriteLine("\nCircuit Ids");
            for (int listid = 0; listid < circuitIds.Count; listid++)
            {
                Console.Write(listid + " :");
                foreach (int id in circuitIds[listid])
                    Console.Write(" " + id);
                Console.WriteLine();
            }
        }

        public static bool DirectLinkingType(PhysicsType pt1, PhysicsType pt2)
        {
            if (pt1 >= PhysicsType.GateNot || pt2 >= PhysicsType.GateNot)
                return false;
            return true;
        }

        public static bool HasPathConstrained(RectList rects, bool[,] graph, int i, int j, int depth)
        {
            if (depth > 6) return false;

            Rect rect1 = rects.GetRect(i);
            Rect rect2 = rects.GetRect(j);

            if (!DirectLinkingType((PhysicsType)rect1.Properties.PhysicsId, (PhysicsType)rect2.Properties.PhysicsId))
                return false;

            if (graph[i, j]) //direct path
                return true;

            //If didn't find, then recurse
            for (int q = 0; q < graph.GetLength(0); q++)
            {
                if (graph[i, q])
                    if (HasPathConstrained(rects, graph, q, j, depth + 1))
                        return true;
            }

            return false;
        }

        public static void AddPathsConstrained(RectList rects, bool[,] graph, List<int> list, int id)
        {
            for (int j = 0; j < graph.GetLength(0); j++)
            {
                if (HasPathConstrained(rects, graph, id, j, 0) && !list.Contains(j))
                    list.Add(j);
            }
        }

        public static int FindCircuitIdFor(int id, List<List<int>> touchGraph, List<List<int>> circuitIds)
        {
            for (int listid = 0; listid < touchGraph.Count;listid++ )
            {
                foreach (int subid in touchGraph[listid])
                {
                    if (subid == id)
                        return circuitIds[listid][0];
                }
            }
            return 0;
        }

        public static List<List<int>> CreateTouchGraphFromRects(RectList rects)
        {
            var touchGraph = new List<List<int>> {new List<int>()};
            for (int i = 0; i < rects.Count; i++)
            {
                if (rects.GetRect(i).Properties.PhysicsId == 0)
                    touchGraph[0].Add(i);
            }
            return touchGraph;
        }

        public static void CalculateTouchGraphPaths(bool[,] graph, RectList rects, List<List<int>> touchGraph)
        {
            for (int i = 0; i < graph.GetLength(0); i++)
            {
                if (!FindInList(touchGraph, i))
                {
                    List<int> newList = new List<int> {i};
                    AddPathsConstrained(rects, graph, newList, i);
                    touchGraph.Add(newList);
                }
            }
        }
        public static void AssignCircuitIdsToNonGates(RectList rects, List<List<int>> touchGraph, List<List<int>> circuitIds)
        {
            int circuitId = 0;
            var listid = 0;
            foreach (List<int> list in touchGraph)
            {
                circuitIds.Add(new List<int>());
                if (list.Count > 0)
                {
                    if (rects.GetRect(list[0]).Properties.PhysicsId >= (byte)PhysicsType.GateNot)
                    {
                    }
                    else
                    {
                        //Make sure that we don't assign circuitid 0 if circuit type
                        if (rects.GetRect(list[0]).Properties.PhysicsId > 0 && circuitId == 0)
                            circuitId = 1;
                        circuitIds[listid].Add(circuitId);
                        circuitId++;
                    }
                }
                listid++;
            }
        }

        public static void AssignCircuitIdsToGates(bool[,] graph, RectList rects, List<List<int>> touchGraph, List<List<int>> circuitIds)
        {
            int listid = 0;
            foreach (List<int> list in touchGraph)
            {
                if (list.Count > 0 && rects.GetRect(list[0]).Properties.PhysicsId >= (byte)PhysicsType.GateNot)
                {
                    Console.WriteLine("GATE " + listid);
                    int id = list[0];

                    for (int i = 0; i < graph.GetLength(0); i++)
                    {
                        if (graph[id, i])
                        {
                            int cid = FindCircuitIdFor(i, touchGraph, circuitIds);
                            Console.WriteLine(" connects to " + i + " cid=" + cid);
                            circuitIds[listid].Add(cid);
                        }
                    }
                }
                listid++;
            }
        }
        public static void AssignCircuitIdsToRects(RectList rects, List<List<int>> touchGraph, List<List<int>> circuitIds)
        {
            int listid = 0;
            foreach (List<int> list in touchGraph)
            {
                foreach (int id in list)
                {
                    if (circuitIds[listid][0] > 0)
                    {
                        rects.GetRect(id).Properties.CircuitIds = new List<int>();
                        foreach (int cid in circuitIds[listid])
                        {
                            rects.GetRect(id).Properties.CircuitIds.Add(cid);
                        }
                    }
                }
                listid++;
            }
        }

        /* Algorithm:
         *  1) Calculate adjacency graph from touching rectangles
         *  2) Prep lists by putting all physics type of 0 into slot 0
         *  3) From adjGraph, calculate touchGroup of circuits/sensors/effectors, isolating gates
         *  4) Assign circuit ID's to non-gate wires
         *  5) Assign circuit ID's to gates based on touching wires
         *  6) Assign circuit ID's to rects
         */
        public static void BuildCircuit(RectList rects, bool verbose)
        {
            //1) Calculate adjacency graph from touching rectangles
            bool[,] graph = rects.BuildAdjacencyGraph();
            if (verbose) DisplayAdjacencyGraph(rects, graph);

            //2) Prep lists by putting all physics type of 0 into slot 0
            if (verbose) Console.WriteLine("Adding physics ids to touchGraph");
            List<List<int>> touchGraph = CreateTouchGraphFromRects(rects);

            //3) From adjGraph, calculate touchGroup of circuits/sensors/effectors, isolating gates
            if ( verbose) Console.WriteLine("Calculating touchGraph paths");
            CalculateTouchGraphPaths(graph, rects, touchGraph);
            if (verbose) DisplayTouchGraph(touchGraph);

            //4) Assign circuit ID's to non-gate wires
            if (verbose) Console.WriteLine("\nAssigning circuit ids to non-gate wires.");
            List<List<int>> circuitIds = new List<List<int>>();
            AssignCircuitIdsToNonGates(rects, touchGraph, circuitIds);

            //5) Assign circuit ID's to gates based on touching wires
            if (verbose) Console.WriteLine("\nCircuit Ids-GATE");
            AssignCircuitIdsToGates(graph, rects, touchGraph, circuitIds);
            if (verbose) DisplayCircuitIds(circuitIds);

            //6) Assign circuit ID's to rects
            if (verbose) Console.WriteLine("\nAssigning to rects");
            AssignCircuitIdsToRects(rects, touchGraph, circuitIds);
            if (verbose) DisplayRectCircuits(rects);
        }
    }
}
