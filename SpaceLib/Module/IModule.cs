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
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpaceLib.Module
{
    public interface IModule
    {
        string name { get; }
        bool Run();
    }
    public class Modules
    {
        private List<IModule> plugins;
        public Modules()
        {
            plugins = new List<IModule>();
        }
        public void Add(IModule plugin)
        {
            plugins.Add(plugin);
        }
        public bool Run()
        {
            foreach (IModule plugin in plugins)
            {
                Console.Write("{0}: ", plugin.name);
                bool result = plugin.Run();
                if (result) Console.Write(" - FAILED!");
                else Console.Write(" - ok");
                Console.WriteLine();
                if (result) return result;
            }

            Console.WriteLine(@"________                        ");
            Console.WriteLine(@"\______ \   ____   ____   ____  ");
            Console.WriteLine(@" |    |  \ /  _ \ /    \_/ __ \ ");
            Console.WriteLine(@" |    `   (  <_> )   |  \  ___/ ");
            Console.WriteLine(@"/_______  /\____/|___|  /\___  >");
            Console.WriteLine(@"        \/            \/     \/");
            return false;
        }
    }
}
