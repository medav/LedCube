from atlas import *
from functools import reduce

from interfaces import *
from tlc_controller import *

@Module
def RefreshController():
    io = Io({
        'config': Input(refresh_config),
        'tlcs': Output([tlc_cmd_if for _ in range(num_tlcs)]),
        'reader': Output({
            'start': Bits(1),
            'layer': Bits(Log2Ceil(cube_size)),
            'done': Flip(Bits(1))
        }),
        'layer_mask': Output(Bits(cube_size)),
    })

    tlcs_cmd = Wire(Bits(4))
    tlcs_ready = Wire(Bits(1))
    layer_mask = Reg(Bits(8), reset_value=0x00)

    io.layer_mask <<= layer_mask

    tlcs_cmd <<= TlcCmd.NOP
    tlcs_ready <<= reduce(lambda a, b: a & b, [
        io.tlcs[i].ready
        for i in range(num_tlcs)
    ])

    for i in range(num_tlcs):
        io.tlcs[i].opcode <<= tlcs_cmd

    disp_counter = Reg(Bits(32), reset_value=0)
    layer_counter = Reg(Bits(3), reset_value=0)

    io.reader.start <<= False
    io.reader.layer <<= layer_counter

    states = Enum([
        'init', # 000
        'reset', # 001
        'osc_on', # 010
        'wr_leds', # 011
        'en_leds', # 100
        'disp', # 101
        'osc_off', # 110
        'next_layer' # 111
    ])

    state = Reg(Bits(states.bitwidth), reset_value=states.init)

    with state == states.init:
        with tlcs_ready & (io.config.enable != 0):
            layer_counter <<= 0
            layer_mask <<= 0x01
            io.reader.start <<= True
            state <<= states.reset

    with state == states.reset:
        with tlcs_ready:
            tlcs_cmd <<= TlcCmd.SOFT_RESET
            state <<= states.osc_on

    with state == states.osc_on:
        with tlcs_ready & io.reader.done:
            tlcs_cmd <<= TlcCmd.OSC_ON
            state <<= states.wr_leds

    with state == states.wr_leds:
        with tlcs_ready:
            tlcs_cmd <<= TlcCmd.WRITE_LEDS
            layer_counter <<= layer_counter + 1
            state <<= states.en_leds

    with state == states.en_leds:
        with tlcs_ready:
            tlcs_cmd <<= TlcCmd.ENABLE_LEDS
            disp_counter <<= 0
            io.reader.start <<= True
            state <<= states.disp

    with state == states.disp:
        disp_counter <<= disp_counter + 1

        with disp_counter > io.config.disp_cycles:
            disp_counter <<= 0
            state <<= states.osc_off

    with state == states.osc_off:
        with tlcs_ready:
            tlcs_cmd <<= TlcCmd.OSC_OFF
            state <<= states.next_layer

    with state == states.next_layer:
        with io.config.enable == 0:
            state <<= states.init
            layer_mask <<= 0
        with otherwise:
            state <<= states.reset
            for i in range(8):
                with layer_counter == i:
                    layer_mask <<= (1 << i)

    NameSignals(locals())
