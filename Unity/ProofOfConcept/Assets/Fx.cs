using System;
using System.Collections.Generic;

namespace FxLib
{
    public class Fx
    {
        public static FxMixer mixer = new FxMixer();

        public static void ReadDeck(string filename)
        {
            mixer.deck.ReadFile(filename);
        }
        public static void SetActive(int channel, int active)
        {
            if (channel > 100) return;
            mixer.activeFx().fxChannels[channel]._active = active;
        }
        public static void SetState(int channel, int state)
        {
            if (channel > 100) return;
            mixer.activeFx().fxChannels[channel]._state = state;
        }
        public static void SetMode(int channel, int mode)
        {
            if (channel > 100) return;
            mixer.activeFx().fxChannels[channel]._mode = mode;
        }
    }
}
