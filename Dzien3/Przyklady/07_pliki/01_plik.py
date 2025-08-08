"""
pliki - tradycyjna obsługa otwórz / zamknij
"""
from os import system
from sys import exit as exit_prog
system("cls")

# odczyt z pliku

in_file_name = "testowy.txt"
out_file_name = "slowa_z_pliku.txt"
file_path = "d:\\dane_kurs\\"             # "d:\dane\"

try:
    # otwarcie pliku do odczytu
    f_in = open(file_path + in_file_name, "rt", encoding="utf-8")
except IOError:
    print("Nie udało się otworzyć pliku do odczytu")
    exit_prog()

try:
    # otwarcie pliku do zapisu
    f_out = open(file_path + out_file_name, "wt", encoding="utf-8")
except IOError:
    print("Nie udało się otworzyć pliku do zapisu")
    f_in.close()  # nie jest to konieczne
    exit_prog()
# mam otwarte 2 pliki

f_out.write("To jest moj plik ze słowami" + "\n\n")
while True:
    # odczyt za posrednictewm readline
    linia = f_in.readline()
    if len(linia) == 0:
        break
    else:
        # przykład
        lista_slow = linia.split()
        for slowo in lista_slow:
            # zapis za posrednictwem write
            f_out.write(slowo + "\n")

f_in.close()
f_out.close()
