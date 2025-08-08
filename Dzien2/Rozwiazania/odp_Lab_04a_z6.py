"""
Przykładowe realizacjae zadan 6 z listy 4a
"""


def pierwsze_n(n):
    liczby_pierwsze = []  # pusta lista na przechowanie liczb pierwszych
    liczba = 2  # zaczynamy od 2, która jest najmniejszą liczbą pierwszą

    while len(liczby_pierwsze) < n:  # pętla wykonuje się dopóki nie znajdziemy n liczb pierwszych
        jest_pierwsza = True  # zakładamy na początku, że i jest liczbą pierwszą

        # pierwiastek kwadratowy z szukanej liczby
        liczba2 = pow(liczba, 0.5)

        for p in liczby_pierwsze:  # sprawdzamy wszystkie już znalezione liczby pierwsze
            if p > liczba2:
                break

            if liczba % p == 0:  # jeżeli i jest podzielne przez p
                jest_pierwsza = False  # to nie jest liczbą pierwszą
                break  # i nie musimy sprawdzać dalszych liczb

        if jest_pierwsza:  # jeżeli i jest liczbą pierwszą
            # dodajemy i do listy liczb pierwszych
            liczby_pierwsze.append(liczba)

        liczba += 1  # przechodzimy do następnej liczby

    return liczby_pierwsze  # zwracamy znalezione liczby pierwsze


def main():
    l_pier = pierwsze_n(9000)
    print(l_pier)
    print(len(l_pier))


main()
