using System;


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
                System.Threading.Thread.Sleep(10);
            }
        }
        
        private void PaintFrame()
        {

            byte x, y, z;

            for (x = 0; x < 8; x++)
            {
                for (y = 0; y < 8; y++)
                {
                    z = (byte) Math.Round(3.5 + 3.5 * Math.Sin(x / 4.0 + y / 4.0 + t / 32.0));
                    cube.LedOn(x, y, z);
                }
            }
        }
    }
}
