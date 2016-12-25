/*
 * Muxing functions, used to modulate linear interpolations
 * Copyright Layne Thomas 2014
 */
using System;

namespace FxLib
{
    public class Muxer
    {
        //Delegate for specifying Muxing functions
        public delegate double MuxDelegate(double v);

        //Slow start, fast end
        public static double MuxLinear(double v)
        {
            return v;
        }
        //Slow start, fast end
        public static double MuxSlowStartToFastStop(double v)
        {
            return (1 - Math.Cos(v * Math.PI)) / 2;
        }

        //Fast start, slow end
        public static double MuxFastStartToSlowStop(double v)
        {
            return Math.Sin(v * Math.PI / 2);
        }

        //Up, down, up, then down
        public static double MuxSin(double v)
        {
            return Math.Sin(v * Math.PI); // (Math.Sin(v * Math.PI * 3 - Math.PI / 2) + 1) / 2;
        }

        //Apply an arbitrary muxing function
        public static double LerpFunction(MuxDelegate muxer, double mux, double a, double b)
        {
            mux = muxer(mux);
            return ((1 - mux) * a + mux * b);
        }
    }
}
