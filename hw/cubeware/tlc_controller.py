from contextlib import contextmanager

from atlas import *

from interfaces import *
from i2c_controller import I2cController

ALLCALLADDR = 0x68
AUTOINC_NONE = 0x00
AUTOINC_ALL = 0x80
AUTOINC_BRIGHTNESS = 0xA0
AUTOINC_CONTROL = 0xC0
READ = 1
WRITE = 0

class TlcRegisters(object):
    MODE1 = 0
    MODE2 = 1
    PWM0 = 2
    PWM1 = 3
    PWM2 = 4
    PWM3 = 5
    PWM4 = 6
    PWM5 = 7
    PWM6 = 8
    PWM7 = 9
    PWM8 = 10
    PWM9 = 11
    PWM10 = 12
    PWM11 = 13
    PWM12 = 14
    PWM13 = 15
    PWM14 = 16
    PWM15 = 17
    GRPPWM = 18
    GRPFREQ = 19
    LEDOUT0 = 20
    LEDOUT1 = 21
    LEDOUT2 = 22
    LEDOUT3 = 23
    SUBADR1 = 24
    SUBADR2 = 25
    SUBADR3 = 26
    ALLCALLADR = 27
    IREF = 28
    EFLAG1 = 29
    EFLAG2 = 30

class TlcCmd():
    NOP = 0
    SOFT_RESET = 1
    SET_IREF = 4
    OSC_ON = 5
    OSC_OFF = 6
    WRITE_LEDS = 7
    ENABLE_LEDS = 8
    DISABLE_LEDS = 9

@Module
def TlcController():
    io = Io({
        'i2c': Output(i2c_if),
        'resetn': Output(Bits(1)),
        'config': Input(tlc_config),
        'cmd': Input(tlc_cmd_if),
        'args': Input([Bits(8) for _ in range(16)]),
        'err_count': Output(Bits(32))
    })

    states = Enum([
        'hard_reset',
        'soft_reset',
        'ready',
        'error'
    ])

    state = Reg(Bits(states.bitwidth), reset_value=states.hard_reset)

    error_count = Reg(Bits(32), reset_value=0)
    io.err_count <<= error_count

    reset_counter = Reg(Bits(16), reset_value=0)

    i2c_ctrl = Instance(I2cController(16))
    i2c_ctrl.config <<= io.config.i2c_config
    io.i2c <<= i2c_ctrl.i2c

    i2c_ctrl.req.valid <<= False
    i2c_ctrl.req.data.size <<= 0
    i2c_ctrl.req.data.address <<= 0
    i2c_ctrl.req.data.header <<= 0
    i2c_ctrl.req.data.payload <<= io.args

    io.resetn <<= 1
    io.cmd.ready <<= False

    # with i2c_ctrl.error:
    #     state <<= states.error

    def MakeRequest(size, address, direction, header, next_state):
        nonlocal state
        i2c_ctrl.req.valid <<= True
        i2c_ctrl.req.data.size <<= size
        i2c_ctrl.req.data.address <<= (address << 1) | direction
        i2c_ctrl.req.data.header <<= header
        with i2c_ctrl.req.ready:
            state <<= next_state

    def SetRegister(reg_addr):
        MakeRequest(
            1,
            ALLCALLADDR,
            WRITE,
            AUTOINC_ALL | TlcRegisters.MODE1,
            states.ready)

    @contextmanager
    def Opcode(opcode):
        nonlocal io
        with io.cmd.opcode == opcode:
            yield

    with state == states.hard_reset:
        io.resetn <<= 0
        reset_counter <<= reset_counter + 1
        i2c_ctrl.reset <<= 1

        with reset_counter > 50:
            io.resetn <<= 1
            i2c_ctrl.reset <<= 0

            with reset_counter > 100:
                reset_counter <<= 0
                state <<= states.soft_reset

    with state == states.soft_reset:
        MakeRequest(1, 0x6B, WRITE, 0xA5, states.ready)
        i2c_ctrl.req.data.payload[0] <<= 0x5A

    with state == states.ready:
        io.cmd.ready <<= i2c_ctrl.req.ready

        with Opcode(TlcCmd.SOFT_RESET):
            state <<= states.soft_reset

        with Opcode(TlcCmd.SET_IREF):
            SetRegister(TlcRegisters.IREF)

        with Opcode(TlcCmd.OSC_ON):
            SetRegister(TlcRegisters.MODE1)
            i2c_ctrl.req.data.payload[0] <<= 0x01

        with Opcode(TlcCmd.OSC_OFF):
            SetRegister(TlcRegisters.MODE1)
            i2c_ctrl.req.data.payload[0] <<= 0x11

        with Opcode(TlcCmd.WRITE_LEDS):
            MakeRequest(
                16,
                ALLCALLADDR,
                WRITE,
                AUTOINC_ALL | TlcRegisters.PWM0,
                states.ready)

        with Opcode(TlcCmd.ENABLE_LEDS):
            MakeRequest(
                4,
                ALLCALLADDR,
                WRITE,
                AUTOINC_ALL | TlcRegisters.LEDOUT0,
                states.ready)

            i2c_ctrl.req.data.payload[0] <<= 0xAA
            i2c_ctrl.req.data.payload[1] <<= 0xAA
            i2c_ctrl.req.data.payload[2] <<= 0xAA
            i2c_ctrl.req.data.payload[3] <<= 0xAA

        with Opcode(TlcCmd.DISABLE_LEDS):
            MakeRequest(
                4,
                ALLCALLADDR,
                WRITE,
                AUTOINC_ALL | TlcRegisters.LEDOUT0,
                states.ready)

            i2c_ctrl.req.data.payload[0] <<= 0x00
            i2c_ctrl.req.data.payload[1] <<= 0x00
            i2c_ctrl.req.data.payload[2] <<= 0x00
            i2c_ctrl.req.data.payload[3] <<= 0x00

    with state == states.error:
        error_count <<= error_count + 1
        state <<= states.ready

    NameSignals(locals())