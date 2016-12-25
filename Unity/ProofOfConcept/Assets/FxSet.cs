﻿using System;
using System.Collections;
using System.Collections.Generic;

namespace FxLib
{
    public class FxSet
    {
        int numChannels = 0;
        public FxChannel[] fxChannels;
        public FxEphemerals ephemerals = new FxEphemerals();

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
            string str = "";
            for (int channel = 0; channel < numChannels; channel++)
            {
                str += "" + fxChannels[channel] + " ";
            }           

            return str;
        }
        public void Mux(float mux, FxSet A, FxSet B)
        {
            for (int i = 0; i < numChannels;i++ )
                fxChannels[i].Mux(mux, A.fxChannels[i], B.fxChannels[i]);
            ephemerals.Mux(mux, A.ephemerals, B.ephemerals);   
        }
    }
}

