#!/usr/bin/python
sumofsquares = sum(map(lambda x: pow(x,2), range(1,101)))
squareofsums = pow(sum(range(1,101)), 2)
print(sumofsquares, squareofsums, squareofsums - sumofsquares)
