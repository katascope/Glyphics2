using GraphicsLib.Renderers;
using RasterLib;
using RasterLib.Language;

//WebGL - http://www.tutorialspoint.com/webgl/
//THREE.js - actual 3d library

namespace GraphicsLib
{
    //Revamp project
    //Project Insidious - Version after Vernacular
    //to create a space between the spaces, a conduit where one can be used for the other

    //Newtech: forcing a 3d model onto a 3d raster (integer) grid, which would sort of blockify it some, but also make for those sort of "smooth blocks" I've been trying to achieve.
    //Corner possibilities: 
    //just map it to moore neighborhood!
    // That's the generational possibilities anyway

    //Need inside out detector
    // Solve by starting on borders and working inwards connecting

    //adjancency test


    //other triangles?

    //Example: Editing in sl, exporting back to serial, then used elsewhere
    //Example: Javascript editors
    //Example: Into Unity environment
    //Example: To STL, for 3d-printing
    //Example: To Isometric 
    //Example: To Minecraft
    //Example: From Minecraft
    //Example: From 3d editors
    //Example: From jpegs/photos
    //Example: From OBJ, for splitting into multiple prints
    //Example: From GIS, for generating height maps
    //Example: From heightmaps..

    //TODO: New _glyph - TexFunc, generates a texture used by texture id
    //TODO: New Glyph - ShpFunc, generates a shape used by shape id

    //TODO: To JSON
    //TODO: To WebGL

    //Meta-language for actions
    // "codeString" > rects > triangles > translate 4 0 4 ; clone ; translate

    //To multiple STL
    //Easy image to glyphics, extrudable then in that world
    //Good idea
    // Using 'inside detection' to make a scissoring area
    // Can calculate area by making another grid and 'clearing' which are fully inside

    //TODO: Prima
    //TODO: Secundus

    //New use cases
    // * 3D editor
    // * Unity interface with oculus support
    // * Animation support
    // * Deformation triangle creator logic - for corners
    // * Prima engine
    // * PostProcessors - run after codeString, on rects?

    //Flesh out new model
    // Need to understand Anything-to-Anything model better

    // For UI: "document" - grid?
    //  Primary view - grid to oblique ( or changeable)
    //  Use cases:
    //   Code editor
    //   Export ortho to png
    //   Export grid to png
    //   Copy serialized to clipboard
    //   


    //Glyphics Prima language
    // Code, can convert to rects, and back to codeString
    // Subset language of glyphics(first four operations), like just enough to create grids, set colors, and draw rects
    // Nop, Size3D4, PenColorD4, FillRect

    //Glyphics Secundus language
    //first 16 or so?, candidates?
    // Rect-Equivalents: Clear, Plot, HollowRect, 
    // Special: Line, 

    //Simulation - micropocket worlds
    // Functions that only process when grid is run if certain values
    // State machine : Trigger can change state of grid

    //TODO: Future: Lights
    //TODO: Future: Materials
    //TODO: Future: Triggers and Sensors
    //TODO: Future: Editor
    //TODO: Future: Explorer
    //TODO: Future: Generate grid of previews of a bunch of other grids (using the scaler)

    //TODO: Future: Integrate with unity?
    //TODO: Future: Render scenes to grid (with animations, full triangles)
    //TODO: Future: UI units as equivalent to rects
    //TODO: Future: Speed improvements & profiling
    //TODO: Future: Corner/STL-solving issue for supports & smoothing
    //TODO: Future: Importers/Exporters for .obj, .mesh, .gif, .minecraft?
    //TODO: Future: 4D grids
    //TODO: Future: Render rects to oblique grid, without borders or cells - as triangles/quads

    //Primary Glyphics API call - intended for use by other programs
    public class GraphicsApi
    {
        //File IO for PNG files
        public static Grid PngToGrid(string filename) { return FilePngRead.PngToGrid(filename); }
        public static void SaveFlatPng(string filename, Grid grid) { FilePngWrite.SaveFlatPng(filename, grid); }

        //File IO for GIF files
        public static Grid GifToGrid(string filename) { return FileGifRead.GifToGrid(filename); }
        public static GridList GifToGrids(string filename) { return FileGifRead.GifToGrids(filename); }
        public static void SaveFlatGif(string filename, Grid grid) { FileGifWrite.SaveFlatGif(filename, grid); }

        public static Grid FileToGrid(string filename)
        {
          //  if (filename.ToUpper().Contains(".GIF")) return GifToGrid(filename);
            if (filename.ToUpper().Contains(".PNG")) return PngToGrid(filename);
            return null;
        }
    }
}
