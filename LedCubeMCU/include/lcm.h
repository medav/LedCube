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
typedef byte bool;

// ===============================================

// ============ Adjustable Variables =============

// Power duration for LEDs (Expressed in number of
// for loop iterations. Default is 1000)
int led_power_duration;

// Auto idle enable
bool auto_idle_enable;

// Countdown to idle screen
volatile int auto_idle_timeout;
// ===============================================

// ================ Internal Data ================
byte buffer1[BUFFERSIZE];
byte buffer2[BUFFERSIZE];
byte * buffer, * backbuffer;
int buffer_counter;

byte arg_buffer[ARGBUFFERSIZE];
int arg_counter;

byte tx_buffer[TXBUFFERSIZE];
int tx_counter;
bool tx_active;

volatile int auto_idle_counter;
volatile bool auto_idle_flag;

CUBECMD curcmd;
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