"""
Przykładowe realizacja zadania 7 z listy 4a
"""


def suma_kwadratow(*args):
    return sum(x**2 for x in args)


print(suma_kwadratow(1, 5, 3, 2, 4, 4))
