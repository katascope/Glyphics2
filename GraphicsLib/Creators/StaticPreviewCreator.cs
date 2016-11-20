using System;
using System.IO;
using System.Collections.Generic;
using GraphicsLib.Language;

namespace GraphicsLib.Creators
{
    public class StaticPreviewCreator
    {
        public static void Create(Digest digest, string destinationFolder)
        {
            using (var file = new System.IO.StreamWriter(destinationFolder + "static.html"))
            {
                file.WriteLine("<title>Grid Digest</title>");
                file.WriteLine("<h1>Grid Digest</h1>");
                foreach (CompiledCode cc in digest.codes)
                {
                    //file.WriteLine("<a href=\"deserializer.html?serialized={0}\">", cc.SerializedRects);
                    file.WriteLine("<a href=\"{0}.html\">", cc.name);
                    file.WriteLine("<img src=\"{0}\" width=128 height=128>", Path.GetFileName(cc.isometricGridThumbFilename));
                    file.WriteLine("</a>");
                }
            }
        }
    }
}
