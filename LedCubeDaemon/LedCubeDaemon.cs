using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
