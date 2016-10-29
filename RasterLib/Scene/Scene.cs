#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Text;
using System.Collections;
using System.Collections.Generic;

namespace RasterLib
{
    //Implementation of Scene, see for usage
    public class Scene : IEnumerable<Element>
    {
        private readonly List<Element> _elements;

        //Number of elements in list
        public int Count { get { return _elements.Count; } }

        //Constructor
        public Scene()
        {
            _elements = new List<Element>();
        }

        //Get element at id, null if out of range
        public Element GetScene(int id)
        {
            if (id >= 0 && id < _elements.Count)
                return _elements[id];
            return null;
        }

        //Add element to the list
        public void AddElement(Element element)
        {
            if (!_elements.Contains(element))
                _elements.Add(element);
        }

        //Duplicate object
        public Scene Clone()
        {
            Scene scene = new Scene();
            
            foreach (Element element in _elements)
            {
                scene.AddElement(element.Clone());
            }
            return scene;
        }

        //Readable description
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append(_elements.Count+ " elements\n");
            foreach (Element element in _elements)
            {
                sb.Append(element + "\n");
            }
            return sb.ToString();
        }

        //Make enumerable instead
        #region Implementation of IEnumerable
        public IEnumerator<Element> GetEnumerator()
        {
            return _elements.GetEnumerator();
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
        #endregion

    }
}
