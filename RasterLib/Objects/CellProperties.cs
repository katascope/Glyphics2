#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;
using System.Numerics;
using RasterLib.Utility;

namespace RasterLib
{

    /*
     * Split into 2 - first 4 bits (16 possibilities = type), last 4 bits = factor (16 types)
     * or 6 bits (64 possibilities), last 2 bits = factor (4 types)
     * 
     * These should all work in 2d as well
     */
    public enum PhysicsType
    {
        Tangible = 0, //Static-Tangible
        Intangible = 1, //Static-Intangible
        Circuit = 2,

        SensorReserved = 3,
        SensorTimerPulsar = 4,
        SensorMouseClick = 5,
        SensorTouchPlate = 6,

        FunctionToggleAlpha     = 7,

        FunctionToggleRed       = 8,
        FunctionToggleYellow    = 9,
        FunctionToggleGreen     = 10,
        FunctionToggleCyan      = 11,
        FunctionToggleBlue      = 12,
        FunctionToggleViolet    = 13,
        FunctionToggleWhite     = 14,
        FunctionToggleBlack     = 15,

        FunctionToggleSize      = 16,
        FunctionToggleGlow      = 30,

        FunctionToggleRotateX,
        FunctionToggleRotateY,
        FunctionToggleRotateZ,

        ToggleTangible,
        ToggleHue,
        EmitterTranslate,
        EmitterRotate,
        EmitterScale,

        //Gates
        GateNot=48, //Not gate, reverse value of circuit
        GateAnd = 49,
        GateOr = 50,
        GateXor = 51,
        GateNand = 52,

        //Group functions

        PlayerSlows,
        PlayerSpeeds,
        PlayerJumps,
        PlayerDies,
        PlayerLoots,

      //  Mobile,//3 bits for direction, 1 bit for ping-pong?
//        Path, //xyz1 to xyz2
  //      Magnetic
    };

    //Implementation of CellProperties, see for usage
    public class CellProperties
    {
        //Properties
        public ulong Rgba { get; set; }
        public int TrackId { get; set; }
        public byte TextureId { get; set; }
        public byte ShapeId { get; set; }
        public byte PhysicsId { get; set; }
        public byte GroupId { get; set; }
        //public byte CircuitId { get; set; }
        public List<int> CircuitIds { get; set; }

        //For Rectangles
        //TranslationOffset



        //Offset system
        // Create rectangles, then adjust them with offsets. This would allow rings within rings
        //Byte 1: X offset : signed -127 to 127
        //Byte 2: Y offset : signed -127 to 127
        //Byte 3: Z offset : signed -127 to 127
        //Byte 4: ???
        //public ulong Offsets { get; set; }

        //Neighbor system
        //Greate adjacency matrix of all rectangles
        // Then create circuit paths to represent what touches 
        // Then allow power up/energizing of those paths

        public static string GetPhysicsDescription(PhysicsType pt)
        {
            return pt.ToString();
        }

        /* Example case
         * 
         * ClickSensor connects through Circuit to ToggleTangible
         * TouchSensor connects through Circuit to Data through Circuit to ToggleTangible
         * 
         * 
         */

        //Set properties to default values
        public void Identity()
        {
            Rgba = 0xFFFFFFFF;
            TrackId = 0;
            TextureId = 0;
            ShapeId = 0;
            PhysicsId = 0;
            GroupId = 0;
        }

        //Copy properties from src to self
        public void CopyFrom(CellProperties src)
        {
            if (src == null) return;

            Rgba = src.Rgba;
            TrackId = src.TrackId;
            TextureId = src.TextureId;
            ShapeId = src.ShapeId;
            PhysicsId = src.PhysicsId;
            GroupId = src.GroupId;
            CalcUnified();
        }

        //Duplicate object
        public CellProperties Clone()
        {
            CellProperties cp = new CellProperties();
            cp.CopyFrom(this);
            return cp;
        }

        //MathCompare if two properties are equal
        public bool IsEqualTo(CellProperties asCell)
        {
            if (asCell == null) return false;

            return ((Rgba == asCell.Rgba)
                  && (TextureId == asCell.TextureId)
                  && (ShapeId == asCell.ShapeId)
                  && (GroupId == asCell.GroupId)
                  );
        }

        //Linearly interpolate between properties A and B, modulated by mux (0 to 1)
        public void Lerp(double mux, CellProperties propsA, CellProperties propsB)
        {
            if (propsA == null || propsB == null) return;
            Rgba      = MathLerper.LerpRgba(mux, propsA.Rgba, propsB.Rgba);
            TextureId = (byte)MathLerper.ThresholdAb(mux, propsA.TextureId, propsB.TextureId);
            ShapeId   = (byte)MathLerper.ThresholdAb(mux, propsA.ShapeId, propsB.ShapeId);
            PhysicsId = (byte)MathLerper.ThresholdAb(mux, propsA.PhysicsId, propsB.PhysicsId);
            GroupId   = (byte)MathLerper.ThresholdAb(mux, propsA.GroupId, propsB.GroupId);
            CalcUnified();
        }

        //Return string describing properties
        public override string ToString()
        {
            byte r, g, b, a;
            Converter.Ulong2Rgba(Rgba, out r, out g, out b, out a);
            string circuitDescription = "";

            if (CircuitIds != null)
            {
                circuitDescription = ",cid [ ";
                foreach (int cid in CircuitIds)
                    circuitDescription += cid + " ";
                circuitDescription += "] ";
            }

            return "(Cell:" + r + "," + g + "," + b + "," + a + ":"
                + "tex "+TextureId 
                + ",shp " + ShapeId
                + ",grp " + GroupId 
                + ",phy "+ PhysicsId
                + circuitDescription
                + ")";
        }

        //Calculate the unified value
        public BigInteger CalcUnified()
        {
            BigInteger unifiedValue = Rgba;

            unifiedValue |= (ulong)(ShapeId) << 32;
            unifiedValue |= (ulong)(TextureId) << 40;
            unifiedValue |= (ulong)(GroupId) << 48;
            unifiedValue |= (ulong)(PhysicsId) << 56;

            if (CircuitIds != null && CircuitIds.Count > 0)
            {
                int sum = 1;
                foreach (int circuitid in CircuitIds)
                {
                    sum = sum * circuitid * 10;
                }
                unifiedValue |= (ulong)(sum) << 64;
            }

            return unifiedValue;
        }
    }
}

