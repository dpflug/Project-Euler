#!/usr/bin/python
import itertools
import factor

sum = 0
for x in itertools.count():
    sum += x
    if len(factor.divisors(x)) > 500:
        print(x)
        break
