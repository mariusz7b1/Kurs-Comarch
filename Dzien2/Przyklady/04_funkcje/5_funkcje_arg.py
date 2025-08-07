"""
Funkcje - tuple argumentów
"""
# pylint: disable=C0116
from os import system
system('cls')


def pokaz_arumenty(*args):
    print(type(args))
    print(f"Przekazano {len(args)} argumentów")
    print("Kolejne argumenty to : ")
    licznik = 0
    for war in args:
        print(f"Argument {licznik} : {war}")
        licznik += 1
    print()
    # koniec funkcji


pokaz_arumenty("ala", 1, 2.7, "ma", 88, 2.5)
pokaz_arumenty("mariusz", 7)
print()


lst1 = [1, 2, 3]
pokaz_arumenty(lst1)
pokaz_arumenty(*lst1)
