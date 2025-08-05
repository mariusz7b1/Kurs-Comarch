"""
Lista 02b Zadanie 2
a, b, c, d
"""
from os import system
system('cls')

# zadanie 2a
linia = ""
for y in range(0, 10):
    for x in range(0, 10):
        linia = linia + "*"
    print(linia)
    linia = ""
print("\n\n")

# zadanie 2b
linia = ""
for y in range(0, 10):
    for x in range(0, 10):
        if y == 0 or y == 9:
            linia += "*"
        else:
            if x == 0 or x == 9:
                linia += "*"
            else:
                linia += " "
    print(linia)
    linia = ""
print("\n\n")

# zadanie 2c
linia = ""

for y in range(0, 10):
    for x in range(0, 10):
        if y == 0 or y == 9:
            linia += "*"
        else:
            if x == 0 or x == 9 or x == y:
                linia += "*"
            else:
                linia += " "
    print(linia)
    linia = ""
print("\n\n")

# zadanie 2d
for y in range(0, 10):
    for x in range(0, 10):
        if y == 0 or y == 9:
            linia += "*"
        else:
            if x == 0 or x == 9 or x == y or x == 9 - y:
                linia += "*"
            else:
                linia += " "
    print(linia)
    linia = ""


print("\n\n")
linia = ""
for y in range(0, 10):
    for x in range(0, 10):
        if y % 2 == 0:
            linia += "*" if x % 2 == 0 else " "
        elif y % 2 != 0:
            linia += "*" if x % 2 != 0 else " "
    print(linia)
    linia = ""
input()
