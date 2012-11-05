def sieve_of_erastosthenes():
    primes = {}
    prime = 2
    while True:
        if prime not in primes:
            yield prime
            primes[prime*prime] = [prime]
        else:
            for p in primes[prime]:
                primes.setdefault(p + prime, []).append(p)
            del(primes[prime])
        prime += 1
