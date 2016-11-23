﻿#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using RasterLib;

namespace RasterLib
{
    //Implementation of Element, see for usage
    public class Element
    {
        //Is element currently selected or not
        public bool IsSelected { get; set; }

        //Properties of element
        public CellProperties Properties { get; set; }

        //Transform information
        public Transform Transform { get; set; }

        //Constructor
        public Element()
        {
            Properties = new CellProperties();
            Transform = new Transform();
        }

        //Duplicate object
        public Element Clone()
        {
            Element newElement = new Element();

            newElement.Properties.CopyFrom(Properties);
            newElement.Transform.CopyFrom(Transform);
            return newElement;
        }

        //Readable description
        public override string ToString()
        {
            return "(" + Transform + "/" + Properties + ")";
        }
    }
}
