import sys
import os

sys.path.append('./cubeware')
# sys.path.append('../../atlas')

from atlas import *
from cubeware import Cubeware

circuit = Circuit('cubeware', True, True)

generator = \
    lambda: Cubeware()

with TestModule(generator) as tb:
    tb.SetupVcd('dump.vcd')

    for i in range(4):
        tb.io.i2cs[i].sda_i <<= 0
        tb.io.i2cs[i].scl_i <<= 1

    tb.Reset(1)
    tb.Step(1000000)