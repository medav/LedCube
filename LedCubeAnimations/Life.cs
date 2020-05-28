using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LedCube.Drawing;

namespace LedCube.Animations
{
    public class Life : BaseAnim
    {
        // List of drawable things
        private VoxelSprite world;
        private Random r;
        private int delta = 10;

        public Life() : base()
        {
            // SEED THE WORLD
            r = new Random();
            for (int i=0; i<8*8*8; ++i)
            {
                world.setPixel(i, r.NextDouble() > 0.8);
            }
        }

        private void UpdateFrame(int delta)
        {
            for (int i = 0; i < 8 * 8 * 8; ++i)
            {
                if (world.getPixel(i) && world.getNumberOfNeighbors(i)-1 <= 1)
                {
                    world.setPixel(i, false);
                }
                else if (world.getPixel(i) && world.getNumberOfNeighbors(i)-1 >= 8)
                {
                    world.setPixel(i, false);
                }
                else if (!world.getPixel(i) && world.getNumberOfNeighbors(i) == 5)
                {
                    world.setPixel(i, true);   
                }
            }
        }

        private void DrawFrame()
        {
            world.draw(cube);
        }

        // MAIN LOOPY LOOP
        override protected void Run()
        {
            while (true)
            {
                UpdateFrame(delta);
                cube.ClearBuffer();
                DrawFrame();
                cube.WriteBuffer();
                System.Threading.Thread.Sleep(delta);
                ++t;
            }
        }
    }
}
