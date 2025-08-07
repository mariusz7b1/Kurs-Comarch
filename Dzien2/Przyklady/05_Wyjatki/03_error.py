# pylint: disable=C0114,C0103,W0702,W0718
import os
os.system("cls")

try:
    x = float(input("Wprowadź liczbę: "))
    y = 1 / x
    print(y)
except Exception as zmienna:
    print("Pojawił się bład ", zmienna)

print("KONIEC.")
