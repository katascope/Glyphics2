﻿#region Copyright
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
using System.Text;
using System.Threading.Tasks;
//https://github.com/ephtracy/voxel-model/blob/master/MagicaVoxel-file-format-vox.txt

namespace RasterLib
{
    public class VoxFile_VoxelSet
    {
        public class VoxFile_Voxel
        {
            public int X;
            public int Y;
            public int Z;
            public int I;
        }

        public VoxFile_Voxel[] voxels;
        public VoxFile_VoxelSet(int size)
        {
            voxels = new VoxFile_Voxel[size];
            palette = default_palette;
        }
        public uint[] default_palette = {
	0x00000000, 0xffffffff, 0xffccffff, 0xff99ffff, 0xff66ffff, 0xff33ffff, 0xff00ffff, 0xffffccff, 0xffccccff, 0xff99ccff, 0xff66ccff, 0xff33ccff, 0xff00ccff, 0xffff99ff, 0xffcc99ff, 0xff9999ff,
	0xff6699ff, 0xff3399ff, 0xff0099ff, 0xffff66ff, 0xffcc66ff, 0xff9966ff, 0xff6666ff, 0xff3366ff, 0xff0066ff, 0xffff33ff, 0xffcc33ff, 0xff9933ff, 0xff6633ff, 0xff3333ff, 0xff0033ff, 0xffff00ff,
	0xffcc00ff, 0xff9900ff, 0xff6600ff, 0xff3300ff, 0xff0000ff, 0xffffffcc, 0xffccffcc, 0xff99ffcc, 0xff66ffcc, 0xff33ffcc, 0xff00ffcc, 0xffffcccc, 0xffcccccc, 0xff99cccc, 0xff66cccc, 0xff33cccc,
	0xff00cccc, 0xffff99cc, 0xffcc99cc, 0xff9999cc, 0xff6699cc, 0xff3399cc, 0xff0099cc, 0xffff66cc, 0xffcc66cc, 0xff9966cc, 0xff6666cc, 0xff3366cc, 0xff0066cc, 0xffff33cc, 0xffcc33cc, 0xff9933cc,
	0xff6633cc, 0xff3333cc, 0xff0033cc, 0xffff00cc, 0xffcc00cc, 0xff9900cc, 0xff6600cc, 0xff3300cc, 0xff0000cc, 0xffffff99, 0xffccff99, 0xff99ff99, 0xff66ff99, 0xff33ff99, 0xff00ff99, 0xffffcc99,
	0xffcccc99, 0xff99cc99, 0xff66cc99, 0xff33cc99, 0xff00cc99, 0xffff9999, 0xffcc9999, 0xff999999, 0xff669999, 0xff339999, 0xff009999, 0xffff6699, 0xffcc6699, 0xff996699, 0xff666699, 0xff336699,
	0xff006699, 0xffff3399, 0xffcc3399, 0xff993399, 0xff663399, 0xff333399, 0xff003399, 0xffff0099, 0xffcc0099, 0xff990099, 0xff660099, 0xff330099, 0xff000099, 0xffffff66, 0xffccff66, 0xff99ff66,
	0xff66ff66, 0xff33ff66, 0xff00ff66, 0xffffcc66, 0xffcccc66, 0xff99cc66, 0xff66cc66, 0xff33cc66, 0xff00cc66, 0xffff9966, 0xffcc9966, 0xff999966, 0xff669966, 0xff339966, 0xff009966, 0xffff6666,
	0xffcc6666, 0xff996666, 0xff666666, 0xff336666, 0xff006666, 0xffff3366, 0xffcc3366, 0xff993366, 0xff663366, 0xff333366, 0xff003366, 0xffff0066, 0xffcc0066, 0xff990066, 0xff660066, 0xff330066,
	0xff000066, 0xffffff33, 0xffccff33, 0xff99ff33, 0xff66ff33, 0xff33ff33, 0xff00ff33, 0xffffcc33, 0xffcccc33, 0xff99cc33, 0xff66cc33, 0xff33cc33, 0xff00cc33, 0xffff9933, 0xffcc9933, 0xff999933,
	0xff669933, 0xff339933, 0xff009933, 0xffff6633, 0xffcc6633, 0xff996633, 0xff666633, 0xff336633, 0xff006633, 0xffff3333, 0xffcc3333, 0xff993333, 0xff663333, 0xff333333, 0xff003333, 0xffff0033,
	0xffcc0033, 0xff990033, 0xff660033, 0xff330033, 0xff000033, 0xffffff00, 0xffccff00, 0xff99ff00, 0xff66ff00, 0xff33ff00, 0xff00ff00, 0xffffcc00, 0xffcccc00, 0xff99cc00, 0xff66cc00, 0xff33cc00,
	0xff00cc00, 0xffff9900, 0xffcc9900, 0xff999900, 0xff669900, 0xff339900, 0xff009900, 0xffff6600, 0xffcc6600, 0xff996600, 0xff666600, 0xff336600, 0xff006600, 0xffff3300, 0xffcc3300, 0xff993300,
	0xff663300, 0xff333300, 0xff003300, 0xffff0000, 0xffcc0000, 0xff990000, 0xff660000, 0xff330000, 0xff0000ee, 0xff0000dd, 0xff0000bb, 0xff0000aa, 0xff000088, 0xff000077, 0xff000055, 0xff000044,
	0xff000022, 0xff000011, 0xff00ee00, 0xff00dd00, 0xff00bb00, 0xff00aa00, 0xff008800, 0xff007700, 0xff005500, 0xff004400, 0xff002200, 0xff001100, 0xffee0000, 0xffdd0000, 0xffbb0000, 0xffaa0000,
	0xff880000, 0xff770000, 0xff550000, 0xff440000, 0xff220000, 0xff110000, 0xffeeeeee, 0xffdddddd, 0xffbbbbbb, 0xffaaaaaa, 0xff888888, 0xff777777, 0xff555555, 0xff444444, 0xff222222, 0xff111111
};
        public uint[] alternate_palette = null;
        public uint[] palette = null;
        public static VoxFile_VoxelSet ReadVox(string filename)
        {
            //Console.WriteLine(filename);
            VoxFile_VoxelSet voxels = null;
            byte[] bytes = File.ReadAllBytes(filename);

            if (bytes[0] != 'V' ||
                bytes[1] != 'O' ||
                bytes[2] != 'X')
            {
                throw new Exception("VOX header missing from " + filename);
            }
            int versionNumber = bytes[4];//4 bytes

            int index = 8;
            while (index < bytes.Length - 4)
            {
                if (bytes[index + 0] == 'M' &&
                    bytes[index + 1] == 'A' &&
                    bytes[index + 2] == 'I' &&
                    bytes[index + 3] == 'N')
                {
                    index += 4;
                    Console.Write("[MAIN]");
                    int chunkContent = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int chunkChildren = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    //Console.WriteLine("chunk content " + chunkContent + " children " + chunkChildren);
                }
                else if (bytes[index + 0] == 'P' &&
                         bytes[index + 1] == 'A' &&
                         bytes[index + 2] == 'C' &&
                         bytes[index + 3] == 'K')
                {
                    index += 4;
                    Console.Write("[PACK]");
                    int chunkContent = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int chunkChildren = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    //Console.WriteLine("chunk content " + chunkContent + " children " + chunkChildren);
                    int numModels = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    Console.Write(" numModels " + numModels);
                }
                else if (bytes[index + 0] == 'S' &&
                         bytes[index + 1] == 'I' &&
                         bytes[index + 2] == 'Z' &&
                         bytes[index + 3] == 'E')
                {
                    index += 4;
                    Console.Write("[SIZE]");
                    int chunkContent = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int chunkChildren = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    //Console.WriteLine("chunk content " + chunkContent + " children " + chunkChildren);
                    int sizeX = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int sizeY = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int sizeZ = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    Console.Write(" sxyz " + sizeX + "," + sizeY + "," + sizeZ);
                }
                else if (bytes[index + 0] == 'X' &&
                         bytes[index + 1] == 'Y' &&
                         bytes[index + 2] == 'Z' &&
                         bytes[index + 3] == 'I')
                {
                    index += 4;
                    Console.Write("[XYZI]");
                    int chunkContent = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int chunkChildren = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    //Console.WriteLine("chunk content " + chunkContent + " children " + chunkChildren);

                    int numVoxels = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    Console.Write(" voxels=" + numVoxels);

                    voxels = new VoxFile_VoxelSet(numVoxels);

                    for (int vox = 0; vox < numVoxels; vox++)
                    {
                        VoxFile_Voxel voxel = new VoxFile_Voxel()
                        {
                            X = bytes[index++],
                            Z = bytes[index++],
                            Y = bytes[index++],
                            I = bytes[index++]
                        };
                        voxels.voxels[vox] = voxel;
                    }
                }
                else if (bytes[index + 0] == 'R' &&
                         bytes[index + 1] == 'G' &&
                         bytes[index + 2] == 'B' &&
                         bytes[index + 3] == 'A')
                {
                    index += 4;
                    Console.Write("[RGBA]");
                    int chunkContent = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int chunkChildren = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    //Console.WriteLine("chunk content " + chunkContent + " children " + chunkChildren);

                    voxels.alternate_palette = new uint[256];
                    voxels.palette = voxels.alternate_palette;
                    for (int i = 0; i < 256; i++)
                    {
                        voxels.alternate_palette[i] |= (uint)(bytes[index++] << 0);
                        voxels.alternate_palette[i] |= (uint)(bytes[index++] << 8);
                        voxels.alternate_palette[i] |= (uint)(bytes[index++] << 16);
                        voxels.alternate_palette[i] |= (uint)(bytes[index++] << 24);
                    }
                }
                else if (bytes[index + 0] == 'M' &&
                         bytes[index + 1] == 'A' &&
                         bytes[index + 2] == 'T' &&
                         bytes[index + 3] == 'T')
                {
                    index += 4;
                    Console.Write("[MATT]");
                    int chunkContent = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    int chunkChildren = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    //Console.WriteLine("chunk content " + chunkContent + " children " + chunkChildren);
                    index += 4;//id
                    index += 4;//mat type
                    index += 4;// material weight

                    int propertyBits = bytes[index++] + (bytes[index++] << 8) + (bytes[index++] << 16) + (bytes[index++] << 24);
                    index += 4 * propertyBits;
                }

                //Console.Write(index+" ");
            }

            Console.WriteLine(" ok");
            return voxels;
        }
        public static void Vox2Glyc(string dirName, string name)
        {
            Console.Write("Vox2Glyc converting: " + name + " ... ");
            VoxFile_VoxelSet voxels = null;
            voxels = ReadVox(dirName + name + ".vox");

            Grid grid = RasterLib.RasterApi.CreateGrid(64, 64, 64, 4);

            for (int i = 0; i < voxels.voxels.Length; i++)
            {
                VoxFile_Voxel voxel = voxels.voxels[i];
                CellProperties cp = new CellProperties();

                byte r = (byte)voxel.I;
                byte g = (byte)voxel.I;
                byte b = (byte)voxel.I;
                byte a = (byte)voxel.I;
                r = (byte)((voxels.palette[voxel.I] >> 0) & 255);
                g = (byte)((voxels.palette[voxel.I] >> 8) & 255);
                b = (byte)((voxels.palette[voxel.I] >> 16) & 255);
                a = (byte)((voxels.palette[voxel.I] >> 24) & 255);

                cp.Rgba = RasterLib.RasterApi.Rgba2Ulong(r, g, b, a);
                grid.Plot(voxel.X, voxel.Y, voxel.Z, cp);
            }

            RectList rects = RasterLib.RasterApi.GridToRects(grid);
            RasterLib.Language.Code code = RasterLib.RasterApi.RectsToCode(rects);
            //Console.WriteLine(code.codeString);

            RasterLib.RasterApi.CodeToGlyC(dirName + name + ".glyc", name + ",\n" + code.codeString);
        }
    }
}

