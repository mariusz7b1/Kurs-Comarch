"""
Przykładowa relizacja zadania 3 z Lab_02b
bez wykorzytania operatorów logicznych

"""
from os import system
system('cls')


rok = int(input("Wprowadź rok: "))

if rok < 1582:
    print("Przed kalendarzem Gregorianskim")
elif rok > 2070:
    print("Nie siegaj tak daleko w przyszość")
else:
    przestepny = False
    if rok % 4 == 0:
        przestepny = True
        if rok % 100 == 0:
            przestepny = False
        if rok % 400 == 0:
            przestepny = True
    if przestepny:
        print(f"Rok {rok} jest przestępny")
    else:
        print(f"Rok {rok} NIE przestępny")
