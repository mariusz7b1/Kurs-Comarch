# pylint: disable=C0116,C0103
"""
Funkcje - podstawy
"""
import os
os.system("cls")


def pozdrowienia(imie):
    print(f"witaj {imie}. Jak się masz ?")


def przedstawiam_sie():
    napis = "Cześć jestem Python"
    print("*"*(len(napis)+4))
    print(f"* {napis} *")
    print("*"*(len(napis)+4))


def powitanie():
    przedstawiam_sie()
    imie = input("A jak ty masz na imię ? ")
    return imie


imie_kursanta = powitanie()
pozdrowienia(imie_kursanta)

# pozdrowienia(powitanie())
