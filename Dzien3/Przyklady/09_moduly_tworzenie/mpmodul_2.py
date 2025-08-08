"""
Moduł funkcji read_int,read_flot

"""


def read_int(prompt: str, minimum: int, maximum: int) -> int:
    """
    Funkcja oczekuje nastepujacych parameteów
    prompt: typ str
    maximum,minimum: typ int
    """
    assert isinstance(prompt, str),  "prompt musi być typu str"
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
    """
        Funkcja oczekuje nastepujacych parameteów
        prompt: typ str
        maximum,minimum: typ float
        """

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
