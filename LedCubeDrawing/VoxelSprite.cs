using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LedCube.Drawing
{
    public class VoxelSprite : Drawable
    {
        private List<bool> voxels;
        byte x, y, z;
        byte sizeX, sizeY, sizeZ;

        public VoxelSprite(byte sizeX, byte sizeY, byte sizeZ, byte x, byte y, byte z)
        {
            this.x = x; this.y = y; this.z = z;
            this.sizeX = sizeX; this.sizeY = sizeY; this.sizeZ = sizeZ;

            voxels = new List<bool>();
            for (int i=0; i < sizeX * sizeY * sizeZ; ++i)
            {
                voxels.Add(false);
            }
        }

        public void setPosition(byte x, byte y, byte z)
        {
            this.x = x; this.y = y; this.z = z;
        }

        public void fill(bool value)
        {
            for (int i = 0; i < sizeX * sizeY * sizeZ; ++i)
            {
                voxels[i] = value;
            }
        }

        public void setPixel(byte x, byte y, byte z, bool value)
        {
            int index = z + y * sizeY + x * sizeY * sizeZ;
            voxels[index] = value;
        }

        public void setPixel(int index, bool value)
        {
            voxels[index] = value;
        }

        public bool getPixel(byte x, byte y, byte z)
        {
            int index = z + y * sizeY + x * sizeY * sizeZ;
            return voxels[index];
        }

        public bool getPixel(int index)
        {
            return voxels[index];
        }

        public int getNumberOfNeighbors(int index)
        {
            x = (byte)(index / (sizeY * sizeZ));
            y = (byte)((index % (sizeY * sizeZ)) / sizeY);
            z = (byte)(index - y * sizeY - x * sizeY * sizeZ);

            return getNumberOfNeighbors(x, y, z);
        }

        public int getNumberOfNeighbors(byte centerX, byte centerY, byte centerZ)
        {
            int count = 0;
            for (byte i = 0; i < 27; ++i)
            {
                x = (byte)(i / (sizeY * sizeZ));
                x = (byte)(x + centerX - 1);

                y = (byte)((i % (sizeY * sizeZ)) / sizeY);
                y = (byte)(y + centerY - 1);

                z = (byte)(i - y * sizeY - x * sizeY * sizeZ);
                z = (byte)(z + centerZ - 1);

                if ((x>=0 && x<8) && (y>=0 && y<8) &&(z>=0 && z<8))
                {
                    count = getPixel(x, y, z) ? count + 1 : count;
                }
                    
            }

            return count;
        }




        public void draw(LCD c)
        {
            for (int i = 0; i < sizeX * sizeY * sizeZ; ++i)
            {
                x = (byte)(x + (i / (sizeY * sizeZ)));
                y = (byte)(y + ((i % (sizeY * sizeZ)) / sizeY));
                z = (byte)(z + (i - y * sizeY - x * sizeY * sizeZ));
                
                if (voxels[i])
                {
                    c.LedOn(x, y, z);
                }
                else
                {
                    c.LedOff(x, y, z);
                }
            }
        }
    }
}
