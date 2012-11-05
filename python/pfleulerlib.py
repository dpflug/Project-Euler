#!/usr/bin/python
import math

def factor(n):
    x = n
    factors = []
    p = primes.sieve_of_erastosthenes()
    while x > 2:
        cp = next(p)
        while x % cp == 0:
            factors.append(cp)
            x = x // cp
    return factors


def divisors(n):
    divisors = [1,n]
    limit = math.sqrt(n)
    for x in range(2, n - 1):
        if n % x == 0 and x not in divisors:
            divisors.append(x)

    return divisors

def sieve_of_erastosthenes():
    primes = {}
    prime = 2
    while True:
        if prime not in primes:
            yield prime
            primes[prime * prime] = [prime]
        else:
            for p in primes[prime]:
                primes.setdefault(p + prime, []).append(p)
            del(primes[prime])
        prime += 1

def product(l):
    prod = 1
    if type(l) == list:
        for x in l:
            prod *= x
    return prod

# From http://pthree.org/2007/09/15/largest-palindromic-number-in-python/
def is_palin(string):
    """Returns true if a string is a palindrome"""
    start, end = 0, len(string) - 1
    while end > start:
        if string[start] != string[end]:
            return False
        start += 1
        end -= 1
    return True
