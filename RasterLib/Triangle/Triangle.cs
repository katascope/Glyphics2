#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using RasterLib.Utility;
using RasterLib;

namespace RasterLib
{
    //Implementation of Triangle, see interface for general usage
    public class Triangle
    {
        //Properties of triangle
        public CellProperties Properties { get; set; }

        //Actual vertex information
        public float[] Normal { get; private set; }

        //Three points
        public float[] Vertex1 { get; private set; }
        public float[] Vertex2 { get; private set; }
        public float[] Vertex3 { get; private set; }

        //Vectors
        public float[] TexCoords1 { get; private set; }
        public float[] TexCoords2 { get; private set; }
        public float[] TexCoords3 { get; private set; }

        public override string ToString()
        {
            string str = "";
            str += Vertex1[0] + "," + Vertex1[1] + "," + Vertex1[2] +" : ";
            str += Vertex2[0] + "," + Vertex2[1] + "," + Vertex2[2] + " : ";
            str += Vertex3[0] + "," + Vertex3[1] + "," + Vertex3[2] + " : ";
            return str;
        }
        

        //Basic constructor
        public Triangle()
        {
            Allocate();
        }
        
        //Private allocate
        private void Allocate()
        {
            Normal = new float[3];// new Float3();
            Vertex1 = new float[3];//new Float3();
            Vertex2 = new float[3];//new Float3();
            Vertex3 = new float[3];//new Float3();

            TexCoords1 = new float[2];// new Tuple<float, float>(0, 0);//new Float2();
            TexCoords2 = new float[2];//new Tuple<float, float>(0, 0);//new Float2();
            TexCoords3 = new float[2];//new Tuple<float, float>(0, 0);//new Float2();
        }

        //Assignment normal constructor
        public Triangle(float nx, float ny, float nz)
        {
            Allocate();

            Normal[0] = nx;
            Normal[1] = ny;
            Normal[2] = nz;
        }

        //Assignment constructor
        public Triangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3)
        {
            Allocate();

            SetTriangle(x1, y1, z1, x2, y2, z2, x3, y3, z3);
        }

        //Basic assignment
        public void SetTriangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3)
        {
            Vertex1[0] = x1;
            Vertex1[1] = y1;
            Vertex1[2] = z1;

            Vertex2[0] = x2;
            Vertex2[1] = y2;
            Vertex2[2] = z2;

            Vertex3[0] = x3;
            Vertex3[1] = y3;
            Vertex3[2] = z3;

            CalcNormal();
        }

        //Full assignment 
        public void SetTriangle(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3,
            float t1X, float t1Y, float t2X, float t2Y, float t3X, float t3Y)
        {
            SetTriangle(x1,y1,z1,x2,y2,z2,x3,y3,z3);
        }

        //Calculate the normal of a triangle. It's "useful"
        public void CalcNormal()    			    // Calculates Normal For A Quad Using 3 Points
        {
            var v1 = new float[3];
            var v2 = new float[3];				    // Vector 1 (x,y,z) & Vector 2 (x,y,z)
            const int x = 0;						// Define X Coord
            const int y = 1;						// Define Y Coord
            const int z = 2;						// Define Z Coord

            // Finds The Vector Between 2 Points By Subtracting
            // The x,y,z Coordinates From One Point To Another.

            // Calculate The Vector From Point 1 To Point 0
            v1[x] = Vertex1[0] - Vertex2[0];					// Vector 1[0]=Vertex[0][0]-Vertex[1][0]
            v1[y] = Vertex1[1] - Vertex2[1];					// Vector 1[1]=Vertex[0][1]-Vertex[1][1]
            v1[z] = Vertex1[2] - Vertex2[2];					// Vector 1[2]=Vertex[0][1]-Vertex[1][2]
            // Calculate The Vector From Point 2 To Point 1
            v2[x] = Vertex2[0] - Vertex3[0];					// Vector 2[0]=Vertex[0][0]-Vertex[1][0]
            v2[y] = Vertex2[1] - Vertex3[1];					// Vector 2[1]=Vertex[0][1]-Vertex[1][1]
            v2[z] = Vertex2[2] - Vertex3[2];					// Vector 2[2]=Vertex[0][2]-Vertex[1][2]
            // Compute The Cross Product To Give Us A Surface Normal
            Normal[0] = (v1[y] * v2[z] - v1[z] * v2[y]);				// Cross Product For Y - Z
            Normal[1] = (v1[z] * v2[x] - v1[x] * v2[z]);				// Cross Product For X - Z
            Normal[2] = (v1[x] * v2[y] - v1[y] * v2[x]);				// Cross Product For X - Y

            ReduceToUnit();						    // Normalize The Vectors
        }

        //Reduce a normal vector to a unit vector
        public void ReduceToUnit()                  // Reduces A Normal Vector (3 Coordinates)
        {                                           // To A Unit Normal Vector With A Length Of One.
            // Holds Unit Length
            var length = (float)Math.Sqrt((Normal[0] * Normal[0]) + (Normal[1] * Normal[1]) + (Normal[2] * Normal[2]));

            if ((length <= 0.01f)&&(length >= 0))    // Prevents Divide By 0 Error By Providing
                length = 1.00f;                      // An Acceptable Value For Vectors To Close To 0.

            Normal[0] /= length;                   // Dividing Each Element By
            Normal[1] /= length;                   // The Length Results In A
            Normal[2] /= length;                   // Unit Normal Vector.
        }

        //Transfomr:Translate - relative not absolute
        public void Translate(float tx, float ty, float tz)
        {
            Vertex1[0] += tx; Vertex1[1] += ty; Vertex1[2] += tz;
            Vertex2[0] += tx; Vertex2[1] += ty; Vertex2[2] += tz;
            Vertex3[0] += tx; Vertex3[1] += ty; Vertex3[2] += tz;
            CalcNormal();
        }

        //Transform:RotateX in degrees not radians
        public void RotateX(float angle)
        {
            float y1 = Vertex1[1];
            float z1 = Vertex1[2];
            float y2 = Vertex2[1];
            float z2 = Vertex2[2];
            float y3 = Vertex3[1];
            float z3 = Vertex3[2];
            MathTrigonometry.RotateX(angle, ref y1, ref z1);
            MathTrigonometry.RotateX(angle, ref y2, ref z2);
            MathTrigonometry.RotateX(angle, ref y3, ref z3);
            CalcNormal();

            Vertex1[1] = y1; Vertex1[2] = z1;
            Vertex2[1] = y2; Vertex2[2] = z2;
            Vertex3[1] = y3; Vertex3[2] = z3;
        }

        //Transform:RotateY in degrees not radians
        public void RotateY(float angle)
        {
            float x1 = Vertex1[0];
            float z1 = Vertex1[2];
            float x2 = Vertex2[0];
            float z2 = Vertex2[2];
            float x3 = Vertex3[0];
            float z3 = Vertex3[2];
            MathTrigonometry.RotateY(angle, ref x1, ref z1);
            MathTrigonometry.RotateY(angle, ref x2, ref z2);
            MathTrigonometry.RotateY(angle, ref x3, ref z3);
            CalcNormal();
            Vertex1[0] = x1; Vertex1[2] = z1;
            Vertex2[0] = x2; Vertex2[2] = z2;
            Vertex3[0] = x3; Vertex3[2] = z3;
        }

        //Transform:RotateZ in degrees not radians
        public void RotateZ(float angle)
        {
            float x1 = Vertex1[0];
            float y1 = Vertex1[1];
            float x2 = Vertex2[0];
            float y2 = Vertex2[1];
            float x3 = Vertex3[0];
            float y3 = Vertex3[1];
            MathTrigonometry.RotateZ(angle, ref x1, ref y1);
            MathTrigonometry.RotateZ(angle, ref x2, ref y2);
            MathTrigonometry.RotateZ(angle, ref x3, ref y3);
            CalcNormal();
            Vertex1[0] = x1; Vertex1[1] = y1; 
            Vertex2[0] = x2; Vertex2[1] = y2; 
            Vertex3[0] = x3; Vertex3[1] = y3; 
        }

        //Scale triangle
        public void Scale(float sx, float sy, float sz)
        {
            Vertex1[0] *= sx; Vertex1[1] *= sy; Vertex1[2] *= sz;
            Vertex2[0] *= sx; Vertex2[1] *= sy; Vertex2[2] *= sz;
            Vertex3[0] *= sx; Vertex3[1] *= sy; Vertex3[2] *= sz;
            CalcNormal();
        }

        //Mirror X, equivalent to scale(-1,1,1)
        public void MirrorX()
        {
            Vertex1[0] = 1 - Vertex1[0];
            Vertex2[0] = 1 - Vertex2[0];
            Vertex3[0] = 1 - Vertex3[0];
            CalcNormal();
        }

        //Mirror Y, equivalent to scale(1,-1,1)
        public void MirrorY()
        {
            Vertex1[1] *= -1;
            Vertex2[1] *= -1;
            Vertex3[1] *= -1;
            CalcNormal();
        }

        //Mirror Z, equivalent to scale(1,1,-1)
        public void MirrorZ()
        {
            Vertex1[2] *= -1;
            Vertex2[2] *= -1;
            Vertex3[2] *= -1;
            CalcNormal();
        }

        //Nothing fancy, create a copy and return it
        public Triangle Clone()
        {
            Triangle triangle2 = new Triangle();
            
            //Use easy call
            triangle2.SetTriangle(
                Vertex1[0],Vertex1[1],Vertex1[2],
                Vertex2[0],Vertex2[1],Vertex2[2],
                Vertex3[0],Vertex3[1],Vertex3[2],
                TexCoords1[0],TexCoords1[1],
                TexCoords2[0],TexCoords2[1],
                TexCoords3[0],TexCoords3[1]);
            
            //GetToken the normal too
            triangle2.Normal[0] = Normal[0]; 
            triangle2.Normal[1] = Normal[1]; 
            triangle2.Normal[2] = Normal[2];
            return triangle2;
        }
    }
}
