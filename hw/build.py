import sys
import os

sys.path.append('./cubeware')
sys.path.append('../../atlas')

from atlas import *
from i2c_controller import I2cController

circuit = Circuit('cubeware', True, True)

print('Elaborating...')
with Context(circuit):
    circuit.top = I2cController()

print('Synthesizing...')
EmitCircuit(circuit, 'cubeware.v')
print('Done!')