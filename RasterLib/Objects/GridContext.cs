#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;

namespace RasterLib
{
    //Implementation of GridContext, see for usage
    public class GridContext
    {
        //Actual values
        public Grid Grid { get; set; }
        public Pen Pen { get; set; }
        public List<Grid> Palettes { get; set; }
        public double[] SpawnPoint { get; set; }

        //Return Grid if within range, otherwise null
        public Grid GetPalette(int pal) { return (pal < Palettes.Count) ? Palettes[pal] : null; }

        //Constructor only
        public GridContext()
        {
            Pen = new Pen();
            Palettes = new List<Grid>();
            SpawnPoint = new double[3];
        }

        //Assignment constructor only
        public GridContext(Grid newGrid)
        {
            Grid = newGrid;
            Pen = new Pen();
            Palettes = new List<Grid>();
            SpawnPoint = new double[3];
        }

        //Add a grid to the palette
        public void AddPalette(Grid pal)
        {
            Palettes.Add(pal);
        }

        //Readable description
        public override string ToString()
        {
            return "(Grid:" + Grid + ")(Pen:" + Pen + "(Spawn:" + SpawnPoint + ")";
        }
    }
}
