from atlas import *
from functools import reduce

from interfaces import *
from tlc_controller import TlcController
from mem_reader import MemReader

@Module
def SingleTlc(cube_size = 8, num_controllers = 4, leds_per_controller = 16):
    io = Io({
        'i2cs': Output([i2c_if for _ in range(1)]),
        'resetns': Output([Bits(1) for _ in range(1)])
    })

    counter = Reg(Bits(32), reset_value=0)
    counter <<= counter + 1

    tlc = Instance(TlcController())
    tlc.config <<= {
        'i2c_config': {
            'clock_threshold': 100,
            'clock_period': 200
        },
        'mode1': 0x11,
        'mode2': 0x00,
        'iref': 0xCF
    }

    tlc.clear <<= False
    tlc.update <<= True
    io.i2cs[0] <<= tlc.i2c
    io.resetns[0] <<= tlc.resetn

    for i in range(16):
        tlc.led_state_in[i] <<= counter(27, 20)

    NameSignals(locals())
