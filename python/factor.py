import math
import primes

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