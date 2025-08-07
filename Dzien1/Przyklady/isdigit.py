"""
przyklad isdigit i walidacja danych 
"""
# ver 1 z break
print("*"*30)
while True:
    liczba = input("Podaj liczbę ")
    if liczba.isdigit():
        liczba = int(liczba)
        break
print(liczba)

# ver 2  nie spełnia DRY Don't Repeat YourSelf")
print("*"*30)
liczba = input("Podaj liczbę ")
while not liczba.isdigit():
    liczba = input("Podaj liczbę ")

liczba = int(liczba)
print(liczba)

# ver 3 ( DRY)
print("*"*30)
liczba = ""
while not liczba.isdigit():
    liczba = input("Podaj liczbę ")

liczba = int(liczba)
print(liczba)
