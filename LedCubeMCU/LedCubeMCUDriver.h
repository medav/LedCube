#ifndef LEDCUBEMCUDRIVER
#define LEDCUBEMCUDRIVER
// Size for LED cube
#define SIZE 8
#define BUFFERSIZE 128

#include "TLC59116.h"

// Enum for commands
typedef enum {
    NOOP,
    READFRAME = 0x91,
    SETCONTROL,
    IDLE,
    CLEAR = 0xEE,
    ENDCMD = 0xFF
} CUBECMD;

// ===== Adjustable control data =====
// Enum for use with SETCONTROL command
// Prefix 'V_' for 'Variable'
typedef enum {
    V_LED_POWER_DURATION,
    V_AUTO_IDLE_ENABLE,
    V_AUTO_IDLE_TIMEOUT
} CONTROLDATA;

// Power duration for LEDs (0.05 ms)
byte led_power_duration;

// Auto idle enable
byte auto_idle_enable;

// Countdown to idle screen
volatile int auto_idle_timeout;
// ===================================

// ========= Internal Data ===========
byte buffer1[BUFFERSIZE];
byte buffer2[BUFFERSIZE];
byte * buffer, * backbuffer;
int buffer_counter;

byte arg_buffer[64];
int arg_counter;

volatile int auto_idle_counter;
volatile byte auto_idle_flag;

CUBECMD curcmd;
byte args[16];
// ===================================

// ======= Function Prototypes =======
void DispatchCmd();
void InitUART();
void UARTRecieve();
void InitDriverI2C();
void Alive();
void SetDefaults();
void Refresh();
void IdlePattern();
void SwapBuffers();
void SetVar(CONTROLDATA var, int val);

void LedSet(byte x, byte y, byte z, byte val);
void LedOn(byte x, byte y, byte z);
void LedOff(byte x, byte y, byte z);
// ===================================

#endif