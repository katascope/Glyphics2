using System;
using System.Collections.Generic;
using System.Xml.Linq;
using System.Globalization;
using System.Text;

namespace ScratchPad.Scratch
{
    class Svg2Gly
    {
        private static string ConvertSvgElement2Glyphics(XElement e)
        {
            string name = e.Name.ToString().Replace("{http://www.w3.org/2000/svg}", "").ToLower();
            IEnumerable<XAttribute> attributes = e.Attributes();

            if (false) //For debugging
            {
                Console.WriteLine("" + name);
                foreach (XAttribute x in e.Attributes())
                    Console.WriteLine(" e." + x.Name + " = " + x.Value);
            }

            if (name == "svg")
            {
                int w = 0;
                int h = 0;
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "width") w = Convert.ToInt32(a.Value);
                    if (a.Name == "height") h = Convert.ToInt32(a.Value);
                }
                return "Size3D4 " + w + " " + h + " 1;";
            }
            if (name == "text")
            {
                int x = 0;
                int y = 0;
                string prefixStr = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "x") x = Convert.ToInt32(a.Value);
                    if (a.Name == "y") y = Convert.ToInt32(a.Value);
                }
                return prefixStr + "String " + x + " " + y + " 0 " + e.FirstNode;
            }
            if (name == "line")
            {
                int x1 = 0;
                int y1 = 0;
                int x2 = 0;
                int y2 = 0;
                string prefixStr = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "x1") x1 = Convert.ToInt32(a.Value);
                    if (a.Name == "y1") y1 = Convert.ToInt32(a.Value);
                    if (a.Name == "x2") x2 = Convert.ToInt32(a.Value);
                    if (a.Name == "y2") y2 = Convert.ToInt32(a.Value);
                }

                return prefixStr + "Line " + x1 + " " + y1 + " 0 " + x2 + " " + y2 + " 0";
            }
            if (name == "circle")
            {
                int x = 0;
                int y = 0;
                int r = 0;
                byte red = 0;
                byte green = 0;
                byte blue = 0;
                int size = 1;
                bool filled = false;
                string prefixStr = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "x") x = Convert.ToInt32(a.Value);
                    if (a.Name == "y") y = Convert.ToInt32(a.Value);
                    if (a.Name == "r") r = Convert.ToInt32(a.Value);
                    if (a.Name == "stroke")
                    {
                        filled = false;
                        WebColors2HexRGB.HexToColor(a.Value, ref red, ref green, ref blue);
                        prefixStr += "PenColorD3 " + red + " " + green + " " + blue + ";";
                    }
                    if (a.Name == "fill")
                    {
                        if (a.Value.ToLower() != "none")
                        {
                            filled = true;
                            WebColors2HexRGB.HexToColor(a.Value, ref red, ref green, ref blue);
                            prefixStr += "PenColorD3 " + red + " " + green + " " + blue + ";";
                        }
                    }
                    if (a.Name == "stroke-width")
                    {
                        size = Convert.ToInt32(a.Value);
                    }
                    if (a.Name == "style")
                    {
                        string[] parts = a.Value.Split(';');
                        foreach (string part in parts)
                        {
                            string[] fields = part.Trim().Split(':');
                            if (fields[0].ToLower() == "fill")
                            {
                                filled = true;
                                WebColors2HexRGB.HexToColor(fields[1], ref red, ref green, ref blue);
                                prefixStr += "PenColorD3 " + red + " " + green + " " + blue + ";";
                            }
                        }
                    }
                }
                if (size > 1)
                    prefixStr += "PenSize " + size + " " + size + " 1;";
                if (filled)
                    return prefixStr + "FillCircle2DXY " + x + " " + y + " 0 " + r;
                else return prefixStr + "Circle2DXY " + x + " " + y + " 0 " + r;
            }
            if (name == "rect")
            {
                int x = 0;
                int y = 0;
                int w = 0;
                int h = 0;
                byte red = 0;
                byte green = 0;
                byte blue = 0;
                int size = 1;
                bool filled = false;
                string prefixStr = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "x") x = Convert.ToInt32(a.Value);
                    if (a.Name == "y") y = Convert.ToInt32(a.Value);
                    if (a.Name == "width") w = Convert.ToInt32(a.Value);
                    if (a.Name == "height") h = Convert.ToInt32(a.Value);
                    if (a.Name == "stroke")
                    {
                        filled = false;
                        WebColors2HexRGB.HexToColor(a.Value, ref red, ref green, ref blue);
                        prefixStr += "PenColorD3 " + red + " " + green + " " + blue + ";";
                    }
                    if (a.Name == "fill")
                    {
                        if (a.Value.ToLower() != "none")
                        {
                            filled = true;
                            WebColors2HexRGB.HexToColor(a.Value, ref red, ref green, ref blue);
                            prefixStr += "PenColorD3 " + red + " " + green + " " + blue + ";";
                        }
                    }
                    if (a.Name == "stroke-width")
                    {
                        size = Convert.ToInt32(a.Value);
                    }
                    if (a.Name == "style")
                    {
                        string[] parts = a.Value.Split(';');
                        foreach (string part in parts)
                        {
                            string[] fields = part.Trim().Split(':');
                            if (fields[0].ToLower() == "fill")
                            {
                                filled = true;
                                WebColors2HexRGB.HexToColor(fields[1], ref red, ref green, ref blue);
                                prefixStr += "PenColorD3 " + red + " " + green + " " + blue + ";";
                            }
                        }
                    }
                }
                if (size > 1)
                    prefixStr += "PenSize " + size + " " + size + " 1;";

                if (filled)
                    return prefixStr + "FillRect " + x + " " + y + " 0 " + (x + w) + " " + (y + h) + " 0";
                else return prefixStr + "Rect " + x + " " + y + " 0 " + (x + w) + " " + (y + h) + " 0";
            }

            return "";
        }

        public static string ConvertSvg2Gly(string filename)
        {
            XDocument document = XDocument.Load(filename);
            //XDocument document = XDocument.Parse(svgText);
            XElement svg_Element = document.Root;

            StringBuilder sb = new StringBuilder();
            sb.Append(ConvertSvgElement2Glyphics(svg_Element));

            foreach (XElement e in svg_Element.Elements())
            {
                sb.Append(ConvertSvgElement2Glyphics(e) + "\n");
            }
            return sb.ToString();
        }
    }
}
