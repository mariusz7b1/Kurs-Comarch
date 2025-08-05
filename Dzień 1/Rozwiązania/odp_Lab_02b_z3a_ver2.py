"""
Przykładowa zadania 3 z Lab_02b z wykorzytania operatorów logicznych
i stałych :)
"""
from os import system
system('cls')

ROK_OD = 1582
ROK_DO = 2070

rok = int(input(f"Wprowadź rok z zakresu od {ROK_OD} do {ROK_DO} ? "))
if ROK_OD <= rok <= ROK_DO:             # rok w zakresie
    if rok % 4 == 0 and (rok % 100 != 0 or rok % 400 == 0):
        print(f"Rok {rok} jest przestępny")
    else:
        print(f"Rok {rok} NIE jest przestępny")
else:
    print(f"Rok poza zakresem {ROK_OD} - {ROK_DO}  !!!!")
