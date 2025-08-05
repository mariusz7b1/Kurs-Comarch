"""
Przykładowa Relizacja zadania 3b  z Lab_02a
wykorzytania operatorów logicznych i zagnieżdzonej petli while
wraz z walidacja danych wejsciowych
"""
from os import system
system('cls')

ROK_OD = 1582
ROK_DO = 2070

while True:
    while True:

        str1 = f"Wprowadź rok z zakresu od {ROK_OD} do {ROK_DO} ? "
        rok = input()
        if rok.isdigit():
            rok = int(rok)
            if ROK_OD <= rok <= ROK_DO:
                break
            else:
                print("Rok poza zakresem")
        else:
            print("PODAJ LICZBĘ !!!")

    if rok % 4 == 0 and (rok % 100 != 0 or rok % 400 == 0):
        print(f"Rok {rok} jest przestępny")
    else:
        print(f"Rok {rok} NIE jest przestępny")

    print()
    decyzja = input("Sprawdzić Ci kolejny rok [T/N] ? ")
    if decyzja.upper() != "T":
        break
