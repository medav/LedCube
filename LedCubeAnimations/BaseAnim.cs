using System;
using System.Threading;
using System.Threading.Tasks;

namespace LedCube.Animations
{

    public class BaseAnim
    {
        #region Member Variables
        private Task anim;
        private CancellationTokenSource cts;
        protected LCD cube;
        #endregion

        #region Animation Setup
        public BaseAnim()
        {
            cube = new LCD();
            cts = new CancellationTokenSource();
            anim = new Task(new Action(Run), cts.Token);
        }
        #endregion

        #region Animation Control
        public void Start()
        {
            Setup();
            anim.Start();
        }

        public void Join()
        {
            anim.Wait();
        }

        public void Stop()
        {
            cts.Cancel();
        }
        #endregion

        #region Animation Specific
        // These are to be implemented by derived animations

        // Setup is called once before the animation begins
        virtual protected void Setup()
        {

        }
        
        // Run is called in a separate thread. It is assumed
        // that this runs an infinite loop
        virtual protected void Run()
        {

        }
        #endregion

    }

}
