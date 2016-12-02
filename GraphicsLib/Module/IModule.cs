using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GraphicsLib.Module
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
