from atlas import *
from functools import reduce

from interfaces import *
from tlc_controller import TlcController
from mem_reader import MemReader

@Module
def RefreshController(cube_size = 8, num_controllers = 4, leds_per_controller = 16):
    ram_depth = cube_size ** 3

    io = Io({
        'config': Input(refresh_config),
        'i2cs': [i2c_if for _ in range(4)],
        'layer_mask': Output(Bits(cube_size)),
        'ram_read': Output(BramReadIf(8, ram_depth))
    })

    #
    # It is assumed that the total number of outputs via the tlc controllers
    # is equal to the number of LEDs in one layer of the cube.
    #

    assert leds_per_controller * num_controllers == cube_size * cube_size

    states = Enum(['init', 'display', 'update'])
    state = Reg(Bits(states.bitwidth), reset_value=states.init)

    controllers = [Instance(TlcController()) for _ in range(num_controllers)]

    reader = Instance(MemReader(cube_size))
    layer_counter = Reg(Bits(Log2Ceil(cube_size)), reset_value=0)
    next_layer = Wire(Bits(Log2Ceil(cube_size)))
    cycle_counter = Reg(Bits(32), reset_value=0)
    layer_mask = Wire([Bits(1) for _ in range(cube_size)])
    controllers_ready = Wire(Bits(1))
    controllers_clear = Wire(Bits(1))
    controllers_update = Wire(Bits(1))

    layer_mask <<= [0 for _ in range(cube_size)]

    io.layer_mask <<= \
        Cat([layer_mask[cube_size - i - 1] for i in range(cube_size)])

    controllers_clear <<= False
    controllers_update <<= False
    next_layer <<= layer_counter + 1

    io.ram_read <<= reader.ram_read
    reader.start <<= False
    reader.layer <<= next_layer

    controllers_ready <<= \
        reduce(lambda a, b: a & b, [c.ready for c in controllers])

    #
    # Defaults and interface connections for each controller
    #

    for i in range(num_controllers):
        controllers[i].clear <<= controllers_clear
        controllers[i].update <<= controllers_update
        controllers[i].config <<= io.config.tlc_config
        io.i2cs[i] <<= controllers[i].i2c

        for j in range(leds_per_controller):
            controllers[i].led_state_in[j] <<= reader.led_state_out[i * j]

    #
    # State transition logic (Mainly for control signals)
    #

    with state == states.init:

        #
        # In this state, the first read cycle is kicked off and the
        # refresh loop starts by transitioning to s_clear.
        #
        # N.B. This state is effectively the same as s_display except here
        # layer outputs are held low because there is nothing to display,
        # and transition happens immediately.
        #

        reader.start <<= True
        state <<= states.update

    with state == states.display:

        #
        # In this state, the LEDs are actively displaying. In addition,
        # a new read cycle is started (async) so that the data is ready by
        # the time the next update comes around.
        #

        cycle_counter <<= cycle_counter + 1

        for i in range(cube_size):
            with layer_counter == i:
                layer_mask[i] <<= 1

        with cycle_counter == 0:
            reader.start <<= True

        with cycle_counter == io.config.display_cycles:
            state <<= states.update

    with state == states.update:

        #
        # In this state, wait for controllers and reader to be ready. Once
        # they are, send the update signal. This will cause the controllers
        # to latch the data from the reader and begin writing it over the
        # i2c port.
        #

        with controllers_ready & reader.done:
            controllers_update <<= True
            cycle_counter <<= 0
            state <<= states.display
            layer_counter <<= next_layer

    NameSignals(locals())
