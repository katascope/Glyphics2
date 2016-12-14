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
using System.Xml.Linq;
using System.Globalization;
using System.Text;

namespace ScratchPad.Scratch
{
    class Svg2Gly
    {
        private static string ParseNode(XElement e)
        {
            string name = e.Name.ToString().Replace("{http://www.w3.org/2000/svg}", "").ToLower();
            IEnumerable<XAttribute> attributes = e.Attributes();

            string preComment = "";//"\n#" + name + "\n";
            //string postComment = "\n";

            if (true) //For debugging
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
                    if (a.Name == "width") w = Convert.ToInt32(a.Value.Replace("cm", ""));
                    if (a.Name == "height") h = Convert.ToInt32(a.Value.Replace("cm", ""));
                }
                return preComment + "Size3D4 " + w + " " + h + " 1;\n";
            }
            if (name == "text")
            {
                int x = 0;
                int y = 0;
                string prefixStr = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "x") x = (int)Convert.ToDouble(a.Value);
                    if (a.Name == "y") y = (int)Convert.ToDouble(a.Value);
                }
                return preComment + prefixStr + "String " + x + " " + y + " 0 " + "text";//e.FirstNode;
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

                return preComment + prefixStr + "Line " + x1 + " " + y1 + " 0 " + x2 + " " + y2 + " 0";
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
                string prefixStrFill = "";
                string prefixStrStroke = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "cx") x = Convert.ToInt32(a.Value);
                    if (a.Name == "cy") y = Convert.ToInt32(a.Value);
                    if (a.Name == "r") r = Convert.ToInt32(a.Value);
                    if (a.Name == "stroke")
                    {
                        filled = false;
                        WebColors2HexRGB.HexToColor(a.Value, ref red, ref green, ref blue);
                        prefixStrStroke += "PenColorD4 " + red + " " + green + " " + blue + " 255;\n";
                    }
                    if (a.Name == "fill")
                    {
                        if (a.Value.ToLower() != "none")
                        {
                            filled = true;
                            WebColors2HexRGB.HexToColor(a.Value, ref red, ref green, ref blue);
                            prefixStrFill += "PenColorD4 " + red + " " + green + " " + blue + " 255;\n";
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
                                prefixStrFill += "PenColorD4 " + red + " " + green + " " + blue + " 255;\n";
                            }
                            if (fields[0].ToLower() == "stroke")
                            {
                                WebColors2HexRGB.HexToColor(fields[1], ref red, ref green, ref blue);
                                prefixStrStroke += "PenColorD4 " + red + " " + green + " " + blue + " 255;\n";
                            }
                            if (fields[0].ToLower() == "stroke-width")
                            {
                                size = Convert.ToInt32(fields[1].Replace("px", ""));
                            }
                        }
                    }
                }


                if (size > 1)
                    prefixStrStroke += "PenSize " + size + " " + size + " 1;\n";
                else prefixStrStroke += "PenSize 1 1 1;\n";

                string retRect = preComment;
                if (filled) retRect += prefixStrFill + "FillCircle2DXY " + x + " " + y + " 0 " + r + ";\n";
                retRect += prefixStrStroke + "Circle2DXY " + x + " " + y + " 0 " + r + ";";
                return retRect;
            }
            if (name == "rect")
            {
                int x = 0;
                int y = 0;
                int w = 0;
                int h = 0;
                byte fillR = 0;
                byte fillG = 0;
                byte fillB = 0;
                byte strokeR = 0;
                byte strokeG = 0;
                byte strokeB = 0;
                int size = 1;
                bool filled = false;
                string prefixStrFill = "";
                string prefixStrStroke = "";
                foreach (XAttribute a in e.Attributes())
                {
                    if (a.Name == "x") x = Convert.ToInt32(a.Value);
                    if (a.Name == "y") y = Convert.ToInt32(a.Value);
                    if (a.Name == "width") w = Convert.ToInt32(a.Value);
                    if (a.Name == "height") h = Convert.ToInt32(a.Value);
                    if (a.Name == "stroke")
                    {
                        WebColors2HexRGB.HexToColor(a.Value, ref strokeR, ref strokeG, ref strokeB);
                        prefixStrStroke += "PenColorD3 " + strokeR + " " + strokeG + " " + strokeB + ";\n";
                    }
                    if (a.Name == "fill")
                    {
                        if (a.Value.ToLower() != "none")
                        {
                            filled = true;
                            WebColors2HexRGB.HexToColor(a.Value, ref fillR, ref fillG, ref fillB);
                            prefixStrFill += "PenColorD3 " + fillR + " " + fillG + " " + fillB + ";\n";
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
                                WebColors2HexRGB.HexToColor(fields[1], ref fillR, ref fillG, ref fillB);
                                prefixStrFill += "PenColorD3 " + fillR + " " + fillG + " " + fillB + ";\n";
                            }
                            if (fields[0].ToLower() == "stroke")
                            {
                                WebColors2HexRGB.HexToColor(fields[1], ref strokeR, ref strokeG, ref strokeB);
                                prefixStrStroke += "PenColorD4 " + strokeR + " " + strokeG + " " + strokeB + " 255;\n";
                            }
                            if (fields[0].ToLower() == "stroke-width")
                            {
                                size = Convert.ToInt32(fields[1].Replace("px", ""));
                            }
                        }
                    }
                }
                if (size > 1)
                    prefixStrFill += "PenSize " + size + " " + size + " 1;";

                string retRect = preComment;
                if (filled) retRect += prefixStrFill + "FillRect " + x + " " + y + " 0 " + (x + w) + " " + (y + h) + " 1;\n";
                retRect += prefixStrStroke + "Rect " + x + " " + y + " 0 " + (x + w) + " " + (y + h) + " 1;";
                return retRect;
            }
            return "";
        }

        private static string ConvertSvgElement2Glyphics(XElement e)
        {
            string name = e.Name.ToString().Replace("{http://www.w3.org/2000/svg}", "").ToLower();
            IEnumerable<XAttribute> attributes = e.Attributes();

            if (name == "g")
            {
                string result = "";
                foreach (XElement child in e.Elements())
                {
                    result += ParseNode(child);
                }
                return result;
            }
            else return ParseNode(e);
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
            return sb.ToString()+ "\nImgFlipY";
        }
    }
}
