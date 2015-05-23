using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace LedCube.Animations
{

    public class BaseAnim
    {
        #region Member Variables
        private Task anim;
        private CancellationTokenSource cts;
        private LCD cube;
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

        public void Stop()
        {
            cts.Cancel();
        }
        #endregion

        #region Animation Specific
        virtual protected void Setup()
        {

        }

        virtual protected void Run()
        {

        }
        #endregion

    }

}
