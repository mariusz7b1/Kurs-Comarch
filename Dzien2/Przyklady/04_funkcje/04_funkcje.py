"""
Opcjonalne
Funkcje - podstawy, walidacja
"""
# pylint: disable=C0116
import os
os.system("cls")


def funkcja_testowa(a, b=20, c=30):
    print(f"a={a}\tb={b}\tc={c}")


def funkcja_testowa_int(a, b=20, c=30):
    if not isinstance(a, int):
        print("złe a")
        return False

    if not isinstance(b, int):
        print("złe b")
        return False

    if not isinstance(c, int):
        print("złe c")
        return False

    print(f"Suma podanych parametrów to {a+b+c}")
    print(f"a={a}\tb={b}\tc={c}")
    return True


"""
funkcja_testowa('a', 2, 3)
funkcja_testowa(1)
funkcja_testowa(c=1, a=2, b=6)
"""

print(funkcja_testowa_int('a', 3, 3.99))
print(funkcja_testowa_int(12, 3, 3))
