from atlas import *

from interfaces import *

@Module
def MemReader():
    ram_depth = cube_size ** 3
    layer_size = cube_size ** 2

    io = Io({
        'ram_read': Output(BramReadIf(8, ram_depth)),
        'start': Input(Bits(1)),
        'layer': Input(Bits(Log2Ceil(cube_size))),
        'done': Output(Bits(1)),
        'output': Output({
            'wen': Bits(1),
            'bank': Bits(Log2Ceil(num_tlcs)),
            'index': Bits(4),
            'data': Bits(8)
        })
    })

    done = Reg(Bits(1), reset_value=True)
    io.done <<= done

    read_counter = Reg(Bits(9), reset_value=0)
    base_address = Reg(Bits(9), reset_value=0)

    capture_read = Reg(Bits(1), reset_value=False)
    capture_counter = Reg(Bits(9))

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


    io.output.wen <<= capture_read
    io.output.bank <<= capture_counter(5, 4)
    io.output.index <<= capture_counter(3, 0)
    io.output.data <<= io.ram_read.data

    NameSignals(locals())
