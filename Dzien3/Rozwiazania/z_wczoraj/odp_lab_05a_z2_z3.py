"""
Przykładowe rozwiązanie zadania 5.4 i 5.5
"""
from os import system
system('cls')


def read_int(prompt: str, minimum: int, maximum: int) -> int:
    """
    Funkcja oczekuj enastepujacych parameteów
    prompt: typ str
    maximum,minimum: typ int
    """
    assert isinstance(prompt, str), "prompt musi być typu str"
    assert isinstance(minimum, int), "minimum musi być typu int"
    assert isinstance(maximum, int), "maximum musi by typ int"
    prompt = f"{prompt} z zakresu od {minimum}  do {maximum} "

    while True:
        try:
            wartosc = int(input(prompt))
        except ValueError:
            print("podaj liczbę !!!! złożoną z cyfr ")
        except KeyboardInterrupt:
            print(" Nic z tego  :)")
        else:
            if wartosc < minimum or wartosc > maximum:
                print(f"zły zakres !!! Podaj liczbę od {minimum} do {maximum}")
            else:
                break
    return wartosc


def read_float(prompt: str, minimum: int, maximum: int) -> float:

    assert isinstance(prompt, str), "prompt musi być typu str"
    assert isinstance(minimum, int), "minimum musi być typu int"
    assert isinstance(maximum, int), "maximum musi by typ int"

    prompt = f"{prompt} z zakresu od {minimum}  do {maximum} "
    while True:
        try:
            wartosc = float(input(prompt))
        except ValueError:
            print("podaj liczbę !!!! złożoną z cyfr i maksymalnie jednej . ")
        except KeyboardInterrupt:
            print(" Nic z tego  :)")
        else:
            if wartosc < minimum or wartosc > maximum:
                print(f"zły zakres !!! Podaj liczbę od {
                      minimum} do {maximum}")
            else:
                break
    return wartosc


def main():
    print(read_int("Podaj liczbę całkowitą", 1, 5))

    rok_uro = read_int("Podaj swoj rok urodzenia", 1920, 2020)
    print(f"Urodziłeś się w {rok_uro}")

    print(read_float("Podaj liczbę rzeczywistą", 1, 5))


if __name__ == "__main__":
    main()
    input()
