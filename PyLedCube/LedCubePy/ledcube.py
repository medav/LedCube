import serial

class cube:
    def __init__(self):
        self.sp = serial.Serial("/dev/ttyAMA0", 230400)
        self.ClearBuffer()
        
    def LedSet(self, x, y, z, v):
        i = 16 * z + 2 * y + (1 if x > 3 else 0)
        o = (x % 4) * 2
        self.buffer[i + 1] = ((self.buffer[i + 1] & ~(0x03 << o)) | v << o)
        
    def LedVal(self, x, y, z):
        i = 16 * z + 2 * y + (1 if x > 3 else 0)
        o = (x % 4) * 2
        return (self.buffer[i + 1] >> 0) & 0x03
        
    def LedOn(self, x, y, z):
        self.LedSet(x, y, z, 0x01)
        
    def LedOff(self, x, y, z):
        self.LedSet(x, y, z, 0x00)   
        
    def LedTog(self, x, y, z):
        self.LedSet(x, y, z, 0x01 - self.LedVal(x, y, z))
        
    def WriteBuffer(self):
        sp.write(self.buffer)
        
    def ClearBuffer(self):
        self.buffer = bytearray(130)
        self.buffer[0] = 0x91
        self.buffer[129] = 0xFF