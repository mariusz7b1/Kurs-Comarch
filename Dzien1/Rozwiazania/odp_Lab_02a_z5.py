"""
Lista 02a Zadanie 5
"""
from os import system
system('cls')


rok = int(input("Podaj rok: "))


if rok % 4 == 0 and (rok % 100 != 0 or rok % 400 == 0):
    print("Rok przestępny")
else:
    print("Rok nieprzestępny")
