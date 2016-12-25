using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FxLib
{
    public class FxStream
    {
        FxSet fxCurrent;
        FxSet fxNext;
        FxSet fxLast;

        public FxStream()
        {
            int nc = 100;
            fxCurrent = new FxSet(nc);
            fxNext = new FxSet(nc);
            fxLast = new FxSet(nc);
        }

        public void Mix(float mux)
        {
            fxCurrent.Mux(mux, fxLast, fxNext);
        }

        public FxSet currentFx()
        {
            return fxCurrent;
        }
    }
}
