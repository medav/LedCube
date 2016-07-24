#include "lcm.h"

int buffer_counter;

byte arg_buffer[ARGBUFFERSIZE];
int arg_counter;

byte tx_buffer[TXBUFFERSIZE];
int tx_counter;
volatile byte tx_active;

CUBECMD curcmd;

void InitUART() {
    // 230.4 kBaud
    // Multiplier on
    TXSTA1.BRGH = 1;
    TXSTA1.BRG16 = 0;

    // SPBRGH1:SPBRG1 = 0x0010
    SPBRGH1 = 0;
    SPBRG1 = 16;

    // Want Async operation
    TXSTA1.SYNC = FALSE;
    TXSTA1.TXEN = TRUE;

    // Turn on the UART
    RCSTA1.SPEN = TRUE;
    RCSTA1.CREN = TRUE;

    tx_active = FALSE;
    tx_counter = 0;
    
    // Enable Interrupts
    PIE1.TX1IE = FALSE;
    IPR1.RC1IP = 1;
    IPR1.TX1IP = 1;

    // This should be the LAST thing we do
    PIE1.RC1IE = TRUE;
}

byte UARTStartTx() {
    if(tx_active != FALSE) return FALSE;

    tx_counter = 0;
    tx_active = TRUE;

    TXREG1 = tx_buffer[0];

    PIE1.TX1IE = TRUE;
    
    return TRUE;
}

void UARTWaitTx() {
    while(tx_active != FALSE) { Refresh(); }
}

void UARTSendStr(char * str) {
    UARTWaitTx();
    sprintf(tx_buffer, "%s\r\n", str);
    UARTStartTx();
}

void UARTSend() {
    if(tx_active != FALSE) {
        tx_counter++;

        if(tx_counter > TXBUFFERSIZE || tx_buffer[tx_counter] == 0) {
            PIE1.TX1IE = FALSE;
            tx_active = FALSE;
            tx_counter = 0;
            return;
        }

        TXREG1 = tx_buffer[tx_counter];
    }
    else {
        // Invalid state - should never get here
        PIE1.TX1IE = FALSE;
    }
}

void UARTRecieve() {
    byte recv = RCREG1;
    
    if(recv == ENDCMD) {
        if(curcmd != NOOP) {
            DispatchCmd();
            curcmd = NOOP;
        }
        return;
    }

    switch(curcmd) {
    case NOOP:
        curcmd = recv;
        buffer_counter = 0;
        arg_counter = 0;
        break;

    case READFRAME:
        if(buffer_counter < BUFFERSIZE &&
           (recv & 0xAA) == 0)
            backbuffer[buffer_counter++] = recv;
        else
            curcmd = NOOP;
        break;

    case SETCONTROL:
        if(arg_counter < ARGBUFFERSIZE)
            arg_buffer[arg_counter++] = recv;
        break;

    default:
        curcmd = NOOP;
        break;
    }

    // Character commands (for debugging)
    if (curcmd < READFRAME && curcmd > NOOP) {
        DispatchCmd();
        curcmd = NOOP;
    }
}

void SetVar(CONTROLDATA var, int val) {
    switch(var) {
    case V_LED_POWER_DURATION:
        led_power_duration = val;
        break;
    case V_AUTO_IDLE_ENABLE:
        auto_idle_enable = val;
        break;
    case V_AUTO_IDLE_TIMEOUT:
        auto_idle_timeout = val;
        break;
    default:
        break;
    }
}

void DispatchCmd() {
    switch(curcmd) {
    case TRANSMITVARS:
        DoTransmitVariables = TRUE;
        break;

    case RESETDRIVERS:
        DoResetDrivers = TRUE;
        break;

    case READFRAME:
        SwapBuffers();
        break;

    case SETCONTROL:
        SetVar(arg_buffer[0], *((int *) (arg_buffer + 1)));
        break;

    default:
        break;
    }
}