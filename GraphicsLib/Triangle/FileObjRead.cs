using System;
using System.Collections.Generic;
using System.IO;

namespace GraphicsLib
{
    //Utility class for reading OBJ files
    public class FileObjRead
    {
        private FileObjRead() { }

        public static Triangles ReadfileAscii(string filename)
        {
            using (var reader = new StreamReader(filename))
            {
                var triangles = new List<Triangle>();
                var vertices = new List<float[]>();

                while (reader.EndOfStream == false)
                {
                    string str = reader.ReadLine().TrimStart();
                    string command = str.Split(' ')[0];

                    if (String.CompareOrdinal("#", command)==0)
                    {
                        //Just a comment, ignore
                    }
                    if (String.CompareOrdinal("g", command)==0)
                    {
                        //g Object001
                    }
                    if (String.CompareOrdinal("v", command)==0)
                    {
                        //v 0.000000E+00 0.000000E+00 78.0000

                        string[] parts = str.Split(' ');
                        var x = (float)Convert.ToDouble(parts[1]);
                        var y = (float)Convert.ToDouble(parts[2]);
                        var z = (float)Convert.ToDouble(parts[3]);

                        //Flip y, z
                        float[] float3 = new float[] { x, z, y };// Float3(x, z, y);
                        vertices.Add(float3);
                    }
                    if (String.CompareOrdinal("f", command) == 0)
                    {
                        //f   1 2 3
                        str = str.Replace("  ", " ").Replace("  ", " ").Replace("  ", " ");
                        string[] parts = str.Split(' ');
                        int v1 = Convert.ToInt32(parts[1]) - 1;
                        int v2 = Convert.ToInt32(parts[2]) - 1;
                        int v3 = Convert.ToInt32(parts[3]) - 1;
 
                        Triangle triangle = new Triangle(
                                        vertices[v1][0],
                                        vertices[v1][1],
                                        vertices[v1][2],
                                        vertices[v2][0],
                                        vertices[v2][1],
                                        vertices[v2][2],
                                        vertices[v3][0],
                                        vertices[v3][1],
                                        vertices[v3][2]);

                        triangles.Add(triangle);
                    }
                }
                Triangles triangleSet = new Triangles();
                triangleSet.SetTriangles(triangles.ToArray());
                return triangleSet;
            }
        }
    }
}
                        
                        