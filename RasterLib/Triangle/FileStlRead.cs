#region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System;
using System.Collections.Generic;
using System.IO;

namespace GraphicsLib
{
    //Utility class for reading STL files
    public class FileStlRead
    {
        private FileStlRead() { }

        //Read an ascii STL file
        private static Triangles ReadFileAscii(string filename)
        {
            var trianglesList = new List<Triangle>();

            using (var reader = new StreamReader(filename))
            {
                Triangle triangle = null;
                int vertexcount = 0;
                while (reader.EndOfStream == false)
                {
                    string str = reader.ReadLine().TrimStart();
                    string command = str.Split(' ')[0];


                    if (command == "solid") { }
                    if (command == "facet")
                    {
                        //compact those open white spaces
                        str = str.Replace("  ", " ").Replace("  ", " ").Replace("  ", " ");
                        string[] splits = str.Split(' ');

                        triangle = new Triangle();
                        trianglesList.Add(triangle);

                        //flip y/z
                        triangle.Normal[0] = float.Parse(splits[2]);
                        triangle.Normal[2] = float.Parse(splits[3]);
                        triangle.Normal[1] = float.Parse(splits[4]);
                        vertexcount = 0;
                    }
                    if (command == "vertex")
                    {
                        str = str.Replace("  ", " ").Replace("  ", " ").Replace("  ", " ");
                        string[] splits = str.Split(' ');

                        //flip y/z
                        float x = float.Parse(splits[1]);
                        float z = float.Parse(splits[2]);
                        float y = float.Parse(splits[3]);

                        if (triangle != null)
                        {
                            if (vertexcount == 0)
                            {
                                triangle.Vertex1[0] = x;
                                triangle.Vertex1[1] = y;
                                triangle.Vertex1[2] = z;
                            }
                            if (vertexcount == 1)
                            {
                                triangle.Vertex2[0] = x;
                                triangle.Vertex2[1] = y;
                                triangle.Vertex2[2] = z;
                            }
                            if (vertexcount == 2)
                            {
                                triangle.Vertex3[0] = x;
                                triangle.Vertex3[1] = y;
                                triangle.Vertex3[2] = z;
                            }
                        }
                        vertexcount++;
                    }
                }
            }

            Triangles triangles = new Triangles(trianglesList.ToArray()) {Name = filename};
            return triangles;
        }

        //Read a binary STL file, or call the ascii reader
        public static Triangles ReadFile(string filename)
        {
            var trianglesList = new List<Triangle>();

            bool isAscii = false;

            using (var reader = new BinaryReader(File.Open(filename, FileMode.Open)))
            {
                if (reader.PeekChar() == 's')
                {
                    //If it's ascii, note so
                    isAscii = true;
                } 
            }

            if (isAscii)
            {
                //This is an ascii not binary file
                return ReadFileAscii(filename);
            }

            try
            {
                using (var reader = new BinaryReader(File.Open(filename, FileMode.Open)))
                {
                    //Header (80 bytes)read and discard
                    reader.ReadBytes(80);

                    //Facets (4 bytes)
                    UInt32 numTriangles = reader.ReadUInt32();

                    //Normals and vertices
                    for (int facet = 0; facet < numTriangles; facet++)
                    { 
                        var sf = new Triangle();

                        //Read normal = 3 floats
                        sf.Normal[0] = reader.ReadSingle();
                        sf.Normal[2] = reader.ReadSingle();
                        sf.Normal[1] = reader.ReadSingle();

                        //Read vertex 1 = 3 floats
                        sf.Vertex1[0] = reader.ReadSingle();
                        sf.Vertex1[2] = reader.ReadSingle();
                        sf.Vertex1[1] = reader.ReadSingle();

                        //Read vertex 2 = 3 floats
                        sf.Vertex2[0] = reader.ReadSingle();
                        sf.Vertex2[2] = reader.ReadSingle();
                        sf.Vertex2[1] = reader.ReadSingle();

                        //Read vertex 3 = 3 floats
                        sf.Vertex3[0] = reader.ReadSingle();
                        sf.Vertex3[2] = reader.ReadSingle();
                        sf.Vertex3[1] = reader.ReadSingle();

                        // ignore attribute_by_count 
                        reader.ReadUInt16();

                        trianglesList.Add(sf);
                    }
                    Triangles triangles = new Triangles(trianglesList.ToArray()) {Name = filename};

                    return triangles;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}
