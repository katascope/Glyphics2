using System;
using System.Collections.Generic;
using System.IO;
using GraphicsLib;
using SpaceLib.Module;
using RasterLib.Language;
using RasterLib;

namespace Glynt
{
    public class Example
    {
        public static void Main()
        {
            Modules plugins = new Modules();

            //plugins.Add(new ModuleScratchPad("\\GitHub\\Glyphics2\\apps\\glynt\\Nexus.yml"));
            //plugins.Add(new ModuleDocumentation("\\GitHub\\Glyphics2\\Site\\Documentation\\"));
            plugins.Add(new ModuleVox2Gly("\\GitHub\\Glyphics2\\glyph cores\\"));
            //plugins.Add(new ModuleDigest("\\GitHub\\Glyphics2\\Site\\Digest\\", DownSolver.enables.DoRects));
            plugins.Add(new ModuleDigest("\\GitHub\\Glyphics2\\Site\\Digest\\", DownSolver.enables.RenderIsometricRegular|DownSolver.enables.DoRects));// | DownSolver.enables.RenderIsometricLarge));
            plugins.Add(new ModuleGenesis("megagrid.json"));

            plugins.Run();
       }
    }
}