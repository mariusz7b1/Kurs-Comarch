"""
Lista 01a Zadanie 6
"""
# czysci ekran
from os import system
system('cls')

x = float(input("Podaj wartość ? "))  # wczytuję dane i zamieniam na float

# przeliczam na lbs
lbs = x * 2.205
# przeliczam na kg
kg = x * 0.454

lbs = round(lbs, 1)
kg = round(kg, 1)

print(x, "kg to ", lbs, "lbs")
print(x, "lbs to ", kg, "kg")


# wypisuje na ekran  f - string formatowanie wyjscia
# print(f"{x} kg to {lbs:0.1f} lbs")
# print(f"{x} lbs to {kg:0.1f} kg")

# zatrzymuję działanie programu
input()
