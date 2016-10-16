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
    //Implementation of ITransform, see for usage
    public class Transform
    {
        //Translation XYZ
        public double[] Translation { get; set; }

        //Rotation XYZ
        public double[] Rotation { get; set; }

        //Scale XYZ
        public double[] Scale { get; set; }

        //Constructor
        public Transform()
        {
            Translation = new double[3];
            Rotation = new double[3];
            Scale = new double[3];
        }

        //Copy properties from sourceTransform
        public void CopyFrom(Transform sourceTransform)
        {
            if (sourceTransform == null)
                return;

            //Translation.CopyFrom(sourceTransform.Translation);
            Translation[0] = sourceTransform.Translation[0];
            Translation[1] = sourceTransform.Translation[1];
            Translation[2] = sourceTransform.Translation[2];

            Rotation[0] = sourceTransform.Rotation[0];
            Rotation[1] = sourceTransform.Rotation[1];
            Rotation[2] = sourceTransform.Rotation[2];

            //Rotation.CopyFrom(sourceTransform.Rotation);
            //Scale.CopyFrom(sourceTransform.Scale);
            Scale[0] = sourceTransform.Scale[0];
            Scale[1] = sourceTransform.Scale[1];
            Scale[2] = sourceTransform.Scale[2];
        }

        //Readable description
        public override string ToString()
        {
            return "(Tfrm:T" + Translation[0] + "," + Translation[1] + "," + Translation[2] +
                        "/R" + Rotation[0] + ", " + Rotation[1] + "," + Rotation[2] + 
                        "/S" + Scale[0] + ", " + Scale[1] + ", " + Scale[2] + ")";
        }
    }
}
