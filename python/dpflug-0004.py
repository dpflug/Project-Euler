#!/usr/bin/env python
import pfleulerlib

three_digits = range(999,99,-1)

largest_palin = 0
for x in three_digits:
    for y in three_digits:
        if pfleulerlib.is_palin(str(x * y)) and x * y > largest_palin:
            largest_palin = x * y

print(largest_palin)
