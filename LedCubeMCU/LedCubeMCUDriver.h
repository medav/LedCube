// Size for LED cube
#define SIZE 8
#define BUFFERSIZE 128

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
// Prefix 'V_' for 'Variable'
typedef enum {
    V_LED_POWER_DURATION,
    V_AUTO_IDLE_ENABLE,
    V_AUTO_IDLE_TIMEOUT
} CONTROLDATA;

// Power duration for LEDs (us)
static int led_power_duration = 300;

// Auto idle enable
static byte auto_idle_enable;

// Countdown to idle screen
static int auto_idle_timeout;
// ===================================

// ========= Internal Data ===========
byte buffer1[BUFFERSIZE];
byte buffer2[BUFFERSIZE];
byte * buffer, * backbuffer;
byte buffer_swap;

int auto_idle_counter;
byte auto_idle_flag;

CUBECMD curcmd;
byte args[16];
// ===================================

// ======= Function Prototypes =======
void DispatchCmd();
void InitUART();
void InitI2C();
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