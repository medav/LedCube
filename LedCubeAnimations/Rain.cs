using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LedCube.Animations
{
    public class Rain : BaseAnim
    {
        private class Drop
        {
            public byte x, y, z;
        }

        List<Drop> Drops;
        Random r;

        public Rain() : base() { Drops = new List<Drop>(); r = new Random(); }

        override protected void Run()
        {
            while (true)
            {
                UpdateFrame();
                cube.ClearBuffer();
                PaintFrame();
                cube.WriteBuffer();
                System.Threading.Thread.Sleep(10);
            }
        }

        private void UpdateFrame()
        {
            List<Drop> newDrops = new List<Drop>();
            foreach (Drop d in Drops)
            {
                d.z--;
                if (d.z > 0)
                    newDrops.Add(d);
            }

            for(int i = 0; i < r.Next(3); i++)
            {
                Drop d = new Drop();
                d.x = (byte)r.Next(8);
                d.y = (byte)r.Next(8);
                d.z = 7;
                newDrops.Add(d);
            }

            Drops = newDrops;
        }

        private void PaintFrame()
        {
            foreach (Drop d in Drops)
            {
                cube.LedOn(d.x, d.y, d.z);
            }
        }
    }
}
