#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion

namespace ScratchPad.Scratch
{
    public class ScratchControl
    {
        public string FileNameInCode { get; set; }
        public string FileNameInImage { get; set; }
        public string FileNameInStl { get; set; }
        public string FileNameInSvg { get; set; }

        public string[] FileNamesInStlLibrary { get; set; }
        public string FileNameOutStl { get; set; }
        public string FileNameOutStlPreview { get; set; }

        public bool FileNameOutOrthogonalAnimated { get; set; }
        public bool FileNameOutIsometricAnimated { get; set; }

        public string FileNameOutIsometric { get; set; }
        public int IsometricCellWidth { get; set; }
        public int IsometricCellHeight { get; set; }

        public byte[] IsometricBgRgba { get; set; }
        public string FileNameOutOrthogonal { get; set; }

        public bool OutputTokens { get; set; }
        public bool OutputRectangles { get; set; }
        public bool OutputSceneGraph { get; set; }
        public bool OutputRenderedAscii { get; set; }
        public bool OutputBytes { get; set; }

        public int[] Resize { get; set; }
    }
}
