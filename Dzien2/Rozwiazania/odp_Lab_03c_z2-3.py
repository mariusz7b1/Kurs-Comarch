

"""
Przykładowa relizacja:
Zadanie 2,3  z Laboratorium 03c
"""

from os import system
system('cls')

# zródłowy ciąg znaków
str1 = input("Podaj ciąg znaków: ")


# zad 2 case sensitivity zastosowanie find()
if str1.find("Python") != -1:
    print("Twój ciąg zawiera słowo 'Python'.")
else:
    print("Twój ciąg nie zawiera słowa 'Python'.")

# zad 2 case sensitivity  zastosowanie in
if "Python" in str1:
    print("Twój ciąg zawiera słowo 'Python'.")
else:
    print("Twój ciąg nie zawiera słowa 'Python'.")

# zad 2 case insensitivity
if "Python".lower() in str1.lower():
    print("Twój ciąg zawiera słowo 'Python - pisane jakkolwiek :)'.")
else:
    print("Twój ciąg nie zawiera słowa 'Python'.")

# zad 3 case sensitivity
str2 = str1.replace("Python", "Java")

# zad 3 case insensitivity
str3 = str1.lower().replace("python", "Java")

print(str2)
print(str3)
