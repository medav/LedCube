from atlas import *

num_tlcs = 4
cube_size = 8
ram_depth = cube_size ** 3

#
# I2C Related Interfaces
#

i2c_if = {
    'sda_o': Bits(1),
    'sda_i': Flip(Bits(1)),
    'scl_o': Bits(1),
    'scl_i': Flip(Bits(1)),
}

def I2cPacket(max_size : int = 16):
    return {
        'size': Bits(8),
        'address': Bits(8),
        'header': Bits(8),
        'payload': [Bits(8) for _ in range(max_size)]
    }

#
# Refresh Controller <--> TLC[]
#

tlc_cmd_if = {
    'opcode': Bits(4),
    'ready': Flip(Bits(1)),
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
}

refresh_config = {
    'disp_cycles': Bits(32),
    'enable': Bits(8)
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


