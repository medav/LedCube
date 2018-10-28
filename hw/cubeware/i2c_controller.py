from atlas import *

from interfaces import *

@Module
def I2cController(max_packet_size : int = 16):
    io = Io({
        'config': Input(i2c_config),
        'req': Input({
            'valid': Bits(1),
            'ready': Flip(Bits(1)),
            'data': I2cPacket(max_packet_size)
        }),
        'i2c': i2c_if,
        'error': Output(Bits(1))
    })

    states = Enum(['idle', 'start', 'write', 'nack', 'error', 'stop'])
    state = Reg(Bits(states.bitwidth), reset_value=states.idle)

    packet = Reg([Bits(8) for _ in range(max_packet_size + 2)])
    packet_size = Reg(Bits(8), reset_value=0)

    clock_counter = Reg(Bits(32), reset_value=0)
    data_counter = Reg(Bits(16), reset_value=0)
    beat_counter = Reg(Bits(16), reset_value=0)

    pulse = clock_counter >= io.config.clock_threshold
    rising_edge = clock_counter == io.config.clock_threshold
    beat_finished = clock_counter >= io.config.clock_period

    next_data = Wire([Bits(1) for _ in range(8)])

    for i in range(8):
        next_data[i] <<= packet[data_counter + 1](i, i)

    data_reg = \
        Reg([Bits(1) for _ in range(8)], reset_value=[0 for _ in range(8)])

    data_out = Wire(Bits(1))

    #
    # SDA handling
    #

    sda_disable = 0
    sda_pulldown = 1
    sda_active = 2

    sda_state = Wire(Bits(2))

    io.i2c.sda <<= '1\'bZ'

    with sda_state == sda_pulldown:
        io.i2c.sda <<= 0

    with sda_state == sda_active:
        io.i2c.sda <<= data_out

    #
    # SCL Handling
    #

    scl_disable = 0
    scl_active = 1

    scl_state = Wire(Bits(2))

    io.i2c.scl <<= '1\'bZ'

    with scl_state == scl_active:
        io.i2c.scl <<= pulse

    #
    # Default Values
    #

    sda_state <<= sda_disable
    scl_state <<= scl_disable
    io.req.ready <<= False
    io.error <<= False
    io.i2c.resetn <<= False
    data_out <<= data_reg[7 - beat_counter]
    clock_counter <<= clock_counter + 1

    #
    # State Transition Logic
    #

    with state == states.idle:
        io.req.ready <<= pulse

        with io.req.ready & io.req.valid:
            state <<= states.start
            packet_size <<= io.req.data.size + 2
            data_counter <<= 0
            clock_counter <<= 0
            beat_counter <<= 0
            packet[0] <<= io.req.data.address
            packet[1] <<= io.req.data.header
            for i in range(max_packet_size):
                packet[i + 2] <<= io.req.data.payload[i]

    with state == states.start:
        sda_state <<= sda_pulldown

        with pulse:
            state <<= states.write
            clock_counter <<= 0
            data_reg <<= [packet[0](i, i) for i in range(8)]

    with state == states.write:
        sda_state <<= sda_active
        scl_state <<= scl_active

        with pulse & ~io.i2c.scl:
            clock_counter <<= clock_counter

        with otherwise:
            with beat_finished:
                clock_counter <<= 0

                with beat_counter == 7:
                    beat_counter <<= 0
                    state <<= states.nack

                with otherwise:
                    beat_counter <<= beat_counter + 1

    with state == states.nack:
        scl_state <<= scl_active

        with beat_finished:
            clock_counter <<= 0

            with data_counter == (packet_size - 1):
                state <<= states.stop

            with otherwise:
                state <<= states.write
                data_counter <<= data_counter + 1
                data_reg <<= next_data

        with rising_edge & io.i2c.sda:
            state <<= states.error

    with state == states.error:
        io.error <<= True

    with state == states.stop:
        sda_state <<= sda_pulldown
        scl_state <<= scl_active

        with beat_finished:
            state <<= states.idle
            clock_counter <<= 0

    NameSignals(locals())


