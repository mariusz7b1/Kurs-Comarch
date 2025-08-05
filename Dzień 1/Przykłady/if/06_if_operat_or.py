"""
input
przykład if  'przedzia'
"""
from os import system

system('cls')

number = input("Podaj liczbę z zakresu  -10  do 10  ? ")

if not number.isdigit():
    print("miałeś podac liczbę !!!! czy to takie trudne ?")
else:
    number = int(number)
    # liczba z zakresu
    # z operatorm 'and'
    # if number >= -10 and number <= 10:
    if -10 <= number <= 10:
        print("Huura dobra liczba")
    else:
        print("Czytaj ze zrozumieniem ")
