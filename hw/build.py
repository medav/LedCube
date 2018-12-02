import sys
import os

sys.path.append('./cubeware')
sys.path.append('../../atlas')

from atlas import *
from refresh_controller import RefreshController

circuit = Circuit('cubeware', True, True)

print('Elaborating...')
with Context(circuit):
    circuit.top = RefreshController()

print('Synthesizing...')
EmitCircuit(circuit, 'cubeware.v')
print('Done!')