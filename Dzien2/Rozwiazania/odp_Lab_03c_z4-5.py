"""
Przykładowa relizacja:
Zadanie 4,5  z Laboratorium 03c
"""
# pylint: disable=C0200

from os import system
system('cls')

# zródłowy ciąg znaków
str1 = input("Podaj ciąg znaków: ")
lista_slow = str1.split()

# realizacja 4


for i in range(len(lista_slow)):
    if len(lista_slow[i]) > 2 or i == 0:   # slowa dłuższe od 2 lub pierwsze
        lista_slow[i] = lista_slow[i].title()
    else:
        lista_slow[i] = lista_slow[i].lower()
print(" ".join(lista_slow))


# realizacja 5
str1 = input("Podaj ciąg znaków: ")
lista_slow = str1.split()
for slowo in lista_slow:
    print(slowo)
