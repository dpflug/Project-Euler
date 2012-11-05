#!/usr/bin/python
num = 2 ** 1000
bigsum = 0
for c in str(num):
    bigsum += int(c)

print(bigsum)
