#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using GraphicsLib;
using RasterLib;
using RasterLib.Language;

namespace ScratchPad.Scratch
{
    class ControlAnimator
    {
        static void ExecuteCodeToPng(ScratchControl ctl, string code)
        {
            //Glyphics codeString object
            Code rasterCode =RasterLib.RasterApi.CreateCode(code);

            //Save final result to PNG file
            string filenameOrthogonal = "..\\..\\" +RasterLib.RasterApi.CodeToCodename(rasterCode).Name + "-Ortho.PNG";
            string filenameIsometric = "..\\..\\" +RasterLib.RasterApi.CodeToCodename(rasterCode).Name + "-Isometric.PNG";

            //Execute, render, and save to png
            Grid grid =RasterLib.RasterApi.CodeToGrid(rasterCode);

            //Save png's to each
            if (ctl.FileNameOutOrthogonalAnimated)
                GraphicsApi.SaveFlatPng(filenameOrthogonal, GraphicsApi.Renderer.RenderObliqueCells(grid));

            if (ctl.FileNameOutIsometricAnimated)
                GraphicsApi.SaveFlatPng(filenameIsometric, GraphicsApi.Renderer.RenderIsometricCellsScaled(grid,
                    ctl.IsometricBgRgba[0],
                    ctl.IsometricBgRgba[1],
                    ctl.IsometricBgRgba[2],
                    ctl.IsometricBgRgba[3],
                    ctl.IsometricCellWidth, ctl.IsometricCellHeight));
        }

        public static void DoAnimation(ScratchControl ctl, string rawCode, string prefix)
        {
            if (rawCode.Contains(",")) rawCode = rawCode.Split(',')[1].TrimStart();
            string codeString = prefix + "," + rawCode;
            Code code =RasterLib.RasterApi.CreateCode(codeString);
            TokenList tokens =RasterLib.RasterApi.CodeToTokens(code);

            int tokenId = 0;
            int actualCount = 1;
            while (tokenId < tokens.Count)
            {
                Console.WriteLine(tokenId + " / " + tokens.Count);

                //Skip pen changes, they are boring
                string str = tokens.GetToken(tokenId).ToString();

                if (str.StartsWith("Pen") == false)
                {
                    //Get clean triple-# padded numbering for filenames
                    string prependNumber = "";
                    if (actualCount < 100) prependNumber += "0";
                    if (actualCount < 10) prependNumber += "0";

                    string curCode = prefix + "-" + prependNumber + actualCount + ",";
                    for (int i = 0; i <= tokenId; i++)
                    {
                        curCode += tokens.GetToken(i) + ";";
                    }
                    if (tokenId > 1)
                    {
                        //Console.WriteLine("Token " + curCode);
                        ExecuteCodeToPng(ctl, curCode);
                        actualCount++;
                    }
                }
                tokenId++;
            }
        }
    }
}
