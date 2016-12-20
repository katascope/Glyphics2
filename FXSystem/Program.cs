using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FXSystem
{
    class Program
    {
        static void Main(string[] args)
        {
            FxDeck deck = new FxDeck();
            deck.ReadFile("\\github\\glyphics2\\test.deck");
            /*FxSet fxSet = new FxSet(100);
            fxSet.fxChannels[1]._active = 1;
            deck.fxSets.Add(fxSet);
            string memento = fxSet.ToString();
            Console.WriteLine(memento);

            FxSet fxSet2 = new FxSet(memento);
            memento = fxSet2.ToString();
            Console.WriteLine(memento);


            deck.WriteFile("\\github\\glyphics2\\test.deck");*/
            deck.print();
        }
    }
}
