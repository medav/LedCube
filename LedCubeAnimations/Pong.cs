using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LedCube.Drawing;

namespace LedCube.Animations
{
    /** Fun pong animation
     * 
     *  Thomas Moll 2015
     */
    public class Pong : BaseAnim
    {
        // List of drawable things
        private List<Drawable> sprites;
        private VoxelSprite p1;
        private VoxelSprite p2;
        private Voxel ball;

        private int vy, vz; 

        // Time variable
        private int t = 0;

        // Delta between frames
        private int delta = 10;

        public Pong() : base() {

            p1 = new VoxelSprite(2, 1, 3, 3, 0, 3);
            p2 = new VoxelSprite(2, 1, 3, 3, 7, 3);
            ball = new Voxel(3, 3, 3);

            // Initial velocity
            vy = -1;
            vz = -1;

            sprites = new List<Drawable>();
            sprites.Add(p1); sprites.Add(p2); sprites.Add(ball);
        }

        private void UpdateFrame(int delta)
        {




        }

        private void DrawFrame()
        {
            foreach (Drawable item in sprites)
            {
                item.draw(cube);
            }
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
