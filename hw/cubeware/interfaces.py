from atlas import *

#
# I2C Related Interfaces
#

i2c_if = {
    'sda': Inout(Bits(1)),
    'scl': Inout(Bits(1)),
    'resetn': Output(Bits(1)),
}

def I2cPacket(max_size : int = 16):
    return {
        'size': Bits(8),
        'address': Bits(8),
        'header': Bits(8),
        'payload': [Bits(8) for _ in range(max_size)]
    }

#
# Config Related Interfaces
#

i2c_config = {
    'clock_threshold': Bits(32),
    'clock_period': Bits(32)
}

tlc_config = {
    'i2c_config': i2c_config,
    'mode1': Bits(8),
    'mode2': Bits(8),
    'iref': Bits(8)
}

refresh_config = {
    'tlc_config': tlc_config,
    'display_cycles': Bits(32)
}

#
# Mem Related Interfaces
#

def BramReadIf(width : int = 8, depth : int = 512):
    return  {
        'address': Bits(Log2Ceil(depth)),
        'data': Flip(Bits(width))
    }

def BramWriteIf(width : int = 8, depth : int = 512):
    return  {
        'address': Bits(Log2Ceil(depth)),
        'write': Bits(1),
        'data': Bits(width)
    }

#
# CSR Related Interfaces
#

csr_write_if = {
    'address': Bits(8),
    'write': Bits(1),
    'data': Bits(32)
}


