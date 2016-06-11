#include "lcm.h"


void InitUART() {
    // 230.4 kBaud
    // Multiplier on
    TXSTA1.BRGH = 1;
    
    TXSTA1.BRG16 = 0;

    // SPBRGH1:SPBRG1 = 0x0010
    SPBRGH1 = 0;
    SPBRG1 = 16;

    // Want Async operation
    TXSTA1.SYNC = 0;
    TXSTA1.TXEN = 1;

    // Enable Interrupts
    PIE1.RC1IE = 1;
    IPR1.RC1IP = 1;

    // Turn on the UART
    RCSTA1.SPEN = 1;
    RCSTA1.CREN = 1;

    tx_active = FALSE;
    tx_counter = 0;

}

bool StartTx() {
    if(tx_active != FALSE) return FALSE;

    tx_counter = 0;
    tx_active = TRUE;

    TXREG1 = tx_buffer[0];

    return TRUE;
}

void UARTSend() {
    if(tx_active != FALSE) {
        tx_counter++;

        if(tx_counter > TXBUFFERSIZE || tx_buffer[tx_counter] == 0) {
            tx_active = FALSE;
            tx_counter = 0;
            return;
        }

        TXREG1 = tx_buffer[tx_counter];
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
        if(buffer_counter < BUFFERSIZE)
            buffer[buffer_counter++] = recv;
        break;
    case SETCONTROL:
        if(arg_counter < ARGBUFFERSIZE)
            arg_buffer[arg_counter++] = recv;
        break;
    default:
        curcmd = NOOP;
        break;
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