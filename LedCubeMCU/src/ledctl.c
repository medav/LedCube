#include "lcm.h"
#include "tlc59116.h"

int led_power_duration;
byte buffer1[BUFFERSIZE];
byte buffer2[BUFFERSIZE];
byte * buffer, * backbuffer;

void Refresh() {
    int l, i;
    for(l = 0; l < SIZE; l++) {
        TLC59116_WriteLEDs(0, &buffer[l * 16 + 0]);
        TLC59116_WriteLEDs(1, &buffer[l * 16 + 4]);
        TLC59116_WriteLEDs(2, &buffer[l * 16 + 8]);
        TLC59116_WriteLEDs(3, &buffer[l * 16 + 12]);

        LATB = 0x80 >> l;
        TLC59116_On();

        // TODO: find a way to force the optimizer not to
        // remove this.
        for(i = 0; i < led_power_duration; i++);

        LATB = 0x00;

    }
}

void IdlePattern() {
    int i, d;
    memset(buffer, 0x00, BUFFERSIZE);
    
    for(i = 0; i < SIZE; i++) {
        LedOn(0, 0, i);
        LedOn(7, 0, i);
        LedOn(0, 7, i);
        LedOn(7, 7, i);
        
        LedOn(0, i, 0);
        LedOn(7, i, 0);
        LedOn(0, i, 7);
        LedOn(7, i, 7);
        
        LedOn(i, 0, 0);
        LedOn(i, 7, 0);
        LedOn(i, 0, 7);
        LedOn(i, 7, 7);
        
        for(d = 0; d < 2; d++) {
            Refresh();
        }
    }
}

void SwapBuffers() {
    byte * temp = buffer;
    buffer = backbuffer;
    backbuffer = temp;
}

void LedSet(byte x, byte y, byte z, byte val) {
    int i = 16 * z + 2 * y + (x > 3 ? 1 : 0);
    int o = (x % 4) * 2;
    buffer[i] = ((buffer[i] & ~(0x03 << o)) | val << o);
}

void LedOn(byte x, byte y, byte z) {
    LedSet(x, y, z, LEDON);
}

void LedOff(byte x, byte y, byte z) {
    LedSet(x, y, z, LEDOFF);
}