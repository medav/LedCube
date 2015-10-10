using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LedCube.Drawing
{
    public class Voxel : Drawable
    {
        private byte x, y, z;
        private bool state;

        public Voxel (byte x, byte y, byte z)
        {
            this.x = x; this.y = y; this.z = z;
            state = false;
        }

        public void on()
        {
            state = true;
        }

        public void off()
        {
            state = false;
        }

        public void toggle()
        {
            state = !state;
        }

        public void draw(LCD c)
        {
            if (state)
            {
                c.LedOn(x, y, z);
            }
            else
            {
                c.LedOff(x, y, z);
            }
        }
    }
}
