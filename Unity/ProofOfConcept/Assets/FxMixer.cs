using System;
using System.Collections.Generic;

namespace FxLib
{
    public class FxMixer
    {
        bool autopilotActive = false;
        public FxDeck deck = new FxDeck();
        FxStream stream1 = new FxStream();
        
        public FxSet activeFx()
        {
            return stream1.currentFx();
        }
        public void Mix(float mux)
        {
            if (autopilotActive)
            {
            }
            else
            {
            }
        }
    }
}
