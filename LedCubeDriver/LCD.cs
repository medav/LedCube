using System;
using System.IO.Ports;

namespace LedCube
{
    public class LCD
    {
        #region Member Variables
        // Serial port for connecting with PIC via UART
        private SerialPort sp;
        
        // Internal buffer to be used for communication
        private byte[] buffer = new byte[130];
        #endregion

        #region Constructor
        public LCD()
        {
            sp = new SerialPort();
            sp.PortName = "/dev/ttyAMA0";
            sp.BaudRate = 38400;

            sp.ReadTimeout = 500;
            sp.WriteTimeout = 500;

            buffer[0] = (byte) 's';
            buffer[129] = 0xFF;

            sp.Open();
        }
        #endregion

        #region Base LED Controls
        public void LedSet(byte x, byte y, byte z, byte v)
        {
            int i = 16 * z + 2 * y + (x > 3 ? 1 : 0);
            int o = (x % 4) * 2;
            buffer[i + 1] = (byte) ((buffer[i + 1] & ~(0x03 << o)) | v << o);
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
            return (byte) ((buffer[i + 1] >> o) & 0x03);
        }
        #endregion

        #region Frame Control
        public void ClearBuffer()
        {
            Array.Clear(buffer, 1, 128);
        }

        public void WriteBuffer()
        {
            sp.Write(buffer, 0, 130);
        }
        #endregion

        #region Text Operations

        #endregion

    }
}
