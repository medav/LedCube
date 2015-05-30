#include "TLC59116.h"
#include "LedCubeMCUDriver.h"


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

   SetDefaults();
   InitI2C();
   InitUART();
   Alive();

   // Reset the Drivers
   TLC59116_ResetAll();
   TLC59116_Setup();

   // Run Idle Pattern before allowing input
   IdlePattern();

   // Enable all interrupts
   INTCON.GIE = 1;
   INTCON.PEIE = 1;

   while(1) {
      Refresh();
      auto_idle_counter++;

      if(auto_idle_counter > auto_idle_timeout && auto_idle_enable && auto_idle_flag) {
         IdlePattern();
         auto_idle_counter = 0;
         auto_idle_flag = 0;
      }
   }
}

void DispatchCmd() {

}

void InitUART() {
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
}

void InitI2C() {
    I2C1_Init(900000);
}

void Alive() {
    Delay_100ms();
    LATD = 0x03;
    Delay_100ms();
    LATD = 0x00;
    Delay_100ms();
    LATD = 0x03;
}

void SetDefaults() {
    curcmd = 0;
    auto_idle_timeout = 10000;
    auto_idle_counter = 0;
    auto_idle_enable = 1;
    auto_idle_flag = 0;
    buffer_swap = 1;
    buffer = buffer1;
    backbuffer = buffer2;
    memset(buffer, 0x00, BUFFERSIZE);
}

void Refresh();
void IdlePattern();
void SwapBuffers();
void SetVar(CONTROLDATA var, int val);