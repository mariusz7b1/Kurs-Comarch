# pylint: disable=C0114,C0103,W0702
import os
os.system("cls")


# Przykład 0: Ty Except
try:
    # Kody, które mogą spowodować błąd
    x = 1 / 0
except:
    print("nastąpił bład")


# Przykład 1: użycie else w połączeniu z except i elese
try:
    # Kody, które mogą spowodować błąd
    x = 1 / 0
except ZeroDivisionError:
    print("Nie można dzielić przez zero!")
else:
    # Kod, który wykona się tylko wtedy, gdy nie bedzie błedu
    print("Nie złapano żadnego błędu.")


# Przykład 2: użycie except i finally
try:
    # Kody, które mogą spowodować błąd
    x = 1 / 0
except ZeroDivisionError:
    print("Nie można dzielić przez zero!")
finally:
    # Kod, który wykona się zawsze, niezależnie od tego, czy jest błąd czy nie
    print("Ten kod zostanie wykonany zawsze.")

# Przykład 3: użycie except, else i finally
try:
    # Kody, które mogą spowodować błąd
    x = 1 / 1
except ZeroDivisionError:
    print("Nie można dzielić przez zero!")
else:
    # Kod, który wykona się tylko wtedy, gdy nie bedzie błedu
    print("Nie złapano żadnego błędu.")
finally:
    # Kod, który wykona się zawsze, niezależnie od tego, czy jest błąd czy nie
    print("Ten kod zostanie wykonany zawsze.")
