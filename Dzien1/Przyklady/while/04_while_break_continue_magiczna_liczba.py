""" 
Podanie magicznej liczby konczy dzialanie. Ale czy tylko ?
Przeanalizuj kod i zastanow się jak działa program
"""
from os import system
system('cls')


magiczna_liczba = 0
while magiczna_liczba != 33:

    magiczna_liczba = int(input("podaj magiczną liczbę :) "))

    if magiczna_liczba == 99:
        continue
    if magiczna_liczba % 66 == 0:
        break

    if magiczna_liczba == 33:
        print("Podałeś magiczną liczbę ")
    else:
        print(magiczna_liczba, "nie jest magiczną liczbą")
else:
    print("program zakonczył działanie znalezieniem Magicznej liczby", magiczna_liczba)
