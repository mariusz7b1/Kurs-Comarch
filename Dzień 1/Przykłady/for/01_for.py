"""
Przykład for  - podstawowy
"""
# czyszczenie ekranu
from os import system
system('cls')

for znak in "Mariusz uczy Pytona":
    if znak == " ":
        print()
    print(znak, end="-")

print()

for cyfra in "165031806510":
    print(cyfra)
    if cyfra == "0":
        print("znalazlem cyfre 0")
