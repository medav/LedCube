using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.Storage.Streams;
using Windows.Devices.SerialCommunication;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;

namespace LedCube
{
    public class LCD
    {
        #region Member Variables
        private SerialDevice sd;
        private byte[] buffer = new byte[128];
        #endregion

        #region Constructor
        public LCD()
        {
            SerialDevice.FromIdAsync("COM5").Completed += (IAsyncOperation<SerialDevice>  ao, AsyncStatus s) => {
                sd = ao.GetResults();
                sd.BaudRate = 38400;
            };
        }
        #endregion

        #region Base LED Controls
        public void LedSet(byte x, byte y, byte z, byte v)
        {
            int i = 16 * z + 2 * y + (x > 3 ? 1 : 0);
            int o = (x % 4) * 2;
            buffer[i] = (byte) ((buffer[i] & ~(0x03 << o)) | v << o);
        }

        public void LedOn(byte x, byte y, byte z)
        {
            LedSet(x, y, z, 1);
        }

        public void LedOff(byte x, byte y, byte z)
        {
            LedSet(x, y, z, 0);
        }

        public void LedTog(byte x, byte y, byte z)
        {
            LedSet(x, y, z, (byte) (1 - LedVal(x, y, z)));
        }

        public byte LedVal(byte x, byte y, byte z)
        {
            int i = 16 * z + 2 * y + (x > 3 ? 1 : 0);
            int o = (x % 4) * 2;
            return (byte) ((buffer[i] >> o) & 0x03);
        }
        #endregion

        #region Frame Control
        public void ClearBuffer()
        {
            Array.Clear(buffer, 0, 128);
        }

        public async void WriteBuffer()
        {
            await sd.OutputStream.WriteAsync(buffer.AsBuffer());
        }
        #endregion

        #region Text Operations
        public void PutCh(char ch, int face)
        {
            // TODO: 
        }

        public void PutStr(string str, int speed)
        {
            // TODO: 
        }
        #endregion

    }
}
