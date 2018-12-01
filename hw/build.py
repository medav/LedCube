import sys
import os

sys.path.append('./cubeware')
sys.path.append('../../atlas')

from atlas import *
from tlc_controller import TlcController

circuit = Circuit('cubeware', True, True)

print('Elaborating...')
with Context(circuit):
    circuit.top = TlcController()

print('Synthesizing...')
EmitCircuit(circuit, 'cubeware.v')
print('Done!')