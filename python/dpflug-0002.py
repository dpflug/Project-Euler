#/usr/bin/python
x = 1
y = 1
fibsum = 0
while y < 4000000:
    if y % 2 == 0:
        fibsum += y
    tmp = y
    y = x + y
    x = tmp

print(fibsum)
