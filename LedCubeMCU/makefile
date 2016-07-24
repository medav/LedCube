MIKROCPATH=C:\Users\micha\Documents\Mikroelektronika\mikroC PRO for PIC
DEVICE=P18LF45K22
OSC=64
SRC="lcm.c" "tlc59116.c" "comm.c" "ledctl.c"
TARGET=lcm.hex

all: default
default: $(TARGET)

$(TARGET):
    @mikroCPIC1618 -MSF -p$(DEVICE) -DL -O00000000 -fo$(OSC) -SP"$(MIKROCPATH)\Defs\" -SP"$(MIKROCPATH)\uses\P18\" -SP"$(MAKEDIR)\src\"  -IP"$(MAKEDIR)\include\" $(SRC) "__Lib_Math.mcl" "__Lib_MathDouble.mcl" "__Lib_System.mcl" "__Lib_Delays.mcl" "__Lib_CString.mcl" "__Lib_MemManager.mcl" "__Lib_I2C_c34d01.mcl" "__Lib_UART_c67d67.mcl" "__Lib_Sprintf.mcl" "__Lib_CType.mcl"
    @del src\*.cp
    @del src\*.mcl
    @del src\*mcppi_callertable.txt
    @move src\$@ $@

clean:
    @del $(TARGET)
