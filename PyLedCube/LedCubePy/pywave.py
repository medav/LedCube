import ledcube as lc
import math

c = lc.cube()
t = 0

while True:
    c.ClearBuffer()
    for x in xrange(8):
        for y in xrange(8):
            z = int(3.5 + 3.5 * math.sin(x / 4.0 + y / 4.0 + t / 24.0))
            
    t = t + 1