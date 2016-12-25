using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FxLib
{
    public class FxMixer
    {
        bool autopilotActive;
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
