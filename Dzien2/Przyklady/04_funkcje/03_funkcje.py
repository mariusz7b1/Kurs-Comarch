"""
Funkcje - podstawy, parametry i wartosci domyslne

"""
# pylint: disable=C0116
import os
os.system("cls")


def funkcja_testowa(a=14, b=20, c=30):
    print(f"a={a}\tb={b}\tc={c}")


funkcja_testowa(1, 2, 3)

funkcja_testowa(1)

funkcja_testowa(c=1, a=2, b=6)

funkcja_testowa(12, b=10)

funkcja_testowa()
