using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FXSystem
{
    class FxSet
    {
        int numChannels = 0;
        public FxChannel[] fxChannels;
        private void initChannels()
        {
            fxChannels = new FxChannel[numChannels];
            for (int i = 0; i < numChannels; i++)
                fxChannels[i] = new FxChannel(i);
        }
        public FxSet(int nc)
        {
            numChannels = nc;
            initChannels();
        }
        public FxSet(string memento)
        {
            string[] parts = memento.Split(' ');
            numChannels = parts.Length - 1;
            initChannels();
            for (int part = 0;part<numChannels;part++)
            {
                fxChannels[part].FromString(parts[part]);
            }
        }
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            for (int channel = 0; channel < numChannels; channel++)
            {
                sb.Append(fxChannels[channel]);
                sb.Append(" ");
            }
            return sb.ToString();
        }
    }
}

