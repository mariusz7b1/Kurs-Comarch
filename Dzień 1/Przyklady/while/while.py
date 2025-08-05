from os import system
system('cls')

zm1 = 0
while zm1 != 33:
    zm1 = int(input("podaj magiczną liczbę :)"))
    if zm1 == 99:
        continue
    print(zm1)
    if zm1 == 66:
        break
else:
    print("to jest sekcja 'else'")

print("Koniec petli")
