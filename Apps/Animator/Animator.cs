#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using RasterLib;
using RasterLib.Language;
using GraphicsLib;

namespace Animator
{
    //Renders out the grid as it is between each token of code. Useful for creating animations.
    class Animator
    {
        static void ExecuteCodeToPng(string code)
        {
            //Glyphics codeString object
            Code rasterCode = RasterApi.CreateCode(code);

            //Save final result to PNG file
            string filename = "..\\..\\" + RasterApi.CodeToCodename(rasterCode).Name + ".PNG";

            //Execute, render, and save to png
            GraphicsApi.SaveFlatPng(filename,
                GraphicsApi.Renderer.RenderObliqueCells(
                    RasterApi.CodeToGrid(rasterCode)));
        }

        static void Main()
        {
            const string rawCode = "Size3D4 64 64 64;Spawn 5 5 5;PenTex 4;PenColorD4 31 127 255 255;WallCube 1;FillRect 1 0 0 63 0 5;PenTex 25;PenSize 1 1 5;Line 25 53 59 61 53 59;PenColorD4 127 255 31 255;PenSize 5 1 5;Line 5 53 4 35 53 4;PenColorD4 255 31 31 255;Line 27 53 55 35 53 9;PenSize 1 1 1;FillRect 2 53 7 23 62 25;PenColorD4 0 0 0 0;FillRect 3 54 5 23 61 22;PenTex 4;PenColorD4 31 127 255 255;FillRect 6 0 6 57 1 57;FillRect 12 0 12 51 14 52;PenColorD3 0 0 0;FillRect 18 1 18 45 15 45;FillRect 13 14 13 50 20 50;FillRect 29 2 10 34 8 20;PenColorD4 31 127 255 255;PenSize 5 1 1;Line 21 1 28 21 12 45;ImgEdgeX 224 224 224 255;ImgEdgeZ 224 224 224 255;PenColorD4 31 127 255 255;PenTex 25;PenColorD4 127 127 127 127;Stairs 59 1 5 59 52 56 5 1 1;PenColorD4 255 255 255 255;PenShape 10;PenTex 14;FillRect 10 2 8 10 41 11;FillRect 10 2 53 10 41 56;FillRect 53 2 53 53 41 56;FillRect 53 2 9 53 41 12;*UUU@04000@0000100!@01@0!00@@0@616V1661761UV17V1Ui1hJ1hh1ihdJK1iKdJj1sj1sn1sn1si1KJbK61VV1Vc2cs8cz2cO8cc2dcdPs2ds8gz2dz8gP2dPdPi2hs8hz2hJ8hj2tn2uc2QPeQj3vj3vn3vn3vj4wn4xj5yj5yn5yn5yj6zn6Aj7Bn7Cj8Dj8Dn8Dn8Dc9cOdci9hJdhj9En9FjaGjaGnaGnaGjbHnbIjcJncJicKicKocKJcKidKJdKcecceccePPeP*7v@@04101!0!717U1g71hh1hK1hU1h71ig1JL1iU1Jk1sm1s71Kh1KK1KU1K71LU1Ud2dr8gA2dO8gd2hhdhK2hOdhd2igdJL2iOdJd2KhdKK2KOdKd2LOdPk3vm3vk5ym5yk8Dm8Dd9dOdgkaGmaGjcKncKdecOeccedceOPedPeO*vvvv0pV15Z15V26Z26V37Z37V48Z48V59Z59V6aZ6aV7bZ7bV8cZ8cV9dZ9dVaeZaeVbfZbfVcgZcgVdhZdhVeiZeiVfjZfjVgkZgkVhlZhlVimZimVjnZjnVkoZkoVlpZlpVmqZmqVnrZnrVosZosVptZptVquZquVrvZrvVswZswVtxZtxVuyZuyVvzZvzVwAZwAVxBZxBVyCZyCVzDZzDVAEZAEVBFZBFVCGZCGVDHZDHVEIZEIVFJZFJVGKZGKVHLZHLVIMZIMVJNZJNVKOZKOVLPZLPVMQZMQVNRZNRVOSZOSVPTZPTVQUZQU*@@@@ae828cFbP29TFc82RcFUP2RTFU*UUU@0p3R2BR23R33R6BR3BRdoR6wR62R72RonR7nRoxR7xR9wRawRfAReARjvRgvRlzRkzRpuRmuRr2Rpn!pyRqyRvtRstRwxRwxRAsRxsRCwRBwRGrRDrRIvRHvRMqRJqROuRNuRSpRPpRYtRTtRUuRVZRVZRWZRYpRZZRZ2S72Z72SnnZn2So2!onSon!o2!7n!72!82!nn!8n!n*v@7@0p4R3AR54R6nR6xR6AR6*@77@0p3R7mRoyR7AR9xRaARdxRezRfwRgzRjwRkyRlvRmyRpvRqxRruRsxRvuRwwRwtRxwRAtRBvRCsRDvRGsRHuRIrRJuRMrRNtROqRPtRSqRTsRUqRVtRV2S82Zm3Som!o3!8m!n*7v@@0pqRWYRY";

            const string prefix = "Arena";
            const string codeString = prefix + "," + rawCode;
            Code code = RasterApi.CreateCode(codeString);
            TokenList tokens = RasterApi.CodeToTokens(code);

            int tokenId = 0;
            int actualCount = 1;
            while (tokenId < tokens.Count)
            {
                //Skip pen changes, they are boring
                string str = tokens.GetToken(tokenId).ToString();

                if (str.StartsWith("Pen") == false)
                {
                    //Get clean triple-# padded numbering for filenames
                    string prependNumber = "";
                    if (actualCount < 100) prependNumber += "0";
                    if (actualCount < 10) prependNumber += "0";

                    string curCode = prefix + "-" + prependNumber  + actualCount + ",";
                    for (int i = 0; i <= tokenId; i++)
                    {
                        curCode += tokens.GetToken(i) + ";";
                    }
                    if (tokenId > 1)
                    {
                        Console.WriteLine("Token " + curCode);
                        ExecuteCodeToPng(curCode);
                        actualCount++;
                    }
                }
                tokenId++;
            }
        }
    }
}

