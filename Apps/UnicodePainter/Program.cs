using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using GraphicsLib;
using RasterLib;

//http://us.battle.net/forums/en/wow/topic/20752275058?page=3#post-51

namespace UnicodePainter
{
    class Program
    {
        //✴️⚪️⚫⬜⬛
        //⬛️ ⬜️ ◼️ ◻️ ◾️ ◽️
        //static string zodiac = "▖▗▘▙▚▛▜▝▞▟";
        //string binZodiac = "▗▖";
        //static string zodiac = "▖▚▙▜";

        static string zodiac =
            "░▒▓█";
//"░▓█";
/*███▄█████▄▄
▓▓▓█░░░░░░░██
▓▓▓█░░░░░░░██
▓▓▓█░░░░░░░██
▓▓▓█░░░░░░░██
███▀░░░███▀▀
░░░█░░░█░░
░░░░█░░█░░
░░░░█░░█░░
░░░░░▀▀░░░*/

        //    "@#$%^&*";


        //"▁▂▃▅▆▇";
        
            //"░▒▓";
        //    "▁▂▃▅▆▇";
        //"✶✷✸✹";

        //static string zodiac = "░▒▓";
        //"▢▣▤▥▦▧▨▩";
        //static string zodiac = "✴️⚫️⚪️\u2648\uFE0F\u2649\uFE0F\u264A\uFE0F\u264B\uFE0F\u264C\uFE0F\u264D\uFE0F\u264E\uFE0F\u264F\uFE0F\u2650\uFE0F\u2651\uFE0F\u2652\uFE0F\u2653\uFE0F";
        //static string zodiac = "\u2648\uFE0F\u2649\uFE0F\u264A\uFE0F\u264B\uFE0F\u264C\uFE0F\u264D\uFE0F\u264E\uFE0F\u264F\uFE0F\u2650\uFE0F\u2651\uFE0F\u2652\uFE0F\u2653\uFE0F";
        static List<ulong> rgbV = new List<ulong>();
        static string Rgb2UnicodeChar(byte r, byte g, byte b)
        {
            double h,s,l;
            RasterLib.Utility.Converter.Rgb2Hsl(r, g, b, out h, out s, out l);

            double minDistance = 100000;
            int minIndex = 0;
            int limit = rgbV.Count;
            //limit = 2;
            for (int i=0;i<limit;i++)            
            {
                ulong rgb = rgbV[i];
                byte r2, g2, b2, a2;

                RasterLib.RasterApi.Ulong2Rgba(rgb, out r2, out g2, out b2, out a2);

                //greyscale conversion
                byte lum = (byte)((r2 + g2 + b2) / 3);
                r2 = g2 = b2 = lum;
                r = g = b = (byte)((r + g + b) / 3);

                    
                    double distance = Math.Sqrt((int)((int)r2 - r) * (int)((int)r2 - r) +
                                                (int)((int)g2 - g) * (int)((int)g2 - g) +
                                                (int)((int)b2 - b) * (int)((int)b2 - b));

               
                double h2, s2, l2;
                RasterLib.Utility.Converter.Rgb2Hsl(r2, g2, b2, out h2, out s2, out l2);

//                double distance = Math.Abs(h2 - h);
                /*double distance = Math.Sqrt((int)((int)h2 - h) * (int)((int)h2 - h) +
                                            //(int)((int)s2 - s) * (int)((int)s2 - s))
                                            (int)((int)l2 - l) * (int)((int)l2 - l));
                */
                if (distance < minDistance)
                {
                    minDistance = distance;
                    minIndex = i;
                }
            }

            return "" + zodiac[minIndex * 1 + 0];// +zodiac[minIndex * 2 + 1];
        }
        [STAThread]
        static void Main(string[] args)
        {

            //for (int i=0;i<zodiac.Length;i+=2)
            //s{
              //  Console.WriteLine("{0:X}, {1:X} ",(uint)zodiac[i], (uint)zodiac[i+1]);
            //}

            byte[] unicodeBytes = Encoding.Unicode.GetBytes(zodiac);

//♈️ ♉️ ♊️ ♋️ ♌️ ♍️ ♎️ ♏️ ♐️ ♑️ ♒️ ♓️

            int bands = zodiac.Length;
            for (int i = 0; i < bands;i++ )
            {
                byte v = (byte)(i * (255/bands));
                rgbV.Add(RasterLib.RasterApi.Rgba2Ulong(v,v,v, 255));
            }

              //  rgbV.Add(RasterLib.RasterApi.Rgba2Ulong(0, 0, 0, 0));
            //rgbV.Add(RasterLib.RasterApi.Rgba2Ulong(0, 0, 0, 0));
            //rgbV.Add(RasterLib.RasterApi.Rgba2Ulong(255,255,255,255));
            /*
            for (int i = 0; i < 360; i += 30)
            {
                ulong rgb = RasterLib.Utility.Converter.Hsl2Rgb(i, 100, 49);
                byte r, g, b, a;
                RasterLib.RasterApi.Ulong2Rgba(rgb, out r, out g, out b, out a);
                Console.WriteLine("hue "+i + " - rgb " + r + "," + g + "," + b + "," + a);
                rgbV.Add(rgb);
            }*/

            Grid gridIn = GraphicsApi.PngToGrid("c:\\github\\logo.png");

            string str = "";
            using (var file = new System.IO.StreamWriter("testUnicode.txt", false, Encoding.Unicode))
            {
                for (int y = 0; y <gridIn.SizeY; y++)
                {
                    for (int x = 0;x<gridIn.SizeX;x++)
                    {
                        CellProperties cp = gridIn.GetProperty(x, y, 0);
                        byte r, g, b, a;
                        RasterLib.RasterApi.Ulong2Rgba(cp.Rgba, out r, out g, out b, out a);

                        string character = Rgb2UnicodeChar(r, g, b);

                        file.Write(character);
                        Console.Write(character);
                        str += character;
                    }
                    file.WriteLine();
                    str += "\n";
                }
            }
            Clipboard.SetText(str);
        }        
    }
}

    
