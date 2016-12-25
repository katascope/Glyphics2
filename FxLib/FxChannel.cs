using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FxLib
{
    public class FxChannel
    {
        public int _id = 0;
        public int _active = 0;
        public int _state = 0;
        public int _mode = 0;
        public int _velocity = 0;
        public FxChannel(int id)
        {
            _id = id;
        }
        public override string ToString()
        {
            string memento = "";

            if (_active == 0) memento += "-";
            else if (_active == 1) memento += "+";
            else memento += "!";

            if (_id < 10) memento += "0";
            memento += _id + ":" + _state + ":" + _mode + ":" + _velocity;
            return memento;
        }
        public void FromString(string memento)
        {
            if (memento[0] == '-') _active = 0;
            if (memento[0] == '+') _active = 1;
            if (memento[0] == '!') _active = 2;
            memento = memento.TrimStart(memento[0]);
            string[] parts = memento.Split(':');
            _id = Convert.ToInt32(parts[0]);
            _state = Convert.ToInt32(parts[1]);
            _mode = Convert.ToInt32(parts[2]);
        }
        public void Mux(float mux, FxChannel A, FxChannel B)
        {
            _id = Lerper.Lerp1D(mux, A._id, B._id);
            _active = Lerper.Lerp1D(mux, A._active, B._active);
            _state = Lerper.Lerp1D(mux, A._state, B._state);
            _mode = Lerper.Lerp1D(mux, A._mode, B._mode);
            _velocity = Lerper.Lerp1D(mux, A._velocity, B._velocity);
        }
    }
}
