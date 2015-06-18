#include "TLC59116.h"

void TLC59116_ResetAll() {
    I2C1_Start();
        I2C1_Wr(0xD6);
        I2C1_Wr(0xA5);
        I2C1_Wr(0x5A);
    I2C1_Stop();
}

void TLC59116_Setup() {
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE1, 0x01);
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE2, 0x00);
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, IREF, 0x5F);
}

void TLC59116_On() {
    // Set Mode1 to 0x01 to turn on the Oscilator
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE1, 0x01);
}

void TLC59116_On() {
    // Set Mode1 to 0x01 to turn on the Oscilator
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE1, 0x11);
}

void TLC59116_WriteReg(byte addr, byte reg, byte val) {
    I2C1_Start();
        I2C1_Wr(0xC0 | (addr << 1) | WRITE);
        I2C1_Wr(AUTOINC_ALL | reg);
        I2C1_Wr(val);
    I2C1_Stop();
}

void TLC59116_WriteLEDs(byte addr, byte * val) {
    I2C1_Start();
        I2C1_Wr(0xC0 | (addr << 1) | WRITE);
        I2C1_Wr(AUTOINC_ALL | LEDOUT0);
        I2C1_Wr(val[0]);
        I2C1_Wr(val[1]);
        I2C1_Wr(val[2]);
        I2C1_Wr(val[3]);
    I2C1_Stop();
}