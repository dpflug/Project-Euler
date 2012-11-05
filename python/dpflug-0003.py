#!/usr/bin/python
import math
import primes
largest_prime = 0
for x in primes.sieve_of_erastosthenes():
    if x > math.sqrt(600851475143):
        break
    elif 600851475143 % x == 0:
        largest_prime = x

print(largest_prime)
