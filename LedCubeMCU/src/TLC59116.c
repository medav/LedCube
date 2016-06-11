#include "TLC59116.h"

void TLC59116_ResetAll() {
    CHECKI2C(I2C1_Start());
        CHECKI2C(I2C1_Wr(0xD6));
        CHECKI2C(I2C1_Wr(0xA5));
        CHECKI2C(I2C1_Wr(0x5A));
    I2C1_Stop();
}

void TLC59116_Setup() {
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE1, 0x01);
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE2, 0x00);
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, IREF, 0xCF);
    // 1  1  011111
    // |  \     |
    // CM  HC   CC
}

void TLC59116_On() {
    // Set Mode1 to 0x01 to turn on the Oscilator
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE1, 0x01);
}

void TLC59116_Off() {
    // Set Mode1 to 0x01 to turn on the Oscilator
    TLC59116_WriteReg(TLC59116_ALLCALLADDR, MODE1, 0x11);
}

void TLC59116_WriteReg(byte addr, byte reg, byte val) {
    CHECKI2C(I2C1_Start());
        CHECKI2C(I2C1_Wr(0xC0 | (addr << 1) | WRITE));
        CHECKI2C(I2C1_Wr(AUTOINC_ALL | reg));
        CHECKI2C(I2C1_Wr(val));
    I2C1_Stop();
}

void TLC59116_WriteLEDs(byte addr, byte * val) {
    CHECKI2C(I2C1_Start());
        CHECKI2C(I2C1_Wr(0xC0 | (addr << 1) | WRITE));
        CHECKI2C(I2C1_Wr(AUTOINC_ALL | LEDOUT0));
        CHECKI2C(I2C1_Wr(val[0]));
        CHECKI2C(I2C1_Wr(val[1]));
        CHECKI2C(I2C1_Wr(val[2]));
        CHECKI2C(I2C1_Wr(val[3]));
    I2C1_Stop();
}