using System;
using System.Collections.Generic;

namespace FxLib
{
    public class FxDeck
    {
        public List<FxSet> fxSets = new List<FxSet>();

        public void print()
        {
            foreach(FxSet fxSet in fxSets)
            {
                Console.WriteLine(fxSet.ToString());
            }
        }
        public void WriteFile(string filename)
        {
            using (var file = new System.IO.StreamWriter(filename))
            {
                foreach (FxSet fxSet in fxSets)
                {
                    string memento = fxSet.ToString();
                    file.WriteLine(memento);
                }
            }
        }
        public void ReadFile(string filename)
        {
            using (var file = new System.IO.StreamReader(filename))
            {
                string line;
                while ((line = file.ReadLine()) != null)
                {
                    FxSet fxSet = new FxSet(line);
                    fxSets.Add(fxSet);
                }
            }
        }
    }
}
