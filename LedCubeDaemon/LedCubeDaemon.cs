namespace LedCube
{
    class LedCubeDaemon
    {
        static void Main(string[] args)
        {
            Animations.BaseAnim anim = new Animations.Wave();
            anim.Start();
            anim.Join();

        }
    }
}
