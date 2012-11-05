#!/usr/bin/python
import primes

p = primes.sieve_of_erastosthenes()
primes = []
while True:
    y = next(p)
    if y < 2000000:
        primes.append(y)
    else:
        break

print(sum(primes))
