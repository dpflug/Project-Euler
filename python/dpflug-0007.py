#!/usr/bin/python
import primes

p = primes.sieve_of_erastosthenes()

for x in range(1,10001):
    next(p)

print(next(p))
