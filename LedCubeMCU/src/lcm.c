#include "tlc59116.h"
#include "lcm.h"

volatile byte DoTransmitVariables;
volatile byte DoQueryDrivers;
volatile byte DoResetDrivers;

byte auto_idle_enable;
volatile int auto_idle_timeout;
volatile int auto_idle_counter;
volatile byte auto_idle_flag;

void InterruptHandler() iv 0x0008 ics ICS_AUTO {

    if(PIR1.RC1IF) {
        auto_idle_flag = FALSE;
        auto_idle_counter = 0;
        UARTRecieve();
        return;
    }
    else if(PIR1.TX1IF) {
        UARTSend();
        return;
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

    // Set all interrupts to disable initially
    INTCON.GIE = FALSE;
    INTCON.PEIE = FALSE;
    PIE1 = 0x00;
    PIE2 = 0x00;
    PIE3 = 0x00;
    PIE4 = 0x00;
    PIE5 = 0x00;

    // Setup default variable values and 
    // communications
    SetDefaults();
    I2C1_Init(400000);
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
    INTCON.GIE = TRUE;
    INTCON.PEIE = TRUE;

    UARTSendStr("Device started.");
    TransmitVariables();

    while(TRUE) {
        Refresh();
        // auto_idle_counter++;

        // if((auto_idle_counter > auto_idle_timeout) && 
        //     auto_idle_enable != FALSE && 
        //     auto_idle_flag != FALSE) {

        //     IdlePattern();
        //     auto_idle_counter = 0;
        //     auto_idle_flag = 0;
        // }

        if(DoTransmitVariables != FALSE) {
            TransmitVariables();
            DoTransmitVariables = FALSE;
        }

        if(DoResetDrivers != FALSE) {
            UARTSendStr("Resetting Drivers...");
            TLC59116_ResetAll();
            TLC59116_Setup();
            UARTSendStr("Drivers Reset.");
            DoResetDrivers = FALSE;
        }
    }
}

void TransmitVariables() {
    UARTSendStr("Device Variables:");

    UARTWaitTx();
    sprintf(tx_buffer, "auto_idle_timeout = %d\r\n", auto_idle_timeout);
    UARTStartTx();

    UARTWaitTx();
    sprintf(tx_buffer, "auto_idle_enable = %d\r\n", (int) auto_idle_enable);
    UARTStartTx();

    UARTWaitTx();
    sprintf(tx_buffer, "led_power_duration = %d\r\n", led_power_duration);
    UARTStartTx();

    UARTWaitTx();
    sprintf(tx_buffer, "auto_idle_counter = %d\r\n", auto_idle_counter);
    UARTStartTx();

    UARTWaitTx();
    sprintf(tx_buffer, "auto_idle_flag = %d\r\n", (int) auto_idle_flag);
    UARTStartTx();
}

void SetDefaults() {
    curcmd = NOOP;

    auto_idle_timeout = 4000;
    auto_idle_counter = 0;
    auto_idle_enable = FALSE;
    auto_idle_flag = 0;

    DoTransmitVariables = FALSE;
    DoQueryDrivers = FALSE;
    DoResetDrivers = FALSE;
    DoSwapBuffers = FALSE;

    led_power_duration = 700;

    buffer = buffer1;
    backbuffer = buffer2;
    memset(buffer, 0x00, BUFFERSIZE);
}

