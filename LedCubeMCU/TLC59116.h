#ifndef TLC59116
#define TLC59116

// Typedef for 'byte' data
typedef unsigned char byte;

// Enum for register addresses on TLC59116
typedef enum {
    MODE1,
    MODE2,
    PWM0,
    PWM1,
    PWM2,
    PWM3,
    PWM4,
    PWM5,
    PWM6,
    PWM7,
    PWM8,
    PWM9,
    PWM10,
    PWM11,
    PWM12,
    PWM13,
    PWM14,
    PWM15,
    GRPPWM,
    GRPFREQ,
    LEDOUT0,
    LEDOUT1,
    LEDOUT2,
    LEDOUT3,
    SUBADR1,
    SUBADR2,
    SUBADR3,
    ALLCALLADR,
    IREF,
    EFLAG1,
    EFLAG2
} TLC59116REG;

// Read / Write values
typedef enum {
    WRITE,
    READ,
} TLC59116RW;

// Global default ALL CALL address for TLC59116
static const byte TLC59116_ALLCALLADDR = 0x08;

// Auto increment flags
static const byte AUTOINC_NONE = 0x00;
static const byte AUTOINC_ALL = 0x80;
static const byte AUTOINC_BRIGHTNESS = 0xA0;
static const byte AUTOINC_CONTROL = 0xC0;

// Interface operations
void TLC59116_ResetAll();
void TLC59116_Setup();
void TLC59116_On();
void TLC59116_WriteReg(byte addr, byte reg, byte val);
void TLC59116_WriteLEDs(byte addr, byte * val);

#endif