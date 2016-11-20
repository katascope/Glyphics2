#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;
using GraphicsLib.Utility;
using GraphicsLib;

namespace GraphicsLib
{
    //Utility class for creating a set of rectangles from a grid, then reducing them to a minimal set
    public partial class GridConverter
    {
        //Simple float comparison
        private static bool AreEqual(double v1, double v2)
        {
            return Compare.DoublesAreEqual(v1, v2);
        }

        //Merge or add rectangle into building buffer of rectangles
        //May (hopefully will) extend rectangles already in buffer that it touches
        private static void MergedAddAabb(ref List<Rect> aabbs, Rect aabb)
        {
            foreach (Rect aabbA in aabbs)
            {
                if (AreEqual(aabbA.Pt1[0] , aabb.Pt1[0])  //CompareDoublesAreEqual X start location
                  && AreEqual(aabbA.Pt2[0] ,aabb.Pt2[0]) //CompareDoublesAreEqual X end location
                  && ((AreEqual(aabbA.Pt1[2] ,aabb.Pt1[2])
                      && AreEqual(aabbA.Pt2[2], aabb.Pt2[2])
                      && AreEqual(aabbA.Pt2[1], aabb.Pt1[1]))
                      || (AreEqual(aabbA.Pt1[1], aabb.Pt1[1]) && AreEqual(aabbA.Pt2[1], aabb.Pt2[1]) && AreEqual(aabbA.Pt2[2], aabb.Pt1[2])))
                  && ( (aabbA.Properties.Rgba == aabb.Properties.Rgba)
                   && (aabbA.Properties.TextureId == aabb.Properties.TextureId)
                   && (aabbA.Properties.ShapeId == aabb.Properties.ShapeId)
                   && (aabbA.Properties.GroupId == aabb.Properties.GroupId)
                   && (aabbA.Properties.PhysicsId == aabb.Properties.PhysicsId)
                   //&& (aabbA.Properties.CircuitId == aabb.Properties.CircuitId)
                   ))
                {
                 //   aabbA.Pt2.CopyFrom(aabb.Pt2); //Merge A & B by extending far corner
                    aabbA.Pt2[0] = aabb.Pt2[0];
                    aabbA.Pt2[1] = aabb.Pt2[1];
                    aabbA.Pt2[2] = aabb.Pt2[2];
                    return;//and return
                }
            }
            //otherwise add as normal
            aabbs.Add(aabb);
        }

        //Compact all rectangles on a height/depth axis
        private static void RunLengthReduceXy(ref List<Rect> aabbs, Grid grid, int height, int z)
        {
            CellProperties lastProperties = new CellProperties();
            int runLength = 1;
            int runStart = 1;
            int sizeX = grid.SizeX;

            for (int x = 0; x < sizeX; x++)
            {
                CellProperties currProperties = grid.GetProperty(x, height, z);

                if (currProperties.Rgba == 0)//Now in void space
                {
                    if ((currProperties.Rgba != lastProperties.Rgba)  || (currProperties.PhysicsId != lastProperties.PhysicsId)) //If last wasn't void space, then save the RLE
                    {
                        MergedAddAabb(ref aabbs, new Rect(runStart, height, z, runStart + runLength, height + 1, z + 1, lastProperties));
                        runLength = 1;
                        lastProperties = currProperties;
                    }
                }
                else if ((currProperties.Rgba != lastProperties.Rgba) || (currProperties.PhysicsId != lastProperties.PhysicsId)) //Something changed
                {
                    if ((lastProperties.Rgba != 0)) //something turning to something else
                    {
                        MergedAddAabb(ref aabbs, new Rect(runStart, height, z, runStart + runLength, height + 1, z + 1, lastProperties));
                        runLength = 1;
                    }
                    runStart = x;
                    lastProperties = currProperties;
                }
                else runLength++;//CompareDoublesAreEqual properties as before, so increase RLE count
            } 


            //Add tail end
            if (lastProperties.Rgba != 0)
            {
                MergedAddAabb(ref aabbs, new Rect(runStart, height, z, runStart + runLength, height + 1, z + 1, lastProperties));
            }
        }

        //Compact all rectangles along XY axis
        private static void RunLengthReduceOnXy(ref List<Rect> aabbs, Grid grid)
        {
            for (int y = 0; y < grid.SizeY; y++)
                for (int z = 0; z < grid.SizeZ; z++)
                    RunLengthReduceXy(ref aabbs, grid, y, z);
        }

        //Apply an arbitrary AABB reducing function delegate
        // ASSUMES all AABB already have & maintain min-maxed corners
        private static void ReduceAabb(ref List<Rect> aabbs)
        {
            //Iterate through list of AABBs..
            for (int a = 0; a < aabbs.Count; a++)
            {
                //..comparing against other AABBs that could be mergeable
                for (int b = a + 1; b < aabbs.Count; b++)
                {
                    Rect aabbA = aabbs[a];
                    Rect aabbB = aabbs[b];

                    if (AreEqual(aabbA.Pt1[0] , aabbB.Pt1[0])  //CompareDoublesAreEqual X start location
                      && AreEqual(aabbA.Pt2[0] , aabbB.Pt2[0]) //CompareDoublesAreEqual X end location
                      && ((AreEqual(aabbA.Pt1[2] , aabbB.Pt1[2]) && AreEqual(aabbA.Pt2[2] , aabbB.Pt2[2]) && AreEqual(aabbA.Pt2[1] , aabbB.Pt1[1]))
                      || (AreEqual(aabbA.Pt1[1] , aabbB.Pt1[1]) && AreEqual(aabbA.Pt2[1] , aabbB.Pt2[1]) && AreEqual(aabbA.Pt2[2] , aabbB.Pt1[2])))
                      && ((aabbA.Properties.Rgba == aabbB.Properties.Rgba)
                       && (aabbA.Properties.TextureId == aabbB.Properties.TextureId)
                       && (aabbA.Properties.ShapeId == aabbB.Properties.ShapeId)
                       && (aabbA.Properties.GroupId == aabbB.Properties.GroupId)
                       && (aabbA.Properties.PhysicsId == aabbB.Properties.PhysicsId)
                       //&& (aabbA.Properties.CircuitId == aabbB.Properties.CircuitId)
                        ))
                    {
                        //aabbA.pt2.CopyFrom(aabbB.pt2);  //Merge A & B by extending far corner
                        aabbA.Pt2[0] = aabbB.Pt2[0];
                        aabbA.Pt2[1] = aabbB.Pt2[1];
                        aabbA.Pt2[2] = aabbB.Pt2[2];
                        aabbs.Remove(aabbB);            //Remove redundant AABB
                        b--;                            //Decrement so none are skipped
                    }
                }
            }
        }

        //Convert a raster grid to a minimal set of AABB
        // Input: Grid of 1d/2d/3d raster blocks(voxels)
        // Output: List of axis-aligned bounding boxes(AABB)
        // Algorithm: See steps 1-2
        private static IEnumerable<Rect> GridToAabb(Grid grid)
        {
            var aabbs = new List<Rect>();
            //Step 1. Convert grid to set of AABB by Run Length Encoding on X
            RunLengthReduceOnXy(ref aabbs, grid); //Does not encode voidspace

            //Step 2. Reduce set by large amount with YZ reduction
            ReduceAabb(ref aabbs);

            return aabbs;
        }

        //Convert Grid into minimal/optimal List of rectangles
        public static RectList GridToRects(Grid grid)
        {
            IEnumerable<Rect> rects = GridToAabb(grid);
            RectList rectList = new RectList();

            foreach (Rect rect in rects)
                rectList.AddRect(rect);

            rectList.SizeX = grid.SizeX;
            rectList.SizeY = grid.SizeY;
            rectList.SizeZ = grid.SizeZ;

            return rectList;
        }
    }
}
