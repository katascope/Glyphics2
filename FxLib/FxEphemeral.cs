using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FxLib
{
    public class FxEphemerals
    {
        public FxEphemeralPalette palette;
        public FxEphemeralTexture texture;
        public FxEphemeralField   field;

        public FxEphemerals()
        {
            palette = new FxEphemeralPalette();
            texture = new FxEphemeralTexture();
            field = new FxEphemeralField();
        }
        public void Mux(float mux, FxEphemerals A, FxEphemerals B)
        {
            palette.Mux(mux, A.palette, B.palette);
            texture.Mux(mux, A.texture, B.texture);
            field.Mux(mux, A.field, B.field);
        }
    }
    public class FxEphemeralPalette
    {
        byte[] palette = new byte[1024];
        public FxEphemeralPalette()
        {
            for (int i=0;i<255;i++)
            {
                palette[i * 4 + 0] = (byte)i;
                palette[i * 4 + 1] = (byte)i;
                palette[i * 4 + 2] = (byte)i;
                palette[i * 4 + 3] = (byte)i;
            }
        }
        public void Mux(double mux, FxEphemeralPalette A, FxEphemeralPalette B)
        {
            for (int i=0;i<1024;i++)
                palette[i] = Lerper.Lerp1D(mux, A.palette[i], B.palette[i]);
        }
    }
    public class FxEphemeralTexture
    {
        public void Mux(double mux, FxEphemeralTexture A, FxEphemeralTexture B)
        {
        }
    }
    public class FxEphemeralField
    {
        public void Mux(double mux, FxEphemeralField A, FxEphemeralField B)
        {
        }
    }
}
