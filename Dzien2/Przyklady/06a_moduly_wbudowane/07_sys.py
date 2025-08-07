import sys
from os import system, path
system("cls")

# wypisz element modulu radnom nie zaczynajace sie od "_"
for ele in dir(sys):
    if ele[0] != "_":
        print(ele, end=" ")
"""
print("\n\n")
print("scieżki ....")
for p in sys.path:
    print(p)
"""
print()
nazwa_pliku = "d:\\test_ska.py"

nazwa_pliku1 = r'd:\test_ska.py'

if path.isfile(nazwa_pliku1):
    print(f"Wielkość pliku wynosi {path.getsize(nazwa_pliku)}")
print(path.isdir("d:\\dane"))
