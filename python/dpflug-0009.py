#!/usr/bin/env python
import pfleulerlib

def euler9():
    for c in range(1000, 0, -1):
        for b in range(998, 0, -1):
            a = 1000 - (c + b)
            if a ** 2 + b ** 2 == c ** 2 and a > 0:
                return [a, b, c]

ans = euler9()
print(ans)
print(pfleulerlib.product(ans))
