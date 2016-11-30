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
    public static string HttpGet(string url)
    {
        HttpWebRequest req = (HttpWebRequest)System.Net.WebRequest.Create(url)
                             as HttpWebRequest;
        string result = null;
        using (HttpWebResponse resp = req.GetResponse()
                                      as HttpWebResponse)
        {
            StreamReader reader =
                new StreamReader(resp.GetResponseStream());
            result = reader.ReadToEnd();
        }
        return result;
    }
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
    public static void DecodeToGrid(string serial, int tx , int ty, int tz)
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
                                                     /*if (rects.GetRect(rects.Count - 1).Properties.CircuitIds == null)
                                                         rects.GetRect(rects.Count - 1).Properties.CircuitIds = new List<int>();

                                                     rects.GetRect(rects.Count - 1).Properties.PhysicsId = pid;
                                                     rects.GetRect(rects.Count - 1).Properties.CircuitIds.Add(cid);*/
                        state = mode;
                        break;
                    }
            }
        }

        //return rects;
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
/*
static void Main(string[] args)
{
    Console.WriteLine("Minimal decoder");
    string nexusSerialized =
"*@@@@10000@0000100uv01w1f@01@0ug0gL1gg0hg1uv0hw1uL0hL1u00v@0w00x00!g0xg1Lv0xw1LL0xL1L@0x@0!g0ML1Mg0Ng0!v0Nw0!L0NL0!00@@0@11v!1wg1!g1!L1!L1!g2NgfNL2NLfNg2@gf@L2@Lf@ggNLgNggOgg!LgOLg!gg@Lg@*7v@@10101u0fx01!0f10gf0uM0g!0uh0hu0ux0hK0u10xf0!h0xu0Lx0xK0LM0x!0!h0Nu0!x0NK0!g1Ng1ZL1NL1Zg2Ogf!L2OLf!hgOKg!*v@v@20212dcdO12Zcd*@v@@20i12tcdy12Jcd*@vv@2021idctO1iZct*vv@@2021ydcJO1yZcJ*@@v@2021OdcZO1OZcZ*@@@@30qhPBs!"
;


    SerializedRectsToRects(nexusSerialized);
}
*/


public class GlyphicsMicroCore : MonoBehaviour
{

    static string nexusSerialized = "*@@@@10000@0000100uv01w1f@01@0ug0gL1gg0hg1uv0hw1uL0hL1u00v@0w00x00!g0xg1Lv0xw1LL0xL1L@0x@0!g0ML1Mg0Ng0!v0Nw0!L0NL0!00@@0@11v!1wg1!g1!L1!L1!g2NgfNL2NLfNg2@gf@L2@Lf@ggNLgNggOgg!LgOLg!gg@Lg@*7v@@10101u0fx01!0f10gf0uM0g!0uh0hu0ux0hK0u10xf0!h0xu0Lx0xK0LM0x!0!h0Nu0!x0NK0!g1Ng1ZL1NL1Zg2Ogf!L2OLf!hgOKg!*v@v@20212dcdO12Zcd*@v@@20i12tcdy12Jcd*@vv@2021idctO1iZct*vv@@2021ydcJO1yZcJ*@@v@2021OdcZO1OZcZ*@@@@30qhPBs!";
    static string decoder = "*17f@00000z0000100yz01z0y00zz0z*3fv@00101y0y*vvv@00314g1431531l516g16e1cg1c51eg1ec1kg1k31mg1m21s61sa1sg1s21u61ub1ug1ui25w25526536e2ce3ci2dw2d52e53ec2kc3ki2lw2l32m33m52s53s82s82sa2sa2sc2sc3si2tw2t32u33u82u82ub2ub2ue2ue3uw35w7553753de3de3tw3dw7d53f53rc3lc3rw3lw7l33n33t83sa3sw3tw7t83ub3u*@0@@00g15i15g1di1dg1li1lg1ti1t*@v0@0011s11s11u11u*@0v@0071s81s71u81u*v@v@00w85w85w8dw8dw8lw8lw8tw8t";
    static string chessboard = "*000@00000707g00n07w00D07M00T07808f0fo08v0fE08L0fU08@0f00g70ng0gn0nw0gD0nM0gT0n80of0vo0ov0vE0oL0vU0o@0v00w70Dg0wn0Dw0wD0DM0wT0D80Ef0Lo0Ev0LE0EL0LU0E@0L00M70Tg0Mn0Tw0MD0TM0MT0T80Uf0@o0Uv0@E0UL0@U0U@0@*v33@00800f07o00v07E00L07U00@0700870fg08n0fw08D0fM08T0f80gf0no0gv0nE0gL0nU0g@0n00o70vg0on0vw0oD0vM0oT0v80wf0Do0wv0DE0wL0DU0w@0D00E70Lg0En0Lw0ED0LM0ET0L80Mf0To0Mv0TE0ML0TU0M@0T00U70@g0Un0@w0UD0@M0UT0@*@@@@00111676911e16h11m16p11u16x11C16F11K16N11S16V11!7611961e919e1eh19m1ep19u1ex19C1eF19K1eN19S1eV19!1eb22c43q22t85y22B65P22Q43j23k44H23I4432b43cb2bc3cj2bk3cr2bs3cz2bA3cH2bI3cP2bQ3cX2bY3c24a56da4ad6di4al6dq4at6dy4aB6dG4aJ6dO4aR6dW4aZ6db52c55i52l65G52J65P52Q55b62c64P62Q64b72c73P72Q73j73k84z73A74H73I84181181681681V81V81!81!81y83B94186186686686V86V86!86!86r93sa4za3Aa4*777@0011N61S91Ne1Sh1Nm1Sp1Nu1Sx1NC1SF1NK1SN1NS1SV1N!1S11V67!91Ve1!h1Vm1!p1Vu1!x1VC1!F1VK1!N1VS1!V1V!7!32P43Qb2Pc3Qj2Pk3Qr2Ps3Qz2PA3QH2PI3QP2PQ3QX2PY3Qq2Wt8Zy2WB6Zj2Xk4YH2XI4Yb2Yc4ZP2YQ4Z24O56Ra4Od6Ri4Ol6Rq4Ot6Ry4OB6RG4OJ6RO4OR6RW4OZ6Rb5Wc5Zi5Wl6ZG5WJ6ZP5WQ5Zb6Xc6ZP6XQ6Zj7Xk8Yz7XA7YH7XI8Yb7Yc7ZP7YQ7Z18V18V68V68VV8VV8V!8V!8Vy8XB9Y18!18!68!68!V8!V8!!8!!8!r9XsaYzaXAaY";
    static string megagrid = "*UUU@05000@0h00ih0J00K@0@000@0000100!@0100!@01@0h@0ih0Jr0Hy1Hr0Hy1H@0K@0!l0LE0Ll0LE0L00@@0@010@1b01cb1Q01R@1@010@1b01cb1Ql1Ll3LE1LE3Ll1Ll3LE1LE3L01R@1@r2Ir2Iy2Iy2Ir2Ir2Iy2Iy2Ir3Jr3Jy3Jy3Jr3Jr3Jy3Jy3Jr4Kr4Ky4Ky4Kr4Kr4Ky4Ky4Kl4LE4Zl4LE4Z*@@@@00000@00000!0000100!@01@0!00100!g0gg0gL0gL0gg0Lg0!L0LL0!00@@0@00@!0@g1LgfLL1LLfLg1@gf@L1@Lf@21dr1dz1dZ1d21eZ1Z32er2ez2eY2e32fY2Y43fr3uz3fX3u43vX3X54g5nVW4gWnVs4uy4u54WWMWs5vy5vs6wy6ws7xy7xs8yy8ys9zy9zsaAyaAsbBybBscCycCsdDydDseEyeEsfFyfFggLLgLggMgg!LgMLg!gg@Lg@sgGygGshHyhHsiIyiIsjJyjJskKykKslLylLsmMymMsnNynN5ogWou5ovroNzovWoN5oOWoV5pg5LVWpgWLVgvggvgLvgLvggvLgvLLvLLvL5MgWMV6NhVNV7OiUOU8PjTPT*UUU@04000@0000100!@01@0!00@@0@616V1661761UV17V1Ui1hJ1hh1ihdJK1iKdJj1sj1sn1sn1si1KJbK61VV1Vc2cs8cz2cO8cc2dcdPs2ds8gz2dz8gP2dPdPi2hs8hz2hJ8hj2tn2uc2QPeQj3vj3vn3vn3vj4wn4xj5yj5yn5yn5yj6zn6Aj7Bn7Cj8Dj8Dn8Dn8Dc9cOdci9hJdhj9En9FjaGjaGnaGnaGjbHnbIjcJncJicKicKocKJcKidKJdKcecceccePPeP*7v@@00101!0!101u0fx01!0f10gf0uM0g!0uh0hK0K10xf0!M0x!0!h0Mu0!x0MK0!g1Mgf!L1MLf!r6vu6vw6vz6vn7vq7vA7vD7vl8vm8vE8vF8vj9vk9vG9vH9vhaviavIavJavgbvgbvKbvKbvfcvfcvLcvLcvedvedvMdvMdvdevdevNevNevcfvcfvOfvOfvhgMKg!bgvbgvPgvPgvahvaivQhvQiv9jv9kvRjvRkv8lv8mvSlvSmv7nv7qvTnvTqv6rv6uvUrvUuv6wv6zvUwvUzv7Av7DvTAvTDv8Ev8FvSEvSFv9Gv9HvRGvRHvaIvaJvQIvQJvbKvbKvPKvPKvcLvcLvOLvOLvdMvdMvNMvNMveNveNvMNvMNvfOvfOvLOvLOvbP0@PagPvgPvKPvKPvhQviQvIQvJQvjRvkRvGRvHRvlSvmSvESvFSvnTvqTvATvDTvrUvuUvwUvzUv*7v@@04101!0!717U1g71hh1hK1hU1h71ig1JL1iU1Jk1sm1s71Kh1KK1KU1K71LU1Ud2dr8gA2dO8gd2hhdhK2hOdhd2igdJL2iOdJd2KhdKK2KOdKd2LOdPk3vm3vk5ym5yk8Dm8Dd9dOdgkaGmaGjcKncKdecOeccedceOPedPeO*@@@v00v01w0fh0gK0gg0hg0uL0hL0u10vg0wL0v!0wg0xg0KL0xL0Kh0LK0Lv0Mw0!0100!0g1ggugL1gLug01@0!@ghLguLLhLLuLhvgKvggvhgvKLvhLvKhvLKvL*vvv@06i0iJ0ri0si0so0sJ0si0tJ0Ji0iJ0ri0si0so0sJ0si0tJ0Jc1cs1hz1cP1hc1ig1JL1iP1Jc1KP1Qc1cs1hz1cP1hc1ig1JL1iP1Jc1KP1Qd2cr8hA2cO8hd2igcJL2iOcJk2tm2ud2KOcQd2cr8hA2cO8hd2igcJL2iOcJk2tm2ud2KOcQk3vm3vk3vm3vk4wm4xk4wm4xk5ym5yk5ym5yk6zm6Ak6zm6Ak7Bm7Ck7Bm7Ck8Dm8Dk8Dm8Dd9cs9hz9cO9hk9Em9Fd9cs9hz9cO9hk9Em9FdacOchkaGmaGdacOchkaGmaGkbHmbIkbHmbIkcJmcJkcJmcJddcOdcddPOdQddcOdcddPOdQ*UUU@06K0i@0Jj0sn1sK0i@0Jj0sn1st1cy1hQ1c@1Qh1ihcJK1iKcJt1cy1hQ1c@1Qh1ihcJK1iKcJc2cccQs2cs8hz2cz8hP2cPcQj2tj2un2tn2uc2cccQs2cs8hz2cz8hP2cPcQj2tj2un2tn2uj3vj3vn3vn3vj3vj3vn3vn3vj4wj4xn4wn4xj4wj4xn4wn4xj5yj5yn5yn5yj5yj5yn5yn5yj6zj6An6zn6Aj6zj6An6zn6Aj7Bj7Cn7Bn7Cj7Bj7Cn7Bn7Cj8Dj8Dn8Dn8Dj8Dj8Dn8Dn8Dt9cy9hj9Ej9Fn9En9Ft9cy9hj9Ej9Fn9En9FjaGjaGnaGnaGjaGjaGnaGnaGjbHjbInbHnbIjbHjbInbHnbIjcJjcJncJncJjcJjcJncJncJcdccdcPdcPdccddPdhcdihdJKdiPdJcdKPdOcdPcdQPdPPdQcdccdcPdcPdccddPdhcdihdJKdiPdJcdKPdOcdPcdQPdPPdQcecPeccedceOPedPeOcePPeQcecPeccedceOPedPeOcePPeQ*vvv@00000v00x00!00001007801807g01g07o01o07E01E07M01M07U01U07008v08x08!0800900f80980fg09g0fo09o0fE09E0fM09M0fU09U0f00gv0gx0g!0g00h00n80h80ng0hg0no0ho0nE0hE0nM0hM0nU0hU0n00ov0ox0o!0o00p00v80p80vg0pg0vo0po0vE0pE0vM0pM0vU0pU0v00x00D80x80Dg0xg0Do0xo0DE0xE0DM0xM0DU0xU0D00Ev0Ex0E!0E00F00L80F80Lg0Fg0Lo0Fo0LE0FE0LM0FM0LU0FU0L00Mv0Mx0M!0M00N00T80N80Tg0Ng0To0No0TE0NE0TM0NM0TU0NU0T00Uv0Ux0U!0U00V00!80V80!g0Vg0!o0Vo0!E0VE0!M0VM0!U0VU0!00@v0@x0@!0@01@0f@g1@gf@M1@Mf@0g@vg@xg@!g@0h@0v@gh@gv@Mh@Mv@0x@0L@gx@gL@Mx@ML@0M@vM@xM@!M@0N@0!@gN@g!@MN@M!@*EEE@00w00w0v00w!0ww0xw0@w1@wv@0w@!w@wx@w!@*@vv@05101t0Gw01!0G101t0Gw01!0G10Hq0Hz0H!0H10Hq0Hz0H!0H10I!0K10I!0K10Lk0LF0L!0L10Lk0LF0L!0L10M30!X0M!0!10M30!X0M!0!m1LD3Lm1LD3Ls2Ix2Is2Ix2Is3Jx3Js3Jx3Js4Kx4Ks4Kx4K*7v@L0pu01v0Gu01v0G51MV2!51MV2!l3ME3Zl3ME3Z73!T3!73!T3!84!SV!84!SV!*UUU@0p40MW0!40MW0!41M42!W1MW2!41M42!W1MW2!43Mk3ZF3MW3Z43Mk3ZF3MW3Z43!63!U3!W3!43!63!U3!W3!74!7V!T4!TV!74!7V!T4!TV!3R2BR23R33R6BR3BRdoR6wR62R72RonR7nRoxR7xR9wRawRfAReARjvRgvRlzRkzRpuRmuRr2Rpn!pyRqyRvtRstRwxRwxRAsRxsRCwRBwRGrRDrRIvRHvRMqRJqROuRNuRSpRPpRYtRTtRUuRVZRVZRWZRYpRZZRZ2S72Z72SnnZn2So2!onSon!o7W!TW!7W!TW!2!7n!72!82!nn!8n!n*3fv@00000vvv*7f7@00000!0000100!*fvf@00101!0!*@00@00X11Z13*MvM@00n13r14n24r26n36r38n48r49n59r5bn6br6dn7dr7en8er8gn9gr9inairajnbjrblnclrcnndnrdpnepreqnfqrfsngsrgunhurhvnivrixnjxrjznkzrkAhkVlkXnlArlChlSllVnmCrmEhmPlmStnAxn@nnErnUhnNlnPhoKloNhpHlpKiqEmqHirBmrEiszmsBitwmtziutmuw2vb6vcivrmvt2wc6wc2wd7wd3we7xe3xf7xg3yg7yg3yh8yh4yi8zi4zj8zk5Ak9Am5Bm9Bm5BnaBn6BoaCo6CpaDp6DqaDr7ErbEt7FtbFt7FucFu8FvcGv8GwcGx9HxdHz9IzdIA9JAdJA9JBeJBaJCeKCaKDeKEbLEfLGbMGfMGbMHgMHcMIgNIcNJgNKcOKgOKcOLhOLdOMhPMdPbhPcdPdiPdePeiQeeQfiQgeQhjQhfQijQkfRkjRkfRlkRlgRmkRngRolRohRplRqhSqlSrhSsmSsiStmSvjTvnTyjTzoTzkTAoTBkUBoUCkUDpUDlUEpUFlUGqUGmUHqVHmVIqVJmVKrVKnVLrVNnWNrWNnWOsWOoWPsWP*vvvv0pV15Z15V26Z26V37Z37V48Z48V59Z59V6aZ6aV7bZ7bV8cZ8cV9dZ9dVaeZaeVbfZbfVcgZcgVdhZdhVeiZeiVfjZfjVgkZgkVhlZhlVimZimVjnZjnVkoZkoVlpZlpVmqZmqVnrZnrVosZosVptZptVquZquVrvZrvVswZswVtxZtxVuyZuyVvzZvzVwAZwAVxBZxBVyCZyCVzDZzDVAEZAEVBFZBFVCGZCGVDHZDHVEIZEIVFJZFJVGKZGKVHLZHLVIMZIMVJNZJNVKOZKOVLPZLPVMQZMQVNRZNRVOSZOSVPTZPTVQUZQU*vMv@00w1qBuqv1rvurC1rCusu1suutD1tDuut1utuus1vsuvE1vEuvt1wtuxD1wDuxu1yuuzC1yCuzv1ABmAynABnAvoABuAvvBAvLuwzuwLBwzBxLtxztyLCyzCzLszzszLrAzrALDAzDALsBzsCLCBzCCLtDztELBDzBELuFzAFL*vvM@00O1OS7OW1OZ7OO1PO3YZ1PZcYO1ZZdZO4PO7RO4XO7YO8OZdOO8POcYOdPZdYovoAvA*vMv@07211p13A11Z13211p13A11Z13215p17A15Z17215p17A15Z17219p1bA19Z1b219p1bA19Z1b21dp1fA1dZ1f21dp1fA1dZ1f21hp1jA1hZ1j21hp1jA1hZ1j21lp1nA1lZ1n21lp1nA1lZ1n21pp1rA1pZ1r21pp1rA1pZ1r21tp1vA1tZ1v21tp1vA1tZ1v21xp1zA1xZ1z21xp1zA1xZ1z21Bp1DA1BZ1D21Bp1DA1BZ1D21Fp1HA1FZ1H21Fp1HA1FZ1H*@vv@00s1dy1ds2ey2es3fy3u*v@v@40121efeN21!fe*@v@@40g21tfey21Lfe*@@@@ae828cFbP29TFc82RcFUP2RTFU*@vv@4012geftN2g!ft*vv@@4012yefLN2y!fL*@@v@4012Nef!N2N!f!*vvMf00O4SO7W*v@7@00v6rv6zv7nv7qv7Av7Dv8lv8mv8Ev8Fv9jv9kv9Gv9HvahvaivaIvaJvbgvbgvbKvbKvcfvcfvcLvcLvdevdevdMvdMvedvedveNveNvfcvfcvfOvfOvgbvgbvgPvgPvhaviavhQviQvj9vk9vjRvkRvl8vm8vlSvmSvn7vq7vnTvqTvr6vz6vrUvzUtvpuvpwvpxvpsvqsvqyvqyvqrvrrvrzvrzvrqvsqvsAvsAvspvtpvxBvtBvxqvyqvyAvyAvyrvzrvzzvzzvzsvAsvAyvAyvAtvBuvBwvBxvBvA7vD7vATvDTvE8vF8vESvFSvG9vH9vGRvHRvIavJavIQvJQvKbvKbvKPvKPvLcvLcvLOvLOvMdvMdvMNvMNvNevNevNMvNMvOfvOfvOLvOLvPgvPgvPKvPKvQhvQivQIvQJvRjvRkvRGvRHvSlvSmvSEvSFvTnvTqvTAvTDvUrvUz*7w@@00vptvpxvqsvqsvqyvqyvrrvrrvrzvrzvsqvsqvsAvsAvtpvxpvtBvxBvyqvyqvyAvyAvzrvzrvzzvzzvAsvAsvAyvAyvBtvBx*@7v@00tpvupvwpvxpvsqvsqvyqvyqvrrvrrvzrvzrvqsvqsvAsvAsvptvpuvBtvBuvrv6uv6wv6zv6nv7qv7Av7Dv7lv8mv8Ev8Fv8jv9kv9Gv9Hv9hvaivaIvaJvagvbgvbKvbKvbfvcfvcLvcLvcevdevdMvdMvddvedveNveNvecvfcvfOvfOvfbvgbvgPvgPvgavhaviQvhQvi9vj9vkRvjRvk8vl8vmSvlSvm7vn7vqTvnTvq6vr6vzUvrUvz7vA7vDTvATvD8vE8vFSvESvF9vG9vHRvGRvHavIavJQvIQvJbvKbvKPvKPvKcvLcvLOvLOvLdvMdvMNvMNvMevNevNMvNMvNfvOfvOLvOLvOgvPgvPKvPKvPhvQivQIvQJvQjvRkvRGvRHvRlvSmvSEvSFvSnvTqvTAvTDvTrvUuvUwvUzvUpwvpxvBwvBxvqyvqyvAyvAyvrzvrzvzzvzzvsAvsAvyAvyAvtBvuBvwBvxBv*Mvv@000v4WvaQvbWvLwvMWvPwvQVvSbPNVPObPP@PT*MMv@00UNa@NaTOaTOaVOb@OBUPbUPBWPC@POSQaSQaTQbTQnUQoUQBVQCVQORRaRRaTRbTRBURCUSOQSaQTaSSbSSBRTbRTnSToSTBTTCTTOPUaPUaQUbQUnRUoRUBSUCSUOQVaQWaRVbRWnSVoSWBTVCTWORXaRXaSXbSXnTXoTXBUXCUXOSYaSYaTYbTYnUYoUYOTZaTZnUZoUZBVZC@ZOT!aT!aU!b@!nV!o@!B*v@7@0p4R3AR54R6nR6xR6AR6*@77@0p3R7mRoyR7AR9xRaARdxRezRfwRgzRjwRkyRlvRmyRpvRqxRruRsxRvuRwwRwtRxwRAtRBvRCsRDvRGsRHuRIrRJuRMrRNtROqRPtRSqRTsRUqRVtRV2S82Zm3Som!o3!8m!n*7v@@0pqRWYRY*vMM@00WVT@VWnWQwWQnWRDWRWWR@WTnWSKWSrWTRWTyWU@WUFWV@WVMWW@WWTWX@WX!WY@WYWXP@XSWYO@YQ";
    string first = "*@@@@00000@0000130@Y01@0@80be0bM0bS0b50cb0cJ0cP0c50gb0gJ0gP0gs0iy1i50kb0kJ0kP0k50pb0pJ0pP0p90qe0q80r80rf0rf0s70s70tg0tg0u60u60u50v50vh0vh0v60w60xg0wg0x70y70zf0yf0z80Ae0A80Pe0PM0PS0P01004@@10@4@31134@Y11Y4@81b8mbe1bembM1bMmbS1bSmb51c57cb1cb1cJ1cJ1cP1cP7c51g57gb1gb1gJ1gJ1gP1gP7g51k57kb1kb1kJ1kJ1kP1kP7k51p57pb1pb1pJ1pJ1pP1pP7p91q9sqe1qesq81A8sAe1AesA81P8oPe1PepPM1PMwPS1PSwPc2cc4cI2cI4cc2gc4gI2gI4gr2js3jx2jx2jc2kc4kI2kI4kc2pc4pI2pI4pm31m3ks31s3ix3kx3kr4lr4lx4lx4l050@5005135@Y51@5@d5cd6cH5cH6cd5gd6gH5gH6gd5kd6kH5kH6kr5mr5mx5mx5md5pd6pH5pH6pq6nq6nw6nw6ne7ce8cG7cG8ce7ge8gG7gG8ge7ke8kG7kG8kq7oq7ow7ow7oe7pe8pG7pG8p68c6acO8cOac68g6agO8gOag68k6akO8kOak68p6apq8pq8pw8pw8pO8pOapf9cf9cF9cF9cf9gf9gF9gF9gf9kf9kF9kF9kf9pf9pF9pF9pq9qq9qw9qw9qgacgacEacEacgaggagEagEaggakgakEakEakgapgapEapEapparparvarvar7bc7cchbchbcDbcDbcNbcNcc7bg7cghbghbgDbgDbgNbgNcg7bk7ckhbkhbkDbkDbkNbkNck7bp7cphbphbpDbpDbpNbpNcppbspbsvbsvbsicciccCccCccicgicgCcgCcgickickCckCckicpicpCcpCcppctpctvctvct8dc8ecjdcjdcBdcBdcMdcMec8dg8egjdgjdgBdgBdgMdgMeg8dk8ekjdkjdkBdkBdkMdkMek8dp8epjdpjdpBdpBdpMdpMeppdupduvduvdugdTodTfdUpdUedVqdXfdYpdYgdZodZkecleczecAeckeglegzegAegkeklekzekAekkeplepzepAepoevoevuevuevfeSpeSeeTfeTpeTqeTdeUeeUqeUreUdeVdeXreVreXdeYeeYqeYreYeeZfeZpeZqeZfe!pe!9fc9fcmfcnfcxfcyfcLfcLfc9fg9fgmfgnfgxfgyfgLfgLfg9fk9fkmfknfkxfkyfkLfkLfk9fp9fpmfpnfpxfpyfpLfpLfpofwofwufwufwffRpfRdfSefSqfSrfSdfTdfTrfTrfTcfUcfYsfUsfYdfZdfZrfZrfZdf!ef!qf!rf!ff@pf@agcagcogcqgcugcwgcKgcKgcaggaggoggqgguggwggKggKggagkagkogkqgkugkwgkKgkKgkagpagpogpqgpugpwgpKgpKgpogxogxugxugxggQogQegRegRqgRqgRdgSdgSrgSrgScgTcgUsgTsgUbgVbgXtgVtgXcgYcgZsgYsgZdg!dg!rg!rg!eg@eg@qg@qg@bhcbhcrhcthcJhcJhcbhgbhgrhgthgJhgJhgbhkbhkrhkthkJhkJhkbhpbhprhpthpJhpJhpohyohyuhyuhyfhQfhQphQphQdhRdmRrhRrmRchSchTshSshTbhUbhYthUthYchZch!shZsh!dh@dr@rh@rm@ciccicIicIiccigcigIigIigcikcikIikIikcipcipIipIipnizniztiztizeiQenQqiQqmQciScmSsiSsmSbiTbmZtiTtmZci!cr!si!sm!djcdjcHjcHjcdjgdjgHjgHjgdjkdjkHjkHjkdjpdjpHjpHjpnjAnjAtjAtjAekcfkcFkcGkcekgfkgFkgGkgekkfkkFkkGkkekpfkpFkpGkpnkBnkBtkBtkBglchlcDlcElcglghlgDlgElgglkhlkDlkElkglphlpDlpElpnlCnlCtlCtlCimckmcAmcCmcimgkmgAmgCmgimkkmkAmkCmkimpkmpAmpCmpmmDmmDsmDsmD8nbenbMnbSnblncznclngznglnkznklnpznpbnBcnOmnEmnPsnEsnNynOyn@bnQcnQbnRbnZsn@so@9oBaoO9oQaoSdoQdoRqoQqqQroRrrRcoScrSsoSsrS9oT9oYtoTtqZboZbqZso!sr!yo@zo@7pB8pO7pP7vP7pQ8pYepQeqQdpRdrRbpTbqYrp@rr@0qt0qy4qt4qu5qv5qv4qw4qyfqPfqP0rs0rs4rs4rs0rz4szerPetPfrQfrQprQprQcrTcsTsrTssTbrUbrYtrUtrYcrZcsZsrZssZCr@Cs@0sr4trgsQosQesResRqsRqsRdsSdsSrsSrsScsUctUssUstUbsVbsXtsVtsXcsYctYssYstYds!ds!rs!rs!es@es@qs@qs@9tqetq8tr8trftrfts7ts7ttgttgtu6tu6tu5tv5tvhtvhtv6tw6txgtwgtx7ty7tzftyftz0tA4uA8tAetAgtQgtQftRptRdtSetSqtSrtSdtTdtTrtTrtTctVctXstVstXdtZdtZrtZrtZdt!et!qt!rt!ft@mt@ot@pt@Dt@Dt@0uq0uq4uq4uqfuPfuPfuRfuRfuSpuSeuTfuTpuTquTduUduYquUruUruVruXquYruYeuZfuZpuZquZfu!pu!0vp0vp4vp4vp0vB0vB4vB4vB7vB8vOevPewP7vQ8vYevTevTgvTovTevUpvUevVqvXevYpvYgvZovZ0wq4xq0wA4xA9wBawO8wP8wP9wQawYbxBcxO8xPexPMxPSxPbxQcxYnx@nx@Dx@Dx@0yr4zr0yz4zzoy@oz@Cy@Cz@0As0Ay4As4AyrC@sC@yC@zC@tD@tD@xD@xD@*7v@@00401X0a40b70bf0bL0bT0bX0b40c40cc0cI0cQ0cX0c40dX0f40g40gc0gI0gQ0gX0g40hr0iz0hX0i40jX0j40k40kc0kI0kQ0kX0k40lX0o40p40pc0pI0pQ0pX0p40q80qf0qX0q40r70r90re0rg0rX0s40s60t80se0s80tf0th0tX0u40u50u70uf0u40v40v60vg0vi0vX0v40w50x70wf0xh0wX0x40y60z80ye0zg0yX0z40A70Af0AX0A40BX0O40P70Pf0PL0PT0PX0P40QX0@*MMv@00s0hy0h61ga1gK1gO1g62gb4gJ2gO4gt2jw2jn31r3in3jq3jn3kw3ks4lw4l65gc6gI5gO6gs5mw5mr6nv6n67gd7gH7gO7gr7ov7o78gd8gH8gN8gr8pv8p79ge9gG9gN9gr9qv9q7agfagFagNagqaruar8bggbgEbgMbgqbsubs8cghcgDcgMcgqctuct9dgidgCdgLdgqduudu9egjegBegLegpevtevafglfgzfgKfgpfwtfwbggnggxggJggpgxtgxchgqhguhgIhgphythydigHigoizsizejgGjgojAsjAgkgEkgokBskBilgClgolCslClmgzmgnmDrmDnnErnNnnOxnPrnQxnQsnRxnRtnSxnSunTxnZtn!xn@*vMv@00110!4011124@Z11!4@61ca1cK1cO1c62cb4cJ2cO4c65cc6cI5cO6c67cd7cH7cO7c78cd8cH8cN8c79ce9cG9cN9c7acfacFacNac8bcgbcEbcMbc8cchccDccMcc9dcidcCdcLdc9ecjecBecLecafclfczfcKfcbgcngcxgcJgcchcqhcuhcIhcdicHicejcGjcgkcEkcilcClclmczmc*vMM@0091bdmbN1bRmb91PdmPN1PRwPgeToeTfeUpeUeeVqeXfeYpeYgeZoeZffSpfSefTqfTdfUrfYefZqfZff!pf!fgRpgRegSqgSdgTrgUcgVsgXdgYrgZeg!qg!fg@pg@ghQohQehRqmRdhSrhTchUshYdhZrh!eh@qm@fiQpmQdiSrmSciTsmZdi!rm!9nPanPdnPdnPfnQqnQdnRrnRdnSsnSdnTtnYcnZtnZdn!sn!en@ro@boPcoPeoQpoQeoRqoReoSroSboTcoYeoTsoYcoZsqZdo!rr!9pPdpPfpQppQfpRqpRdpSdpSfpSrpScpTdpYfpTspYep@qr@8qPeqPgqQpqQeqReqRgqRqqRdqSeqSgqSrqScqTeqYgqTsqY8rPdtPhrQorQerRfrRhrRqrRdrSfrThrSrrTcrUfrYhrUsrYdrZrsZfsRgsRisRpsResSgsSisSqsSdsTgsUisTrsUcsVgsXisVssXdsYgsYisYrsYes!qs!fs@ps@ftSftShtSptSetTftThtTqtTdtUftYhtUrtYetZqtZft!pt!nt@nt@8uPeuPguTouTeuUeuYguUpuUguVquXguYpuYguZouZ9vPdvPbwPcwP*MvM@0061ka1kK1kO1k62kb4kJ2kO4k65kc6kI5kO6k67kd7kH7kO7k78kd8kH8kN8k79ke9kG9kN9k7akfakFakNak8bkgbkEbkMbk8ckhckDckMck9dkidkCdkLdk9ekjekBekLekafklfkzfkKfkbgkngkxgkJgkchkqhkuhkIhkdikHikejkGjkgkkEkkilkClklmkzmk*vvM@0061pa1pK1pO1pa1qdsq81r8srf1rfss71s7stg1tgsu61u6su51v5pvh1vhsv61w6sxg1wgsx71y7szf1yfsz91AdsA62pb4pJ2pO4p65pc6pI5pO6p67pd7pH7pO7p78pd8pH8pN8p79pe9pG9pN9p7apfapFapNap8bpgbpEbpMbp8cphcpDcpMcp9dpidpCdpLdp9epjepBepLepafplfpzfpKfpbgpngpxgpJgpchpqhpuhpIhpdipHipejpGjpgkpEkpilpClplmpzmpbnPcnPcnRcnYdoBdoP9oPaoPdoSdoYaoTaoYepBepO8pP8pPepRepY1qt3qu1qv4qv1qw3qy7qB7uOfqBfqO7qQ7uYfqQfqY1rs3rs5rv5svgrBgrYhsBhsPhsRhsYgtBgtPgtSgtY1uq3uqfuBfuOfuQfuQfuUfuY1vp3vp1vB3vBevBevO8vP8vPevQevSdwBdwY9wPawP1As3Ay1P@4P@8P@9P@dP@dQ@gP@gQ@jP@mP@pP@rP@1Q@1T@3Q@3T@5Q@5T@7Q@7S@aQ@aS@jQ@jT@pQ@pS@sQ@sS@dR@fR@dS@dS@gS@gS@8T@9T@dT@fT@pT@rT@1W@1X@4W@4X@7W@aW@dW@gW@jW@mW@qW@rW@7X@7X@dX@d!@jX@j!@pX@pZ@sX@sZ@1Y@4Y@7Y@9Y@1Z@1!@4Z@4!@7Z@7Z@7!@a!@q!@r!@*Mvv@00Ap@Ap@Bq@Bq@nu@nw@Du@Dw@pA@pA@BA@BA@qB@qB@AB@AB@uD@wD@";

    static Dictionary<string, string> GridSpaceAddress2Name = new Dictionary<string, string>();
    static Dictionary<string, string> Name2Serialized = new Dictionary<string, string>();

    private static string CreateGridSpaceAddress(Int32 X, Int32 Y, Int32 Z)
    {
        return "@"
            + String.Format("{0:X8}_", X)
            + String.Format("{0:X8}_", Y)
            + String.Format("{0:X8}", Z) + "";
    }
    private static void AddLookup(int X, int Y, int Z)
    {
        string url = "http://localhost:3838/api/";
        string gridSpaceAddress = CreateGridSpaceAddress(X, Y, Z);

        string name = null;
        if (!GridSpaceAddress2Name.ContainsKey(gridSpaceAddress))
        {
            name = Glyphics.HttpGet(url + "megagrid?" + gridSpaceAddress);
            GridSpaceAddress2Name.Add(gridSpaceAddress, name);
        }

        if (!Name2Serialized.ContainsKey(name))
        {
            string srects = Glyphics.HttpGet(url + "srects?" + name);
            Name2Serialized.Add(name, srects);
        }
    }
    private static void GenerateMegaGridObjects()
    {
        int spanX = 5;
        int spanY = 3;
        int spanZ = 5;
        int GridX, GridY, GridZ;

        for (int y = 0; y <= spanY; y++)
        {
            for (int z = -spanZ; z <= spanZ; z++)
            {
                for (int x = -spanX; x <= spanX; x++)
                {
                    AddLookup(x, y, z);

                    GridX = x * 64;
                    GridY = y * 64;
                    GridZ = z * 64;
                    string gsa = CreateGridSpaceAddress(x, y, z);
                    string gsaName;

                    if (GridSpaceAddress2Name.ContainsKey(gsa))
                    {
                        gsaName = GridSpaceAddress2Name[gsa];
                        string srects;
                        if (Name2Serialized.ContainsKey(gsaName))
                        {
                            srects = Name2Serialized[gsaName];
                            Glyphics.DecodeToGrid(srects, GridX, GridY, GridZ);
                        }
                    }
                }
            }
        }

        //Glyphics.DecodeToGrid(srects, 0, 0, 0);
    }
    void Start()
    {
        string url = "http://localhost:3838/api/";
        Glyphics.DecodeToGrid(nexusSerialized, 0,0,0);

        Glyphics.DestroyObjects();
        Glyphics.DecodeToGrid(nexusSerialized, 0, 0, 0);

        //Glyphics.DecodeToGrid();
        /*
        Name2Serialized.Add("PrintableNexus", Glyphics.HttpGet("http://localhost:3838/api/srects?PrintableNexus"));
        Name2Serialized.Add("Decoder", Glyphics.HttpGet("http://localhost:3838/api/srects?Decoder"));
        Name2Serialized.Add("PinkGreenArena", Glyphics.HttpGet("http://localhost:3838/api/srects?PinkGreenArena"));
        Name2Serialized.Add("Ascent", Glyphics.HttpGet("http://localhost:3838/api/srects?Ascent"));
        Name2Serialized.Add("Arena", Glyphics.HttpGet("http://localhost:3838/api/srects?Arena"));
        Name2Serialized.Add("Workspace", Glyphics.HttpGet("http://localhost:3838/api/srects?Workspace"));
        Name2Serialized.Add("MegaGrid", Glyphics.HttpGet("http://localhost:3838/api/srects?MegaGrid"));
        Name2Serialized.Add("Ascent", Glyphics.HttpGet("http://localhost:3838/api/srects?Ascent"));
        Name2Serialized.Add("Ascent", Glyphics.HttpGet("http://localhost:3838/api/srects?Ascent"));
        Name2Serialized.Add("Ascent", Glyphics.HttpGet("http://localhost:3838/api/srects?Ascent"));
        Name2Serialized.Add("Map", Glyphics.HttpGet("http://localhost:3838/api/srects?Map"));
        */
        //Name2Serialized.Add(CreateGridSpaceAddress


        /*AddLookup(-1, 0, 1);
        AddLookup(0, 0, 1);
        AddLookup(1, 0, 1);
        AddLookup(-1, 0, 0);
        AddLookup(0, 0, 0);
        AddLookup(1, 0, 0);
        AddLookup(-1, 0, -1);
        AddLookup(0, 0, -1);
        AddLookup(1, 0, -1);*/

        Glyphics.DestroyObjects();
        GenerateMegaGridObjects();

        //Glyphics.DestroyObjects();
        //Glyphics.DecodeToGrid(srects, 0, 0, 0);



        //    Glyphics.DestroyObjects();
        //      string digest = Glyphics.HttpGet("http://localhost:3838/api/digest");
        //
        //GameObject.CreatePrimitive(PrimitiveType.Cube);
        //GameObject.DestroyObject()

        //        GetComponent<Renderer>().material.color = Color.cyan;
        /*        GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
                cube.transform.position = new Vector3(0, 0, 0);
                cube = null;
                GameObject cube2 = GameObject.CreatePrimitive(PrimitiveType.Cube);
                cube2.transform.position = new Vector3(1, 0, 0);*/
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("1"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?PrintableNexus"), 0, 0, 0);
        }
        if (Input.GetKeyUp("2"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?Decoder"), 0, 0, 0);
        }
        if (Input.GetKeyUp("3"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?PinkGreenArena"), 0, 0, 0);
        }
        if (Input.GetKeyUp("4"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?Ascent"), 0, 0, 0);
        }
        if (Input.GetKeyUp("5"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?Arena"), 0, 0, 0);
        }
        if (Input.GetKeyUp("6"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?Workspace"), 0, 0, 0);
        }
        if (Input.GetKeyUp("7"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?MegaGrid"), 0, 0, 0);
        }
        if (Input.GetKeyUp("8"))
        {
            Glyphics.DestroyObjects();
            Glyphics.DecodeToGrid(Glyphics.HttpGet("http://localhost:3838/api/srects?Map"), 0, 0, 0);
        }
    }
}

