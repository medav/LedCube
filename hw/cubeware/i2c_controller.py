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

    # This register holds the whole packet currently being transmitted. Note
    # that _all_ packets have a address and header byte which is extracted from
    # the packet bundle. This register treats the address, header, and payload
    # all as one packet (Hence the +2)
    packet = Reg([Bits(8) for _ in range(max_packet_size + 2)])

    # Total packet size (address + header + payload size)
    packet_size = Reg(Bits(8), reset_value=0)

    #
    # This module uses several counters to produce a I2C protocal with
    # configurable data-rate given by io.clock_threshold and io.clock_period.
    # Both config signals are in terms of clock cycles of whatever clock this
    # module is running on. The term 'beat' is used to describe a "clock cycle"
    # of the I2C protocol, while 'cycle' and 'clock cycle' refer to cycles as
    # it pertains to this module.
    #

    # Counts actual cycles in the current beat.
    clock_counter = Reg(Bits(32), reset_value=0)

    # Tracks which byte of the packet this module is currently writing. This is
    # used to select which byte of the data packet is to be written.
    data_counter = Reg(Bits(16), reset_value=0)

    # Tracks which beat this module is on. This is used to select which bit of
    # the current output byte is to be written to SDA.
    beat_counter = Reg(Bits(16), reset_value=0)

    # This signal tracks when the cycle count has crossed the threshold value.
    # This is used to indicate where the I2C SCL line should go to logic HIGH.
    pulse = clock_counter >= io.config.clock_threshold

    # This signal is used to track when the rising edge of SCL occurs for the
    # purpose of recording NACKs.
    rising_edge = clock_counter == io.config.clock_threshold

    # This indicates when the current I2C beat is finished and the next bit of
    # data should be written out to the SDA line (in a new beat).
    beat_finished = clock_counter >= io.config.clock_period

    next_data = Wire([Bits(1) for _ in range(8)])

    for i in range(8):
        next_data[i] <<= packet[data_counter + 1](i, i)

    data_reg = \
        Reg([Bits(1) for _ in range(8)], reset_value=[0 for _ in range(8)])

    data_out = Wire(Bits(1))

    #
    # Constants used for determining state of the I2C pins.
    #  sda_disabled: Pin output is disabled. External pull-up resistor hold the
    #      line high assuming no one else on the bus is pulling it down.
    #
    #  sda_pulldown: Pin output is disabled but this module holds it low.
    #
    #  sda_active: Pin output from this module is enabled.
    #

    sda_disable = 0
    sda_pulldown = 1
    sda_active = 2
    scl_disable = 0
    scl_active = 1

    #
    # Use state signals to determine what value to drive sda and scl with.
    #

    sda_state = Wire(Bits(2))
    scl_state = Wire(Bits(2))

    io.i2c.sda <<= '1\'bZ'
    io.i2c.scl <<= '1\'bZ'

    with sda_state == sda_pulldown:
        io.i2c.sda <<= 0

    with sda_state == sda_active:
        io.i2c.sda <<= data_out

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

            #
            # N.B. The address and header are added into the internal packet
            # register and so the packet size has 2 bytes + payload size.
            #

            packet_size <<= io.req.data.size + 2

            data_counter <<= 0
            clock_counter <<= 0
            beat_counter <<= 0

            #
            # Address and header are the first two bytes to be written.
            #

            packet[0] <<= io.req.data.address
            packet[1] <<= io.req.data.header

            for i in range(max_packet_size):
                packet[i + 2] <<= io.req.data.payload[i]

    with state == states.start:

        #
        # I2C write start condition is signaled by holding SDA low and SCL
        # high. After half a beat, SCL is tied low (by state transition to
        # s_write) and the first beat begins.
        #

        sda_state <<= sda_pulldown

        #
        # pulse signals when half the beat is over. Transition to s_write here
        # and start outputting data.
        #

        with pulse:
            state <<= states.write
            clock_counter <<= 0
            data_reg <<= [packet[0](i, i) for i in range(8)]

    with state == states.write:
        sda_state <<= sda_active
        scl_state <<= scl_active

        #
        # When the clock is to be asserted (signaling the latching of sda by
        # the slave) the slave might hold scl to ground to to indicate it can't
        # accept the data yet (clock stretching). In this case, clock_counter
        # simply holds its value until the slave releases the clock.
        #

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

        #
        # If SDA is not held low (by the target device) when SCL transitions to
        # HIGH, this indicates a failed NACK.
        #

        with rising_edge & io.i2c.sda:
            state <<= states.error

    with state == states.error:

        #
        # This state is reached when a byte finishes transmition and no NACK is
        # received from the target device.
        #

        io.error <<= True

    with state == states.stop:

        #
        # The I2C stop condition occurs when SDA is held low for one clock beat
        # then finally released (pulled high by the pull-up resistor). Once
        # this beat finishes, this module will transition to s_idle where SDA
        # will go HIGH, completing the stop condition.
        #

        sda_state <<= sda_pulldown
        scl_state <<= scl_active

        with beat_finished:
            state <<= states.idle
            clock_counter <<= 0

    NameSignals(locals())


