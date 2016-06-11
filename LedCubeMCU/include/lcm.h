#ifndef LEDCUBEMCUDRIVER
#define LEDCUBEMCUDRIVER

// ============ Preprocessor Defines =============

// Size for LED cube
#define SIZE 8
#define BUFFERSIZE 128
#define ARGBUFFERSIZE 64
#define TXBUFFERSIZE 128
#define TRUE 1
#define FALSE 0
#define LEDON 1
#define LEDOFF 0
#define NULL (void*)0

// ===============================================

// ================== Typedefs ===================

// Enum for commands
typedef enum {
    NOOP,
    READFRAME = 0x91,
    SETCONTROL,
    IDLE,
    CLEAR = 0xEE,
    ENDCMD = 0xFF
} CUBECMD;

// Enum for use with SETCONTROL command
// Prefix 'V_' for 'Variable'
typedef enum {
    V_LED_POWER_DURATION,
    V_AUTO_IDLE_ENABLE,
    V_AUTO_IDLE_TIMEOUT
} CONTROLDATA;

typedef unsigned char byte;

// ===============================================

// ============ Adjustable Variables =============

// Power duration for LEDs (Expressed in number of
// for loop iterations. Default is 1000).
// Defined in ledctl.c
extern int led_power_duration;

// Enable or disable idle screen (Default is TRUE)
// Defined in lcm.c
extern byte auto_idle_enable;

// Number of refresh cycles to perform until idle
// screen is displayed.
// Defined in lcm.c
extern volatile int auto_idle_timeout;
// ===============================================

// ============== LCM Internal Data ==============
// ledctl.c
extern byte buffer1[BUFFERSIZE];
extern byte buffer2[BUFFERSIZE];
extern byte * buffer, * backbuffer;

// comm.c
extern byte arg_buffer[ARGBUFFERSIZE];
extern byte tx_buffer[TXBUFFERSIZE];
extern byte tx_active;
extern CUBECMD curcmd;
// ===============================================

// ============= Function Prototypes =============
void DispatchCmd();
void InitUART();
void UARTRecieve();
void SetDefaults();
void Refresh();
void IdlePattern();
void SwapBuffers();
void SetVar(CONTROLDATA var, int val);

void LedSet(byte x, byte y, byte z, byte val);
void LedOn(byte x, byte y, byte z);
void LedOff(byte x, byte y, byte z);
// ===============================================

#endif