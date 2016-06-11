#include "tlc59116.h"
#include "lcm.h"

byte auto_idle_enable;
volatile int auto_idle_timeout;
volatile int auto_idle_counter;
volatile byte auto_idle_flag;

void InterruptHandler() iv 0x0008 ics ICS_AUTO {

    if(RC1IF) {
        auto_idle_flag = 1;
        auto_idle_counter = 0;
        UARTRecieve();
    }
    else if(TX1IF) {
        UARTSend();
    }
}

void main() {
    // Set OSC to 64 MHz
    IRCF2_bit = 1;
    IRCF1_bit = 1;
    IRCF0_bit = 1;

    INTSRC_bit = 1;
    PLLEN_bit = 1;

    // Setup output pins
    ANSELC = 0;
    TRISB = 0x00;
    TRISD = 0x00;
    LATB = 0x00;

    // Setup default variable values
    // and communications
    SetDefaults();
    I2C1_Init(800000);
    InitUART();

    // Delay 1 second in case the power cable is
    // still being plugged in
    Delay_1sec();

    // Reset the Drivers
    TLC59116_ResetAll();
    TLC59116_Setup();

    // Run Idle Pattern before allowing input
    IdlePattern();

    // Enable all interrupts
    INTCON.GIE = 1;
    INTCON.PEIE = 1;

    while(TRUE) {
        Refresh();
        auto_idle_counter++;

        if((auto_idle_counter > auto_idle_timeout) && auto_idle_enable && auto_idle_flag) {
            IdlePattern();
            auto_idle_counter = 0;
            auto_idle_flag = 0;
        }
    }
}

void SetDefaults() {
    curcmd = NOOP;
    auto_idle_timeout = 4000;
    auto_idle_counter = 0;
    auto_idle_enable = TRUE;
    auto_idle_flag = 0;
    led_power_duration = 1000;
    buffer = buffer1;
    backbuffer = buffer2;
    memset(buffer, 0x00, BUFFERSIZE);
}

