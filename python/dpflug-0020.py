#!/usr/bin/python
import math

f = math.factorial(100)
bigsum = 0
for c in str(f):
    bigsum += int(c)

print(bigsum)
