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
using System.IO;
using GraphicsLib;
using GraphicsLib.Module;
using RasterLib.Language;
using RasterLib;

namespace Glynt
{
    public class Example
    {
        public static void Main()
        {
            Modules plugins = new Modules();

            plugins.Add(new ModuleVox2Gly("\\GitHub\\Glyphics2\\Crawler\\"));
            plugins.Add(new ModuleDigest("\\GitHub\\Glyphics2\\Site\\Digest\\", DownSolver.enables.RenderIsometricRegular|DownSolver.enables.DoRects));// | DownSolver.enables.RenderIsometricLarge));
            

            //plugins.Add(new ModuleDocumentation("\\GitHub\\Glyphics2\\Site\\Documentation\\"));
            //plugins.Add(new ModuleVox2Gly("\\GitHub\\Glyphics2\\glyph cores\\"));            
            //plugins.Add(new ModuleDigest("\\GitHub\\Glyphics2\\Site\\Digest\\", DownSolver.enables.RenderIsometricRegular|DownSolver.enables.DoRects));// | DownSolver.enables.RenderIsometricLarge));

            //plugins.Add(new ModuleScratchPad("\\GitHub\\Glyphics2\\apps\\glynt\\Ornyx.yml"));
            //plugins.Add(new ModuleDigest("\\GitHub\\Glyphics2\\Site\\Digest\\", DownSolver.enables.DoRects));
            //plugins.Add(new ModuleGenesis("megagrid_clear.json"));

            plugins.Run();
       }
    }
}