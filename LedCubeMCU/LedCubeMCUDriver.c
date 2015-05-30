#include "TLC59116.h"

// Size for LED cube
#define SIZE 8

// Enum for commands
typedef enum {
    NOOP,
    STARTFRAME = 0x80,
    SETCONTROL,
    IDLE,
    ENDCMD = 0xFF
} CUBECMD;

// ===== Adjustable control data =====

// Enum for use with SETCONTROL command
typedef enum {
    LED_POWER_DURATION,
    AUTO_IDLE_ENABLE,
    AUTO_IDLE_TIMEOUT
} CONTROLDATA;

// Power duration for LEDs (us)
static int led_power_duration = 300;

// Auto idle enable
static byte auto_idle_enable;

// Countdown to idle screen
static int auto_idle_timeout;

// ===================================

// ========= Internal Data ===========

byte buffer1[128];
byte buffer2[128];
byte * buffer;
byte buffer_swap;

int auto_idle_counter;
byte auto_idle_flag;

CUBECMD curcmd;
byte args[16];

// ===================================

// ======= Function Prototypes =======
void DispatchCmd();
void Refresh();
void IdlePattern();
void SwapBuffers();
// ===================================

void InterruptHandler() iv 0x0018 ics ICS_AUTO {
     // TODO:
}

void main() {
   // Set OSC to 64 MHz
   OSCCON = 0xF4;
   OSCCON2 = 0x80;
   OSCTUNE = 0xFF;

   // Setup output pins
   ANSELC = 0;
   TRISB = 0x00;
   TRISD = 0x00;
   LATB = 0x00;

   // Initialize variables
   curcmd = 0;
   auto_idle_counter = 0;
   auto_idle_enable = 1;
   auto_idle_flag = 0;

   I2C1_Init(900000);

/** UART INIT **/
   // Multiplier on
   TXSTA1.BRGH = 1;

   // SPBRGH1:SPBRG1 = 0x0001
   SPBRGH1 = 0;
   SPBRG1 = 16;
   //UART1_Init(2000000);

   // Want Async operation
   TXSTA1.SYNC = 0;

   // Enable Interrupts
   PIE1.RC1IE = 1;
   IPR1.RC1IP = 1;

   // Turn on the UART
   RCSTA1.SPEN = 1;
   RCSTA1.CREN = 1;
/***************/

   // Flash Status LED to show
   // We are alive
   Delay_100ms();
   LATD = 0x03;
   Delay_100ms();
   LATD = 0x00;
   Delay_100ms();
   LATD = 0x03;

   // Reset the Drivers
   TLC59116_ResetAll();
   TLC59116_Setup();

   // Set up buffering
   bufswap = 1;
   buffer = buffer1;
   backbuffer = buffer2;
   memset(buffer, 0x00, BUFFERSIZE);

   // Run Idle Pattern before allowing input
   IdlePattern();

   // Enable all interrupts
   INTCON.GIE = 1;
   INTCON.PEIE = 1;

   while(1) {
      WriteCube();
      idle_counter++;

      if(idle_counter > 10000 && auto_idle_enable && auto_idle_flag) {
         IdlePattern();
         idle_counter = 0;
         auto_idle_flag = 0;
      }
   }
}