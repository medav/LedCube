from atlas import *

from interfaces import *

@Module
def MemReader(cube_size):
    ram_depth = cube_size ** 3
    layer_size = cube_size ** 2

    io = Io({
        'ram_read': Output(BramReadIf(8, ram_depth)),
        'start': Input(Bits(1)),
        'layer': Input(Bits(Log2Ceil(cube_size))),
        'led_state_out': Output([Bits(8) for _ in range(layer_size)]),
        'done': Output(Bits(1)),
    })

    led_state = Reg(
        [Bits(8) for _ in range(layer_size)],
        reset_value=[0 for _ in range(layer_size)])

    read_counter = Reg(Bits(32), reset_value=0)
    base_address = Reg(Bits(32), reset_value=0)
    done = Reg(Bits(1), reset_value=False)
    capture_read = Reg(Bits(1), reset_value=False)
    capture_counter = Reg(Bits(32))

    io.led_state_out <<= led_state
    io.done <<= done

    capture_counter <<= read_counter

    #
    # Start overrides the current read cycle. It is assumed that whatever
    # module manages this knows what it's doing.
    #

    with io.start:
        read_counter <<= 0
        done <<= False

        #
        # The following code will effectively instantiate a lookup table of
        # constant offsets to use for the start address of the read. This
        # should work fine since cube_size is assumed to be relatively small.
        #

        for layer_i in range(cube_size):
            with io.layer == layer_i:
                base_address <<= layer_i * layer_size

    #
    # This module requires exclusive access to a read port since there is not
    # "ready" signal on the read interface. While there is still more data to
    # read, this module will always be actively reading an address.
    #

    capture_read <<= False
    io.ram_read.address <<= base_address + read_counter

    with ~done:
        capture_read <<= read_counter < layer_size
        read_counter <<= read_counter + 1

        with read_counter == layer_size:
            done <<= True


    with capture_read:
        led_state[capture_counter] <<= io.ram_read.data

    NameSignals(locals())
