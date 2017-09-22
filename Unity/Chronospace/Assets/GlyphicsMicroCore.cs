using UnityEngine;
using System;
using System.IO;
using System.Net;
using System.Collections.Generic;
using System.Text;
using System.Collections;

//http://stackoverflow.com/questions/35851228/adding-multiple-cubes-in-unity

public class Glyphics
{
    public class Rect
    {
        public float[] Pt1 { get; set; }
        public float[] Pt2 { get; set; }

        public float Width { get { return Pt2[0] - Pt1[0]; } }
        public float Height { get { return Pt2[1] - Pt1[1]; } }
        public float Depth { get { return Pt2[2] - Pt1[2]; } }

        //Default Constructor
        public Rect() { Set(0, 0, 0, 0, 0, 0); }

        //Assignment constructor
        public Rect(float nx1, float ny1, float nz1, float nx2, float ny2, float nz2) { Set(nx1, ny1, nz1, nx2, ny2, nz2); }

        //Set dimensions of Rect
        private void Set(float nx1, float ny1, float nz1, float nx2, float ny2, float nz2)
        {
            Pt1 = new float[3];
            Pt2 = new float[3];

            Pt1[0] = nx1; Pt1[1] = ny1; Pt1[2] = nz1; Pt2[0] = nx2; Pt2[1] = ny2; Pt2[2] = nz2;
        }

        //Copy properties and points from another Rect
        public void CopyFrom(Rect srRect)
        {
            if (srRect == null) return;

            Pt1[0] = srRect.Pt1[0];
            Pt1[1] = srRect.Pt1[1];
            Pt1[2] = srRect.Pt1[2];

            Pt2[0] = srRect.Pt2[0];
            Pt2[1] = srRect.Pt2[1];
            Pt2[2] = srRect.Pt2[2];
            //Properties.CopyFrom(srRect.Properties);
        }

        //Readable description
        public override string ToString()
        {
            float w = Pt2[0] - Pt1[0];
            float h = Pt2[1] - Pt1[1];
            float d = Pt2[2] - Pt1[2];
            string dimStr = "(w=" + w + ",h=" + h + ",d=" + d + ")";
            return "[" + dimStr + "(" + Pt1[0] + "," + Pt1[1] + "," + Pt1[2] + ")" + "," + "(" + Pt2[0] + "," + Pt2[1] + "," + Pt2[2] + ")" + "/" + "]";
        }

        //True if x,y,z is in the rect
        public bool Contains(float x, float y, float z)
        {
            if ((x > Pt2[0]) || (x < Pt1[0]) || (y > Pt2[1]) || (y < Pt1[1]) || (z > Pt2[2]) || (z < Pt1[2])) return false;
            return true;
        }

        //If both touch each other
        public bool Touches(Rect rectB)
        {

            if (Pt1[0] <= rectB.Pt2[0] && Pt2[0] >= rectB.Pt1[0] &&
                Pt1[1] <= rectB.Pt2[1] && Pt2[1] >= rectB.Pt1[1] &&
                Pt1[2] <= rectB.Pt2[2] && Pt2[2] >= rectB.Pt1[2])
                return true;
            return false;

            //Should convert to this later. Will avoid corner problems
            //return RectTouch.TouchesFaces(this, rectB);
        }
    }

    public const char CharRgba = '*';
    public const char CharRects2D = '$';
    public const char CharRects3D = ':';
    public const char CharLimit255 = '\n';
    public const char CharGroup = '|';
    public const char CharPhysics = '^';
    public const char CharCircuit = '%';

    private const string Lookup64 = @"0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@";
    //        private static string notused = "`~[]{}|;:,./<>?-=_+\\\'\")#$%^&*(";
    public static string To64(int val)
    {
        return "" + Lookup64[val & 63];
    }
    public static byte From64(char val)
    {
        var index = (byte)Lookup64.IndexOf(val);
        return index;
    }

    const int MaxCubes = 1024;
    static GameObject[] gameObjects = new GameObject[MaxCubes];

    //Deserialized SerializedRects back to set of rectangles(RectList)
    public static void DecodeToGrid(string serial, int tx, int ty, int tz)
    {
        //RectList rects = new RectList();
        char state = ' ';
        byte shapeId = 0;
        byte textureId = 0;
        byte R = 0;
        byte G = 0;
        byte B = 0;
        byte A = 0;
        byte groupId = 0;
        char mode = CharRects3D;

        int count = 0;

        for (int i = 0; i < serial.Length; i++)
        {
            if (serial[i] == CharRects2D) { mode = CharRects2D; state = CharRgba; }
            if (serial[i] == CharRgba) { mode = CharRects3D; state = CharRgba; }
            if (serial[i] == CharGroup) state = CharGroup;
            if (serial[i] == CharLimit255) state = CharLimit255;
            if (serial[i] == CharCircuit) state = CharCircuit;
            switch (state)
            {
                case CharGroup:
                    {
                        groupId = From64(serial[++i]);
                        state = mode;
                        break;
                    }
                case CharRgba://Reading RGBA palette
                    {
                        i++;
                        R = From64(serial[i++]);
                        G = From64(serial[i++]);
                        B = From64(serial[i++]);
                        A = From64(serial[i++]);

                        //rgba = RecodeRgbatoUlong((byte)r, (byte)g, (byte)b, (byte)a);
                        shapeId = From64(serial[i++]);
                        textureId = From64(serial[i]);
                        state = mode;

                        break;
                    }
                case CharRects2D://Reading emergents
                    {
                        Rect rect = new Rect();
                        rect.Pt1[0] = From64(serial[i++]);
                        rect.Pt1[2] = From64(serial[i++]);

                        rect.Pt2[0] = From64(serial[i++]);
                        rect.Pt2[2] = From64(serial[i]);

                        //Convert from inclusve
                        rect.Pt2[0]++;
                        rect.Pt2[2]++;

                        float ox = -32;
                        float oy = -32;
                        float oz = -32;

                        float sx = (rect.Pt2[0] - rect.Pt1[0]);
                        //float sy = (rect.Pt2[1] - rect.Pt1[1]);
                        float sz = (rect.Pt2[1] - rect.Pt1[1]);

                        float mx = rect.Pt1[0] + sx / 2 + ox;
                        //float my = rect.Pt1[1] + sy / 2 + oy;
                        float mz = rect.Pt1[1] + sz / 2 + oz;
                        //rects.AddRect(rect);
                        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                        cube.GetComponent<Renderer>().material.color = new Color((float)R / (float)64, G / (float)64, B / (float)64);// Color.cyan;
                        cube.transform.position = new Vector3(mx + tx, ty, mz + tz);
                        cube.transform.localScale = new Vector3(sx, 0, sz);
                        gameObjects[count++] = cube;
                        cube = null;
                        break;
                    }
                case CharRects3D://Reading emergents
                    {
                        Rect rect = new Rect();
                        rect.Pt1[0] = From64(serial[i++]);
                        rect.Pt1[1] = From64(serial[i++]);
                        rect.Pt1[2] = From64(serial[i++]);

                        rect.Pt2[0] = From64(serial[i++]);
                        rect.Pt2[1] = From64(serial[i++]);
                        rect.Pt2[2] = From64(serial[i]);

                        //Convert from inclusve
                        rect.Pt2[0]++;
                        rect.Pt2[1]++;
                        rect.Pt2[2]++;

                        float ox = -32;
                        float oy = -32;
                        float oz = -32;

                        float sx = (rect.Pt2[0] - rect.Pt1[0]);
                        float sy = (rect.Pt2[1] - rect.Pt1[1]);
                        float sz = (rect.Pt2[2] - rect.Pt1[2]);

                        float mx = rect.Pt1[0] + sx / 2 + ox;
                        float my = rect.Pt1[1] + sy / 2 + oy;
                        float mz = rect.Pt1[2] + sz / 2 + oz;

                        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                        cube.GetComponent<Renderer>().material.color = new Color((float)R / (float)64, G / (float)64, B / (float)64);
                        cube.transform.position = new Vector3(mx + tx, my + ty, mz + tz);
                        cube.transform.localScale = new Vector3(sx, sy, sz);
                        gameObjects[count++] = cube;
                        cube = null;

                        break;
                    }
                case CharCircuit:
                    {
                        i++;
                        byte pid = From64(serial[i++]);//physics id
                        byte cid = From64(serial[i]);//circuit id
                        state = mode;
                        break;
                    }
            }
        }
    }
    static public void DestroyObjects()
    {
        for (int i = 0; i < MaxCubes; i++)
        {
            //GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
            UnityEngine.Object.Destroy(gameObjects[i]);
        }
    }
}


public class GlyphicsMicroCore : MonoBehaviour
{

    static string homeWorld = "*v@v@00000@0@010@1201321YZ13@1Y01Z@1@*f7f@00313Y1Y323Y2X32Ys2Yz2YY2Y*vvv@00222Zg222322YZ23Z2Y22ZsaZz2ZZaZ233Zg32343gXY34ZgX23YsaYz3YZaY2bYZgZ*@v7@00t2Yya@";

    void Start()
    {
        Debug.Log("Loading");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey("escape"))
            Application.Quit();

        Glyphics.DestroyObjects();
        Glyphics.DecodeToGrid(homeWorld, 0, 0, 0);
        return;
        if (Input.GetKeyDown("1"))
        {
            Glyphics.DestroyObjects();
         //   Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?PrintableNexus"), 0, 0, 0);
        }
    }
}

