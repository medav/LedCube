namespace LedCube
{
    class LedCubeDaemon
    {
        static void Main(string[] args)
        {
            //Animations.BaseAnim anim = new Animations.Wave();
            //anim.Start();
            //anim.Join();
            LCD cube = new LCD();
            cube.ClearBuffer();
            cube.LedOn(1, 1, 1);
            while (true)
            {
                cube.WriteBuffer();
            }
        }
    }
}
