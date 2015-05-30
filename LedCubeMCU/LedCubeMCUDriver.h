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