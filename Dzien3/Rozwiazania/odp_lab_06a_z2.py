"""
Przykładowe rozwiązanie zadania 2 z listy 6a
"""
from random import randint
from os import system
system("cls")


def wylosuj_liczby(n=10, start=1, stop=100) -> None:
    lista_liczb = []
    for _ in range(n):
        lista_liczb.append(randint(start, stop))

    return tuple(lista_liczb)


def wylosuj_liczby_2(n=10, start=1, stop=100) -> None:
    return tuple(randint(start, stop) for _ in range(n))


print(wylosuj_liczby())
test = wylosuj_liczby_2()
print(test)
