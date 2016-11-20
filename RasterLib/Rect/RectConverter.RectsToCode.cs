﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Text;
using GraphicsLib.Language;
using GraphicsLib.Utility;
using GraphicsLib;

namespace GraphicsLib
{
    public partial class RectConverter
    {
        //Converts a set of rectangles back into Glyphics codeString that can be modified/executed
        public static Code RectsToCode(RectList rects)
        {
            ulong rgba = 0x12345678;//Set to unlikely initial color, then detect changes

            var sb = new StringBuilder();

            string sizeStr = "Size3D4 " + (rects.Boundaries.Width + 1) + " " + (rects.Boundaries.Height + 1) + " " + (rects.Boundaries.Depth + 1);
            sb.Append(sizeStr);

            foreach (Rect rect in rects)
            {
                if (rect.Properties.Rgba != rgba) //Only emit PenColor when it changes
                {
                    rgba = rect.Properties.Rgba;
                    byte r, g, b, a;
                    Converter.Ulong2Rgba(rect.Properties.Rgba, out r, out g, out b, out a);
                    string rgbaStr = ";PenColorD4 " + r + " " + g + " " + b + " " + a;
                    sb.Append(rgbaStr);
                }
                sb.Append(";FillRect " + rect.Pt1[0] + " " + rect.Pt1[1] + " " + rect.Pt1[2] + " " + rect.Pt2[0] + " " + rect.Pt2[1] + " " + rect.Pt2[2]);
            }

            string codeStr = sb.ToString();
            return new Code(codeStr);
        }
    }
}
