 #region Copyright
/*Copyright (c) 2015, Katascope
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source codeString must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DRect, INDRect, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/
#endregion
using System.Collections.Generic;

namespace RasterLib.Language
{
    /* legend
     * w - width
     * h - height
     * d - depth
     * v - value
     * r - red
     * g - green
     * b - blue
     * a - alpha
     * x - x or x1
     * y - y or y1
     * z - z or z1
     * X - x2
     * Y - y2
     * Z - z2
     * */

    //Enums here both help identify the glyphs.. and binds them to a number permanently so bytecode is reusable
    public enum GlyphId
    {
        //Prima Glyphs
        //Rules:
        // RGBA grids, always 3-dimensional
        // A pen, rect, and fill rect for drawing
        // No other operations, no "nop" operations.
        PrimaNop  = 0,//Nothingness
        PrimaSize = 1,// Size XYZ, assume RGBA
        PrimaRgba = 2,// Pen Color, assume RGBA
        PrimaRect = 3,// FillRect, with pen
/*
        Reserved1= 4,
        Reserved2= 5,
        Reserved3= 6,
        Reserved4= 7,
        Reserved5= 8,
        Reserved6= 9,
        Reserved7 = 10,
        Reserved8 = 11,
        Reserved9 = 12,
        Reserved10 = 13,
*/
        PenColorD1 ,
        PenColorD2 ,
        PenColorD3 ,
        PenColorD4 ,
        PenWidth   ,
        PenHeight  ,
        PenDepth   ,
        PenSize    ,
        PenHatch   ,

        PenShape   ,
        PenTex     ,
        PenGroup   ,
        PenPhysics ,

        Scissor    ,
        Clear      ,
        Plot       ,

        Line       ,
        Rect       ,
        FillRect   ,

        MaskRect       ,
        MaskFillRect   ,

        TubeXy         ,  
        TubeXz         ,
        TubeYz         , 

        Stairs         ,
        ExtrudeLine    , 
        Triangle       , 
        FillTriangle2D ,
        Polygon        ,

        ArcXy          ,
        ArcXz          ,
        ArcYz          ,
        Circle3D       ,
        Circle2D       ,
        Circle2Dxy     , 
        Circle2Dyz     , 
        Circle2Dxz     , 

        Oval3D         ,
        Diamond2D      ,
        Quad2D         ,
        Pyramid3D      ,

        FillCircle2D   ,
        FillCircle2Dxy ,
        FillCircle2Dyz ,
        FillCircle2Dxz ,
        FillCircle3D   ,

        ExtrudeX       ,  
        ExtrudeY       ,  
        ExtrudeZ       ,  

        ImgFlipX       ,
        ImgFlipY       ,
        ImgFlipZ       ,
        ImgMirrorX     ,
        ImgMirrorY     ,
        ImgMirrorZ     ,

        ImgPalettize   ,
        ImgInvert      ,
        ImgGrayscale   ,
        ImgColorize    ,
        ImgHueshift    ,
        ImgSaturate    ,
        ImgBrightness  ,
        ImgRotX        ,
        ImgRotY        ,
        ImgRotZ        ,

        ImgShadeX      ,
        ImgShadeY      ,
        ImgShadeZ      ,

        ImgEdge        , 
        ImgEdgeX       ,
        ImgEdgeY       ,
        ImgEdgeZ       ,

        FilterBlur     ,
        FilterMotion   ,
        FilterEdgeHor  ,
        FilterEdgeVer  ,
        FilterEdgeAll  ,
        FilterSharpen  ,
        FilterEmboss   ,
        FilterSmooth   ,

        Genesis3D      ,
        Spawn          ,

        Pal1D          ,
        Pal2D          ,
        Pal3D          ,
        PalFromVal1D   ,
        PalFromVal2D   ,
        PalFromVal3D   ,
        PalFromGrid1D  ,
        PalFromGrid2D  ,
        PalFromGrid3D  ,
        PalGen1D1      ,
        PalGen1D2      ,
        PalGen1D3      ,
        PalGen1D4      ,
                       
        Blit1D         ,
        Blit2D         ,
        Blit3D         ,
        RectBlit1D     ,
        RectBlit2D     ,
        RectBlit3D     ,
        BlendBlit1D    ,
        BlendBlit2D    ,
        BlendBlit3D    ,
                       
        ArchPut        ,
        ArchLine       ,
        ArchRect       ,
                       
        GenChaos       ,
        Alien          ,
        Star           ,
        Text           ,
        WallCube       ,
        CornerSupports ,
        Supports       ,
        UpV            ,
                       
        FillTriangle   ,
        Shadows        ,
        Maze           ,
                       
        Size1D1        ,
        Size2D1        ,
        Size3D1        ,
        Size1D2        ,
        Size2D2        ,
        Size3D2        ,
        Size1D3        ,
        Size2D3        ,
        Size3D3        ,
        Size1D4        ,
        Size2D4        ,
        Size3D4        ,
                       
        EdgeCorners    ,
        ShapeToColor   ,
        ShapeSmoothX   ,
        ShapeSmoothY   ,
        ShapeSmoothZ   ,
                       
        End            ,
                       
        FillStairs     ,
        Put            ,
        PutGroup       ,
        ScalePut       ,
        Wire           ,
        String
    };

    public static class Glyphs
    {
        private static Dictionary<int, Glyph> _glyphIdLookupTable;

        private static readonly Glyph[] GlyphDefs = 
            {
#region Prima
                new Glyph(GlyphId.PrimaNop,         "Nop",                  0,    0,  "", "No operation" ),
                new Glyph(GlyphId.PrimaSize,        "PrimaSize",            0,    3,  "x y z", "PrimaSize" ),
                new Glyph(GlyphId.PrimaRgba,        "PrimaRGBA",            0,    4,  "r g b a", "PrimaRGBA" ),
                new Glyph(GlyphId.PrimaRect,        "PrimaRect",            0,    6,  "x y z X Y Z", "Prima Fill Rect" ),
#endregion Prima
#region ByteGrid
                new Glyph(GlyphId.Size1D1,        "Size1D1",            0,    1,  "w", "Create 1-byte 1D grid of <width>" ),
                new Glyph(GlyphId.Size2D1,        "Size2D1",            0,    2,  "w h", "Create 1-byte 2D grid of <width> <height>" ),
                new Glyph(GlyphId.Size3D1,        "Size3D1",            0,    3,  "w h d", "Create 1-byte 3D grid of <width> <height> <depth>" ),
                new Glyph(GlyphId.Size1D2,        "Size1D2",            0,    1,  "w", "Create 2-byte 1D grid of <width>" ),
                new Glyph(GlyphId.Size2D2,        "Size2D2",            0,    2,  "w h", "Create 2-byte 2D grid of <width> <height>" ),
                new Glyph(GlyphId.Size3D2,        "Size3D2",            0,    3,  "w h d", "Create 2-byte 3D grid of <width> <height> <depth>" ),
                new Glyph(GlyphId.Size1D3,        "Size1D3",            0,    1,  "w", "Create 3-byte 1D grid of <width>" ),
                new Glyph(GlyphId.Size2D3,        "Size2D3",            0,    2,  "w h", "Create 3-byte 2D grid of <width> <height>" ),
                new Glyph(GlyphId.Size3D3,        "Size3D3",            0,    3,  "w h d", "Create 3-byte 3D grid of <width> <height> <depth>" ),
                new Glyph(GlyphId.Size1D4,        "Size1D4",            0,    1,  "w", "Create 4-byte 1D grid of <width>" ),
                new Glyph(GlyphId.Size2D4,        "Size2D4",            0,    2,  "w h", "Create 4-byte 2D grid of <width> <height>" ),
                new Glyph(GlyphId.Size3D4,        "Size3D4",            0,    3,  "w h d", "Create 4-byte 3D grid of <width> <height> <depth>" ),
                new Glyph(GlyphId.PenColorD1,     "PenColorD1",         0,    1,  "v", "Set Pen rgba <v>"),
                new Glyph(GlyphId.PenColorD2,     "PenColorD2",         0,    2,  "v v", "Set Pen rgba <v1> <v2>"),
                new Glyph(GlyphId.PenColorD3,     "PenColorD3",         0,    3,  "r g b", "Set Pen rgba <r> <g> <b>"),
                new Glyph(GlyphId.PenColorD4,     "PenColorD4",         0,    4,  "r g b a", "Set Pen rgba <r> <g> <b> <a>"),
                new Glyph(GlyphId.PenWidth  ,     "PenWidth",           0,    1,  "w", "Set Pen Width <width>"),
                new Glyph(GlyphId.PenHeight ,     "PenHeight",          0,    1,  "h", "Set Pen Height <height>"),
                new Glyph(GlyphId.PenDepth  ,     "PenDepth",           0,    1,  "d", "Set Pen Depth <depth>"),
                new Glyph(GlyphId.PenSize   ,     "PenSize",            0,    3,  "w h d", "Set Pen Size <width> <height> <depth>"),
                new Glyph(GlyphId.PenHatch  ,     "PenHatch",           0,    3,  "# # #", "Set Pen hatching <ModulusX> <ModulusY> <ModulusZ>"),
                
                new Glyph(GlyphId.PenShape  ,     "PenShape",           0,    1,  "#", ""),
                new Glyph(GlyphId.PenTex    ,     "PenTex",             0,    1,  "#", ""),
                new Glyph(GlyphId.PenGroup  ,     "PenGroup",           0,    1,  "#", "<group id>"), 
                new Glyph(GlyphId.PenPhysics,     "PenPhysics",         0,    1,  "#", "<Affect-NoAffect> <Damage-NoDamage> <Radar-NoRadar> <Sticky>"), 

                new Glyph(GlyphId.Scissor ,       "Scissor",            0,    6,  "x y z X Y Z", "Set Grid Scissor <x1> <y1> <z1> <x2> <y2> <z2>"), 
                new Glyph(GlyphId.Clear   ,       "Clear",              0,    0,  "", "Clear entire grid" ),
                new Glyph(GlyphId.Plot    ,       "Plot",               0,    3,  "x y z v", "Pen Plot at <x> <y> <z> value" ),

                new Glyph(GlyphId.Line    ,       "Line",               0,    6,  "x y z X Y Z", "Draw Line <x1> <y1> <z1> <x2> <y2> <z2>" ), 
                new Glyph(GlyphId.Rect    ,       "Rect",               0,    6,  "x y z X Y Z", "Draw hollow 3D rectangle <x1> <y1> <z1> <x2> <y2> <z2>" ), 
                new Glyph(GlyphId.FillRect,       "FillRect",           0,    6,  "x y z X Y Z", "Draw 3D rectangle <x1> <y1> <z1> <x2> <y2> <z2>" ), 
                
                new Glyph(GlyphId.MaskRect      , "MaskRect",           0,    7,  "x y z X Y Z #", "Draw Hollow 3D rectangle <x1> <y1> <z1> <x2> <y2> <z2> <mask>" ), 
                new Glyph(GlyphId.MaskFillRect  , "MaskFillRect",       0,    7,  "x y z X Y Z #", "Draw Filled 3D rectangle <x1> <y1> <z1> <x2> <y2> <z2> <mask>" ), 

                new Glyph(GlyphId.TubeXy        , "TubeXY",             0,    6,  "x y z X Y Z", "Draw 3D tube <x1> <y1> <z1> <x2> <y2> <z2>" ), 
                new Glyph(GlyphId.TubeXz        , "TubeXZ",             0,    6,  "x y z X Y Z", "Draw 3D tube <x1> <y1> <z1> <x2> <y2> <z2>" ), 
                new Glyph(GlyphId.TubeYz        , "TubeYZ",             0,    6,  "x y z X Y Z", "Draw 3D tube <x1> <y1> <z1> <x2> <y2> <z2>" ), 

                new Glyph(GlyphId.Stairs        , "Stairs",             0,    9,  "x y z X Y Z w h d",   "Create stairs <x1> <y1> <z1> <x2> <y2> <z2> <PenWidth> <PenHeight> <PenDepth>" ),
                new Glyph(GlyphId.ExtrudeLine   , "ExtrudeLine",        0,    9,  "x y z X Y Z # r R #", "Create extrusion along path <x1> <y1> <z1> <x2> <y2> <z2> <slices> <radius1> <radius 2>" ),
                new Glyph(GlyphId.Triangle      , "Triangle",           0,    9,  "x y z X Y Z # # #", "Draw Triangle <x1> <y1> <z1> <x2> <y2> <z2> <x3> <y3> <z3>"),
                new Glyph(GlyphId.FillTriangle2D, "FillTriangle2D",     0,    6,  "x y X Y # #", "Draw Filled 2D Triangle <x1> <y1> <x2> <y2> <x3> <y3>"),
                new Glyph(GlyphId.Polygon       , "Polygon",            0,    5,  "x y z s #", "Draw 2D Polygon <x> <y> <z> <radius> <sides>" ), 

                new Glyph(GlyphId.ArcXy         , "ArcXY",              0,    6,  "x y z s # #", "Draw 2D Arc <x> <y> <z> <radius> <startAngle> <sweepAngle>" ), 
                new Glyph(GlyphId.ArcXz         , "ArcXZ",              0,    6,  "x y z s # #", "Draw 2D Arc <x> <y> <z> <radius> <startAngle> <sweepAngle>" ), 
                new Glyph(GlyphId.ArcYz         , "ArcYZ",              0,    6,  "x y z s # #", "Draw 2D Arc <x> <y> <z> <radius> <startAngle> <sweepAngle>" ), 
                new Glyph(GlyphId.Circle3D      , "Circle3D",           0,    4,  "x y z s", "Draw 2D Circle <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.Circle2D      , "Circle2D",           0,    4,  "x y z s", "Draw 2D Circle <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.Circle2Dxy    , "Circle2DXY",         0,    4,  "x y z s", "Draw 2D Circle on z-Axis <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.Circle2Dyz    , "Circle2DYZ",         0,    4,  "x y z s", "Draw 2D Circle on x-Axis <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.Circle2Dxz    , "Circle2DXZ",         0,    4,  "x y z s", "Draw 2D Circle on y-Axis <x> <y> <z> <radius>" ), 
                
                new Glyph(GlyphId.Oval3D        , "Oval3D",             0,    6,  "x y z w h d", "Draw Oval at <x> <y> <z> <w> <h> <d>" ), 
                new Glyph(GlyphId.Diamond2D     , "Diamond2D",          0,    5,  "x y z w h", "Draw Diamond at <x1> <y1> <z1> <w> <h>"),
                new Glyph(GlyphId.Quad2D        , "Quad2D",             0,    6,  "x y X Y Z h", "Draw Quad <x1> <y1> to <x2> <y2> on <z> with <h>"),
                new Glyph(GlyphId.Pyramid3D     , "Pyramid3D",          0,    6,  "x y z X Y Z", "Draw Pyramid <x1> <y1> <z1> to <x2> <y2> <z2>"),

                new Glyph(GlyphId.FillCircle2D  , "FillCircle2D",       0,    4,  "x y z s", "Draw Filled 2D Circle <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.FillCircle2Dxy, "FillCircle2DXY",     0,    4,  "x y z s", "Draw Filled 2D Circle on z-axis <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.FillCircle2Dyz, "FillCircle2DYZ",     0,    4,  "x y z s", "Draw Filled 2D Circle on x-axis <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.FillCircle2Dxz, "FillCircle2DXZ",     0,    4,  "x y z s", "Draw Filled 2D Circle on y-axis <x> <y> <z> <radius>" ), 
                new Glyph(GlyphId.FillCircle3D  , "FillCircle3D",       0,    4,  "x y z s", "Draw Filled 2D Circle <x> <y> <z> <radius>" ), 

                new Glyph(GlyphId.ExtrudeX      , "ExtrudeX",           0,    8, "x y z X f s S #", "<x1> <y> <z> <x2> <Shape> <StartScale> <StopScale> <Skips>"),
                new Glyph(GlyphId.ExtrudeY      , "ExtrudeY",           0,    8, "x y z Y f s S #", "<x> <y1> <z> <y2> <Shape> <StartScale> <StopScale> <Skips>"),
                new Glyph(GlyphId.ExtrudeZ      , "ExtrudeZ",           0,    8, "x y z Z f s S #", "<x> <y> <z1> <z2> <Shape> <StartScale> <StopScale> <Skips>"),

#endregion
#region Imaging
                new Glyph(GlyphId.ImgFlipX     ,  "ImgFlipX",           0,    0,  "", "Flip on X axis"), 
                new Glyph(GlyphId.ImgFlipY     ,  "ImgFlipY",           0,    0,  "", "Flip on Y axis"), 
                new Glyph(GlyphId.ImgFlipZ     ,  "ImgFlipZ",           0,    0,  "", "Flip on Z axis"), 
                new Glyph(GlyphId.ImgMirrorX   ,  "ImgMirrorX",         0,    0,  "", "Mirror on X axis"), 
                new Glyph(GlyphId.ImgMirrorY   ,  "ImgMirrorY",         0,    0,  "", "Mirror on Y axis"), 
                new Glyph(GlyphId.ImgMirrorZ   ,  "ImgMirrorZ",         0,    0,  "", "Mirror on Z axis"), 

                new Glyph(GlyphId.ImgPalettize ,  "ImgPalettize",       0,    1,  "#", "Use a palette to remap a grid <palette>"), 
                new Glyph(GlyphId.ImgInvert    ,  "ImgInvert",          0,    0,  "", "Invert the image"), 
                new Glyph(GlyphId.ImgGrayscale ,  "ImgGrayscale",       0,    0,  "", "Grayscale the image"), 
                new Glyph(GlyphId.ImgColorize  ,  "ImgColorize",        0,    2,  "# #", "Colorize the image <hue> <saturation>"), 
                new Glyph(GlyphId.ImgHueshift  ,  "ImgHueshift",        0,    1,  "#", "Hue shift the image <hue shift>"), 
                new Glyph(GlyphId.ImgSaturate  ,  "ImgSaturate",        0,    1,  "%", "Adjust saturation <adjust %>"), 
                new Glyph(GlyphId.ImgBrightness,  "ImgBrightness",      0,    1,  "%", "Adjust brightness <adjust %>"), 
                new Glyph(GlyphId.ImgRotX      ,  "ImgRotX",            0,    0,  "", "Rotate image on X-axis 90 degrees" ), 
                new Glyph(GlyphId.ImgRotY      ,  "ImgRotY",            0,    0,  "", "Rotate image on Y-axis 90 degrees" ), 
                new Glyph(GlyphId.ImgRotZ      ,  "ImgRotZ",            0,    0,  "", "Rotate image on Z-axis 90 degrees" ), 

                new Glyph(GlyphId.ImgShadeX    ,  "ImgShadeX",          0,    6,  "r g b a R G B A", "ShadeX <r1> <g1> <b1> <r2> <g2> <b2>"),
                new Glyph(GlyphId.ImgShadeY    ,  "ImgShadeY",          0,    6,  "r g b a R G B A", "ShadeY <r1> <g1> <b1> <r2> <g2> <b2>"),
                new Glyph(GlyphId.ImgShadeZ    ,  "ImgShadeZ",          0,    6,  "r g b a R G B A", "ShadeZ <r1> <g1> <b1> <r2> <g2> <b2>"),

                new Glyph(GlyphId.ImgEdge      ,  "ImgEdge",            0,    4,  "r g b a", "Set edge color <r> <g> <b> <a>"),
                new Glyph(GlyphId.ImgEdgeX     ,  "ImgEdgeX",           0,    4,  "r g b a", "Set edge x color <r> <g> <b> <a>"),
                new Glyph(GlyphId.ImgEdgeY     ,  "ImgEdgeY",           0,    4,  "r g b a", "Set edge y color <r> <g> <b> <a>"),
                new Glyph(GlyphId.ImgEdgeZ     ,  "ImgEdgeZ",           0,    4,  "r g b a", "Set edge z color <r> <g> <b> <a>"),
                
                new Glyph(GlyphId.FilterBlur   ,  "FilterBlur",         0,    0,  "", "Blur filter"), 
                new Glyph(GlyphId.FilterMotion ,  "FilterMotion",       0,    0,  "", "Motion filter"), 
                new Glyph(GlyphId.FilterEdgeHor,  "FilterEdgeHor",      0,    0,  "", "Edge horizontal filter"), 
                new Glyph(GlyphId.FilterEdgeVer,  "FilterEdgeVer",      0,    0,  "", "Edge vertical filter"), 
                new Glyph(GlyphId.FilterEdgeAll,  "FilterEdgeAll",      0,    0,  "", "Edge filteattenuate, r"), 
                new Glyph(GlyphId.FilterSharpen,  "FilterSharpen",      0,    0,  "", "Sharpen filter"), 
                new Glyph(GlyphId.FilterEmboss ,  "FilterEmboss",       0,    0,  "", "Emboss filter"), 
                new Glyph(GlyphId.FilterSmooth ,  "FilterSmooth",       0,    0,  "", "Smooth filter"), 

                new Glyph(GlyphId.EdgeCorners  ,  "EdgeCorners",        0,    4,  "r g b a", "Set edge color <r> <g> <b> <a>"),
                new Glyph(GlyphId.ShapeToColor ,  "ShapeToColor",       0,    8,  "", "Convert shape to color <s1> <s2> <s3> <s4> <s5> <s6> <s7> <s8>"),
                new Glyph(GlyphId.ShapeSmoothX ,  "ShapeSmoothX",       0,    0,  "", "Smooth edges into shape along X axis"),
                new Glyph(GlyphId.ShapeSmoothY ,  "ShapeSmoothY",       0,    0,  "", "Smooth edges into shape along Y axis"),
                new Glyph(GlyphId.ShapeSmoothZ ,  "ShapeSmoothZ",       0,    0,  "", "Smooth edges into shape along Z axis"),

                new Glyph(GlyphId.FillStairs   , "FillStairs",          0,    9,  "x y z X Y Z w h d",   "Create filled stairs <x1> <y1> <z1> <x2> <y2> <z2> <PenWidth> <PenHeight> <PenDepth>" ),

#endregion
#region Simulation
                new Glyph(GlyphId.Genesis3D,  "Genesis3D",              0,    1,  "s","New grid of rgba, xyz <size and floor;person in center;CorNew;DekNew;ScnNew;EleNew"),
                new Glyph(GlyphId.Spawn,      "Spawn",                  0,    3,  "x y z","Spawn <x> <y> <z>"),
#endregion
#region Archtypes
                new Glyph(GlyphId.Pal1D        , "Pal1D",              0,    1,  "w", "Create 1D Palette <width>" ),
                new Glyph(GlyphId.Pal2D        , "Pal2D",              0,    2,  "w h", "Create 2D Palette <width> <height>" ),
                new Glyph(GlyphId.Pal3D        , "Pal3D",              0,    3,  "w h d", "Create 3D Palette <width> <height> <depth>" ),
                new Glyph(GlyphId.PalFromVal1D , "PalFromVal1D",       1,    1,  "", "Create 1D Palette <width> from values <#> ..." ),
                new Glyph(GlyphId.PalFromVal2D , "PalFromVal2D",       2,    2,  "", "Create 2D Palette <width> <height> from values <#> ..." ),
                new Glyph(GlyphId.PalFromVal3D , "PalFromVal3D",       3,    3,  "", "Create 3D Palette <width> <height> <depth> from values <#> ..." ),
                new Glyph(GlyphId.PalFromGrid1D, "PalFromGrid1D",      0,    2,  "x X", "Create new palette from grizd <x1> <x2>"), 
                new Glyph(GlyphId.PalFromGrid2D, "PalFromGrid2D",      0,    4,  "x y X Y", "Create new palette from grid <x1> <y1> <x2> <y2>"), 
                new Glyph(GlyphId.PalFromGrid3D, "PalFromGrid3D",      0,    6,  "x y z X Y Z", "Create new palette from grid <x1> <y1> <z1> <x2> <y2> <z2>"), 
                new Glyph(GlyphId.PalGen1D1    , "PalGen1D1",          0,    3,  "# #", "Generate gradient palette <palette> <vs> <vd>"),
                new Glyph(GlyphId.PalGen1D2    , "PalGen1D2",          0,    5,  "# # # #", "Generate gradient palette <palette> <vs1> <vs2> <vd1> <vd2>"),
                new Glyph(GlyphId.PalGen1D3    , "PalGen1D3",          0,    7,  "# # # # # #", "Generate gradient palette <palette> <vs1> <vs2> <vs3> <vd1> <vd2> <vd3>"),
                new Glyph(GlyphId.PalGen1D4    , "PalGen1D4",          0,    9,  "# # # # # # # #", "Generate gradient palette <palette> <vs1> <vs2> <vs3> <vs4> <vd1> <vd2> <vd3> <vd4>"),

                new Glyph(GlyphId.Blit1D       , "Blit1D",             0,    2,  "# x", "Draw Palette at <palette> <x>" ),
                new Glyph(GlyphId.Blit2D       , "Blit2D",             0,    3,  "# x y", "Draw Palette at <palette> <x> <y>" ),
                new Glyph(GlyphId.Blit3D       , "Blit3D",             0,    4,  "# x y z", "Draw Palette at <palette> <x> <y> <z>" ),
                new Glyph(GlyphId.RectBlit1D   , "RectBlit1D",         0,    3,  "# x X", "Draw Palette at <palette> <x1> <x2>" ),
                new Glyph(GlyphId.RectBlit2D   , "RectBlit2D",         0,    5,  "# x y x Y", "Draw Palette at <palette> <x1> <y1> <x2> <y2>"),
                new Glyph(GlyphId.RectBlit3D   , "RectBlit3D",         0,    7,  "# x y z X Y Z", "Draw Palette at <palette> <x1> <y1> <z1> <x2> <y2> <z2>"),
                new Glyph(GlyphId.BlendBlit1D  , "BlendBlit1D",        0,    4,  "# x X #", "Blend Palette at <palette> <x1> <x2> <blend>" ),
                new Glyph(GlyphId.BlendBlit2D  , "BlendBlit2D",        0,    6,  "# x y X Y #", "Blend Palette at <palette> <x1> <y1> <x2> <y2> <blend>"),
                new Glyph(GlyphId.BlendBlit3D  , "BlendBlit3D",        0,    8,  "# x y z X Y Z #", "Blend Palette at <palette> <x1> <y1> <z1> <x2> <y2> <z2> <blend>"),

                new Glyph(GlyphId.ArchPut      , "ArchPut",            0,    4,  "x y z #",             "Draw (at) <x> <y> <z> <archtype> "),
                new Glyph(GlyphId.ArchLine     , "ArchLine",           0,    9,  "x y z X Y Z # # #",   "Draw <x> <y> <z> <x2> <y2> <z2> <archtype> <rotation> <spacing>"),
                new Glyph(GlyphId.ArchRect     , "ArchRect",           0,    9,  "x y z X Y Z # # #",   "Draw <x> <y> <z> <x2> <y2> <z2> <archtype> <rotation> <spacing>"),
#endregion
#region FX
                new Glyph(GlyphId.GenChaos      , "GenChaos",           0,    4,  "# x y z", "Generate chaos <0..11> <x> <y> <z>"), 
                new Glyph(GlyphId.Alien         , "Alien",              0,    4,  "x y z s",   "Draw <x> <y> <z> <scale>"),
                new Glyph(GlyphId.Star          , "Star",               0,    4,  "x y z s",   "Draw <x> <y> <z> <scale>"),
                new Glyph(GlyphId.Text          , "Text",               0,    4,  "x y z #", "Draw 2D Letter <x> <y> <z> <letter>" ), 
                new Glyph(GlyphId.WallCube      , "WallCube",           0,    1,  "f", "Put Walls on Cube <bitmask>" ), 
                new Glyph(GlyphId.CornerSupports, "CornerSupports",     0,    6,  "x y z X Y Z",   "Fill (cellular automata) <x> <y> <z> <x2> <y2> <z2>"),
                new Glyph(GlyphId.Supports      , "Supports",           0,    0,  "", "Put Supports in world" ),
                new Glyph(GlyphId.UpV           , "UpV",                0,    5, "# # r g b a", "UpV <reps> <search r> <search g> <search b> <search a>"),
#endregion
#region RecentlyAdded
                new Glyph(GlyphId.FillTriangle  , "FillTriangle",       0,    9,  "x y z X Y Z # # #", "Draw Filled Triangle <x1> <y1> <z1> <x2> <y2> <z2> <x3> <y3> <z3>"),
                new Glyph(GlyphId.Shadows       , "Shadows",            0,    0,  "", "Simulate shadows" ),
                new Glyph(GlyphId.Maze          , "Maze",               0,    6,  "# x y z X Z", "Generate maze (random seed=#, 0 for no seed) from xyz to XyZ" ),
#endregion
                new Glyph(GlyphId.End           , "End",                0,    0,  "","Ends script"),
                new Glyph(GlyphId.Put           , "Put",                0,    4,  "t x y z","Renders an inline <t> <x1> <y1> <z1>"),
                new Glyph(GlyphId.PutGroup      , "PutGroup",           0,    5,  "t x y z #","Renders an inline <t> <x1> <y1> <z1> <id>"),

                new Glyph(GlyphId.ScalePut      , "ScalePut",           0,    7,  "t x y z X Y Z","Renders a scaled inline <x1> <y1> <z1> <x2> <y2> <z2>"),
                new Glyph(GlyphId.Wire          , "Wire",               0,    7,  "x y z X Y Z h","Draw a wire from <x1> <y1> <z1> to <x2> <y2> <z2>, with height <h>"),
                new Glyph(GlyphId.String        , "String",             0,    4,  "x y z t","Draw text at x y z")
                
            };

        //GetToken the _glyph id of a name
        public static int GetId(string str)
        {
            foreach (Glyph g in GlyphDefs)
                if (g.Name == str)
                    return g.Id;
            return 0;
        }

        private static void BuildLookupTable()
        { 
            _glyphIdLookupTable = new Dictionary<int, Glyph>();
            foreach (Glyph glyph in GlyphDefs)
            {
                _glyphIdLookupTable.Add(glyph.Id, glyph);
            }
        }

        //Get _glyph at id, null if out of range
        //TODO: Optimize this
        public static Glyph GetGlyph(int id)
        {
            if (id < 0 || id >= GlyphDefs.Length) return null;

            if (_glyphIdLookupTable == null)
                BuildLookupTable();

            return _glyphIdLookupTable != null && (_glyphIdLookupTable.ContainsKey(id)) ? _glyphIdLookupTable[id] : null;
        }

        //Return an array of all the glyphs
        public static Glyph[] GetGlyphDefs()
        {
            return GlyphDefs;
        }
    }
}

