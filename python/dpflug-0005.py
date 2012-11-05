#!/usr/bin/python
import itertools
import factor

dlimit = 20
if dlimit < 3:
    dlimit
else:
    common_factors = {}
    for x in range(3, dlimit):
        factors = factor.factor(x)
        mcf = []
        for k, g in itertools.groupby(sorted(factors)):
            z = list(g)
            mcf = z if len(z) > len(mcf) else mcf
        if mcf[0] not in common_factors or len(mcf) > common_factors[mcf[0]]:
            common_factors[mcf[0]] = len(mcf)
    prod = 1
    print(common_factors)
    for x in common_factors:
        prod *= x ** common_factors[x]
    print(prod)
