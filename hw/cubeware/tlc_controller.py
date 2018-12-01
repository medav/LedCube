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

@Module
def TlcController():
    io = Io({
        'config': Input(tlc_config),
        'clear': Input(Bits(1)),
        'update': Input(Bits(1)),
        'ready': Output(Bits(1)),
        'i2c': i2c_if,
        'led_state_in': Input([Bits(8) for _ in range(16)])
    })

    states = Enum([
        'reset',
        'setup_mode',
        'setup_iref',
        'ready',
        'clear',
        'update',
        'enable',
        'error'
    ])

    state = Reg(Bits(states.bitwidth), reset_value=states.reset)

    i2c_ctrl = Instance(I2cController(16))
    i2c_ctrl.config <<= io.config.i2c_config
    io.i2c <<= i2c_ctrl.i2c

    i2c_ctrl.req.valid <<= False
    i2c_ctrl.req.data.size <<= 0
    i2c_ctrl.req.data.address <<= 0
    i2c_ctrl.req.data.header <<= 0
    i2c_ctrl.req.data.payload <<= [0 for _ in range(16)]

    io.ready <<= False

    with i2c_ctrl.error:
        state <<= states.error

    def MakeRequest(size, address, direction, header, next_state):
        nonlocal state

        i2c_ctrl.req.valid <<= True
        i2c_ctrl.req.data.size <<= size
        i2c_ctrl.req.data.address <<= (address << 1) | direction
        i2c_ctrl.req.data.header <<= header

        with i2c_ctrl.req.ready:
            state <<= next_state

    with state == states.reset:
        MakeRequest(1, 0x6B, WRITE, 0xA5, states.setup_mode)
        i2c_ctrl.req.data.payload[0] <<= 0x5A

    with state == states.setup_mode:
        MakeRequest(
            2,
            ALLCALLADDR,
            WRITE,
            AUTOINC_ALL | TlcRegisters.MODE1,
            states.setup_iref)

        i2c_ctrl.req.data.payload[0] <<= io.config.mode1
        i2c_ctrl.req.data.payload[1] <<= io.config.mode2

    with state == states.setup_iref:
        MakeRequest(
            1,
            ALLCALLADDR,
            WRITE,
            AUTOINC_ALL | TlcRegisters.MODE1,
            states.ready)

        i2c_ctrl.req.data.payload[0] <<= io.config.iref

    with state == states.ready:
        io.ready <<= True

        with io.clear:
            state <<= states.clear

        with io.update:
            state <<= states.update

    with state == states.clear:
        MakeRequest(
            4,
            ALLCALLADDR,
            WRITE,
            AUTOINC_ALL | TlcRegisters.LEDOUT0,
            states.ready)

        for i in range(4):
            i2c_ctrl.req.data.payload[0] <<= 0


    with state == states.update:
        MakeRequest(
            16,
            ALLCALLADDR,
            WRITE,
            AUTOINC_ALL | TlcRegisters.PWM0,
            states.enable)

        for i in range(16):
            i2c_ctrl.req.data.payload[i] <<= io.led_state_in[i]

    with state == states.enable:

        MakeRequest(
            4,
            ALLCALLADDR,
            WRITE,
            AUTOINC_ALL | TlcRegisters.LEDOUT0,
            states.ready)

        for i in range(4):
            i2c_ctrl.req.data.payload[i] <<= 0xAA

    with state == states.error:
        io.i2c.resetn <<= False
        state <<= states.reset

    NameSignals(locals())