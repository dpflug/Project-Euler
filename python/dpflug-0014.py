def memoize(f):
    class memodict(dict):
        __slots__ = ()
        def __missing_(self, key):
            self[key] = ret = f(key)
            return ret
    return memodict().__getitem__


class countcalls(object):
    "Decorator that keeps track of the number of times a function is called."

    __instances = {}

    def __init__(self, f):
        self.__f = f
        self.__numcalls = 0
        countcalls.__instances[f] = self

    def __call__(self, *args, **kwargs):
        self.__numcalls += 1
        return self.__f(*args, **kwargs)

    def count(self):
        return countcalls.__instances[self.__f].__numcalls

    def reset(self):
        "Resets a function's counter."
        countcalls.__instances[self.__f].__numcalls = 0
        return 0

    @staticmethod
    def counts():
        "Returns a dict of {function: # of calls} for all registered functions."
        return dict([(f, countcalls.count(f)) for f in countcalls.__instances])


@countcalls
def collatz(n):
    if (n == 1):
        1
    elif (n % 2 == 0):
        collatz(n/2)
    else:
        collatz(3*n+1)
