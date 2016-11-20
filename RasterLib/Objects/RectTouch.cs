#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace GraphicsLib
{
    public class RectTouch
    {
        //Will return true if rectangles touch, including edges/corners
        public static bool TouchesAnywhere(Rect rect1, Rect rect2)
        {
            return !((rect1.Pt1[0] > rect2.Pt2[0] || rect2.Pt1[0] > rect1.Pt2[0]) ||
                     (rect1.Pt1[1] > rect2.Pt2[1] || rect2.Pt1[1] > rect1.Pt2[1]) ||
                     (rect1.Pt1[2] > rect2.Pt2[2] || rect2.Pt1[2] > rect1.Pt2[2]));
        }

        //Will return true if rectangle faces touch, but not just edges/corners touch
        public static bool TouchesFaces(Rect rect1, Rect rect2)
        {
            //If 1 true -> corner, 2 true -> edge, 3 true -> face
            bool tx = (rect1.Pt1[0] >= rect2.Pt2[0] || rect2.Pt1[0] >= rect1.Pt2[0]);
            bool ty = (rect1.Pt1[1] >= rect2.Pt2[1] || rect2.Pt1[1] >= rect1.Pt2[1]);
            bool tz = (rect1.Pt1[2] >= rect2.Pt2[2] || rect2.Pt1[2] >= rect1.Pt2[2]);

            //So if 2 or 3, then is a corner or an edge and "doesn't touch"
            if ((tx && ty) || (tx && tz) || (ty && tz)) return false;

            //If just 1 or 0, then "it touches"
            return true;
        }
    }
}
