""" Przykłady operacji na stringach w Pythonie

"""
from os import system
system('cls')


# 1. Zmiana wielkości liter
tekst = "Witaj Świecie"
print(tekst.lower())  # małe litery
print(tekst.upper())  # duże litery

# 2. Sprawdzanie czy string zaczyna się lub kończy określonym tekstem
print(tekst.startswith("Witaj"))  # sprawdza, czy zaczyna się od "Witaj"
print(tekst.endswith("żegnaj"))   # sprawdza, czy kończy się na "żegnaj"

# 3. Znajdowanie pozycji podciągu
print(tekst.find("Świecie"))  # zwraca indeks początku podciągu

# 4. Wycinanie stringów
print(tekst[6:12])  # wycina string od indeksu 6 do 11

# 5. Podmiana części stringu
print(tekst.replace("Świecie", "Pythonie"))

# 6. Dzielenie stringu na listę
print(tekst.split())  # dzieli string na listę słów

# 7. Formatowanie stringów
imie = "Jan"
powitanie = f"Cześć, {imie}!"
print(powitanie)

# 8. Usuwanie białych znaków na początku i na końcu
tekst_z_bialymi_znakami = "   Witaj Świecie!   "
print(tekst_z_bialymi_znakami.strip())

# 9. Sprawdzanie czy string zawiera tylko litery, cyfry, itp.
print("123abc".isalnum())  # sprawdza, czy string zawiera tylko litery i cyfry


# 10. Sprawdzanie, czy string jest cyfrą, literą, małą lub dużą literą
print("123".isdigit())  # sprawdza, czy string zawiera tylko cyfry
print("abc".isalpha())  # sprawdza, czy string zawiera tylko litery
print("ABC".isupper())  # sprawdza, czy wszystkie litery są dużymi literami
print("abc".islower())  # sprawdza, czy wszystkie litery są małymi literami

# 11. Łączenie elementów listy w jeden string
slowa = ["Python", "jest", "niesamowity"]
print(" ".join(slowa))  # łączy elementy listy w jeden string z separatorami

# 12. Iterowanie po stringu
for litera in "Python":
    print(litera)

# 13. Formatowanie stringów z wykorzystaniem metody format()
# stary
imie = "Anna"
komunikat = "Witaj, {}!".format(imie)
print(komunikat)

# 14. Wycinanie ciągu znaków z lewej/prawej strony
tekst = "xxWitajxx"
print(tekst.lstrip('x'))  # usuwa 'x' z lewej strony
print(tekst.rstrip('x'))  # usuwa 'x' z prawej strony

# 15. Zliczanie wystąpień podciągu
print("Hello world".count('l'))  # zlicza wystąpienia 'l' w stringu

# 16. Sprawdzanie czy string spełnia określone kryteria (np. czy jest tytułem)
# sprawdza, czy każde słowo zaczyna się od dużej litery
print("Witaj Świecie".istitle())
