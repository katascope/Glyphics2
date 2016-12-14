using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using SpaceLib;
using RasterLib;

namespace TextViewer
{
    class TextGrid
    {
        public static void DrawGrid(Dictionary<string, string> gsa2names, int avx, int avy, int avz, int ox, int oy, int oz, int rangeX, int rangeY, int rangeZ)
        {
            for (int z = -rangeZ; z <= rangeZ;z++ )
            {
                for (int x = -rangeX; x <= rangeX; x++)
                {
                    if ((x + ox) == avx && (z + oz) == avz)
                        Console.Write(String.Format("{0,-10}", "vvvvvvv"));
                    else Console.Write(String.Format("{0,-10}", "  "));
                }
                Console.WriteLine();
                for (int x = -rangeX; x <= rangeX; x++)
                {
                    string gsa = GridSpaceAddress.MakeString(x+ox,0+oy,z+oz);
                    if (gsa2names.ContainsKey(gsa))
                        Console.Write(String.Format("{0,-10}", gsa2names[gsa]));
                    else Console.Write(String.Format("{0,-10}", "" + (x + ox) + ",0," + (z + oz)));
                }
                Console.WriteLine();
                for (int x = -rangeX; x <= rangeX; x++)
                {
                    Console.Write(String.Format("{0,-10}", "" + (x+ox) + ",0," + (z+oz)));
                }
                Console.WriteLine();
                for (int x = -rangeX; x <= rangeX; x++)
                {
                    if ((x + ox) == avx && (z + oz) == avz)
                        Console.Write(String.Format("{0,-10}", "^^^^^^^"));
                    else Console.Write(String.Format("{0,-10}", "  "));
                }
                Console.WriteLine();
            }
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            int rangeX = 10;
            int rangeY = 1;
            int rangeZ = 10;
            string[,] stringGrid = new string[rangeX * 2, rangeZ * 2];

            SpaceLib.MegaGridClient client = new MegaGridClient("http://localhost:3838");
            Dictionary<string, string> gsa2names = client.GetNames(rangeX*2, rangeY, rangeZ*3);
            Dictionary<string, RectList> name2rects = client.Names2Rects(gsa2names);
            Console.WriteLine("Names and Rectangles resolved.");

            int avX = 0;
            int avY = 0;
            int avZ = 0;
            int viewX = 0;
            int viewY = 0;
            int viewZ = 0;
            char _lastKey = ' ';
            bool done = false;
            string name = "Roads";
            bool recordString = false;
            
            while (!done)
            {
                Console.Clear();
                //TextGrid.DrawGrid(stringGrid);
                TextGrid.DrawGrid(gsa2names, avX, avY, avZ, viewX, viewY, viewZ,rangeX, rangeY, rangeZ);
                if (Console.KeyAvailable)
                {
                    ConsoleKeyInfo key = Console.ReadKey();
                    _lastKey = key.KeyChar;

                    if (recordString)
                    {
                        if (_lastKey == '\r')
                        {
                            recordString = false;
                        }
                        else name += _lastKey;
                    }
                    else
                    {
                        if (_lastKey == 27) done = true;
                        switch (_lastKey)
                        {
                            case '/': recordString = true; name = "";  break;
                            case 'o': break;
                            case 'a': avX--; break;
                            case 'd': avX++; break;
                            case 's': avZ++; break;
                            case 'w': avZ--; break;
                            case 'j': viewX--; break;
                            case 'l': viewX++; break;
                            case 'i': viewZ++; break;
                            case 'k': viewZ--; break;
                            case ' ': name = gsa2names[GridSpaceAddress.MakeString(avX, avY, avZ)]; break;
                            case '\b': 
                                {
                                    GridSpaceAddress gsa = new GridSpaceAddress(avX, avY, avZ);
                                    gsa2names[gsa.ToString()] = name;
                                    client.RequestSetNameAtGSA(gsa, name);
                                    break;
                                }
                        }
                    }
                }
                Console.WriteLine("Clipboard: '"+name+"'");
                Thread.Sleep(25);
            }
        }
    }
}


