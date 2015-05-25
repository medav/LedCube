using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LedCube.Animations
{
    public class Wave : BaseAnim
    {
        int t;

        public Wave() : base() { }

        override protected void Setup()
        {
            t = 0;
        }

        override protected void Run()
        {
            while(true)
            {
                cube.ClearBuffer();
                PaintFrame();
                t++;
                cube.WriteBuffer();
            }
        }
        
        private void PaintFrame()
        {

            byte x, y, z;

            for (x = 0; x < 8; x++)
            {
                for (y = 0; y < 8; y++)
                {
                    z = (byte)(3.5 + 3.5 * Math.Sin(x / 8 + y / 8 + t / 8));
                    cube.LedOn(x, y, z);
                }
            }
        }
    }
}
