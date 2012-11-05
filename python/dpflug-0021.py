#!/usr/bin/python
import factor

amicables = set()
for x in range(2,10000):
    y = factor.divisors(x)
    y.remove(x)
    y = sum(y)
    z = factor.divisors(y)
    z.remove(y)
    z = sum(z)
    if z == x and x != y:
        amicables.add(x)
        amicables.add(y)

print(sum(amicables))
