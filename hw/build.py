import sys
import os

sys.path.append('./cubeware')
# sys.path.append('../../atlas')

from atlas import *
from cubeware import Cubeware

circuit = Circuit('cubeware', True, True)

print('Elaborating...')
with Context(circuit):
    circuit.top = Cubeware()

print('Synthesizing...')
EmitCircuit(circuit, 'cubeware.v')
print('Done!')