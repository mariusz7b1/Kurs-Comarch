"""
Przykładowa relizacja:
Zadanie 4 ver enumerate z Laboratorium 03c
"""

from os import system
system('cls')


str1 = input("Podaj ciąg znaków: ")
lista_slow = str1.split()
lista_slow = [
    slowo.title() if len(slowo) > 2 or i == 0 else slowo.lower()
    for i, slowo in enumerate(lista_slow)
]
print(" ".join(lista_slow))
