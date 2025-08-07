"""
Listy - for
"""
from os import system
system('cls')

moja_lista = ["biały", "różowy", "niebieski", "żółty", "zielony"]
for kolor in moja_lista:
    print(kolor, end=" ")
print("\n\n")


#  z wyk indeksu dla koneserów
for i in range(0, len(moja_lista)):
    print(moja_lista[i], end=" ")
