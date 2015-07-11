namespace LedCube
{
    class LedCubeDaemon
    {
        static void Main(string[] args)
        {
            Animations.BaseAnim anim = new Animations.Rain();
            anim.Start();
            anim.Join();

        }
    }
}
