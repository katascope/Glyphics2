using System.Collections.Generic;
using System.Linq;
using System.Text;
using RasterLib.Utility;
using RasterLib;

namespace RasterLib
{
    class IndexedTriangles
    {
        public List<float[]> Vertices { get; private set; }
        public List<ulong> Colors { get; private set; }
        public List<int[]> Faces { get; private set; }

        public string VerticesString
        {
            get
            {
                var sb = new StringBuilder();

                float offsetX = -32;
                float offsetY = -32;
                float offsetZ = -32;

                float reflectX = 1;
                float reflectY = 1;
                float reflectZ = -1;

                foreach (float[] f3 in Vertices)
                {
                    f3[0] += offsetX;
                    f3[1] += offsetY;
                    f3[2] += offsetZ;
                    f3[0] *= reflectX;
                    f3[1] *= reflectY;
                    f3[2] *= reflectZ;
                    string str = " " + f3[0] + "," + f3[1] + "," + f3[2] + ",";
                    if (f3 == Vertices.Last()) str = str.TrimEnd(',');
                    sb.Append(str + "\r\n");
                }

                return sb.ToString();
            }
        }

        public string ColorsString
        {
            get
            {
                var sb = new StringBuilder();

                /*foreach (Float3 f3 in Vertices)
                {
                    sb.Append(" " + f3.X + "," + f3.Y + "," + f3.Z + ",\r\n");
                }*/
                //foreach (ulong rgba in Colors)
                for (int i = 0; i < Colors.Count;i++)
                {
                    ulong rgba = Colors[i];
                    byte r, g, b, a;
                    Converter.Ulong2Rgba(rgba, out r, out g, out b, out a);
                    string str = " "
                        + (r / (float)255) + ","
                        + (g / (float)255) + ","
                        + (b / (float)255) + ",";
                    //+ (a / (float)255) + ",";
                    if (i == Colors.Count-1) str = str.TrimEnd(',');
                    sb.Append(str + "\r\n");
                }

                return sb.ToString();
            }
        }

        public string FacesString
        {
            get
            {
                var sb = new StringBuilder();

                foreach (int[] i3 in Faces)
                {
                    string str = " " + i3[0] + "," + i3[1] + "," + i3[2] + ",";
                    if (i3 == Faces.Last()) str = str.TrimEnd(',');
                    sb.Append(str + "\r\n");
                }

                return sb.ToString();
            }
        }

        public IndexedTriangles(Triangles triangles)
        {
            //Indexer doesn't *actually* have to try and reduce..

            Vertices = new List<float[]>();
            Colors = new List<ulong>();
            Faces = new List<int[]>();

            int faceId = 0;
            Triangle[] triangleSet = triangles.GetTriangleArray();

            foreach (Triangle triangle in triangleSet)
            {
                Colors.Add(triangle.Properties.Rgba);
                Colors.Add(triangle.Properties.Rgba);
                Colors.Add(triangle.Properties.Rgba);
                Vertices.Add(triangle.Vertex1);
                Vertices.Add(triangle.Vertex2);
                Vertices.Add(triangle.Vertex3);
                //Int3 i3 = new Int3(faceId, faceId + 1, faceId + 2);
                int[] i3 = new int[] { faceId, faceId + 1, faceId + 2 };
                faceId += 3;
                Faces.Add(i3);
            }
        }
    }
}
