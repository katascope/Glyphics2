/*
 * Linear Interpolation functions
 * Copyright Layne Thomas 2014
 */

namespace FxLib
{
    public class Lerper
    {
        //Interpolate two BOOL
        public static bool Lerp1Ds(double mux, bool a, bool b)
        {
            return (mux < 0.5) ? a : b;
        }

        //Interpolate two BYTE
        public static byte Lerp1D(double mux, byte a, byte b)
        {
            return (byte)(a * (1.0 - mux) + b * mux);
        }

        //Interpolate two DOUBLE
        public static double Lerp1D(double mux, double v1, double v2)
        {
            return ((1 - mux) * v1 + mux * v2);
        }

        //Interpolate two INT
        public static int Lerp1D(double mux, int a, int b)
        {
            return (int)(a * (1.0 - mux) + b * mux);
        }

        //Treshold instead of interpolate two INT
        public static int ThresholdAb(double mux, int a, int b)
        {
            return (mux < 0.5) ? a : b;
        }

        // Lerp on 2-dimensions (4 values)
        public static byte Lerp2D(double xf, double yf, byte ul, byte ur, byte ll, byte lr)
        {
            // Tween on X the interpolated left/right Y values
            return Lerp1D(xf, Lerp1D(yf, ul, ll), Lerp1D(yf, ur, lr));
        }
    }
}
