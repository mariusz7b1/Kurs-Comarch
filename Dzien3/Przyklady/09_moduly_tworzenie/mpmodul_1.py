""" Przykładowy moduł w jezyku Python test 1 """
# pylint: disable=C0116


def pozdrowienia(imie):
    print(f"witaj {imie}. Jak się masz ?")


def przedstawiam_sie():
    napis = "Cześć jestem Python"
    print("*"*(len(napis)+4))
    print(f"* {napis} *")
    print("*"*(len(napis)+4))


def powitanie():
    przedstawiam_sie()
    imie = input("A jak ty masz na imię ? ")
    return imie


if __name__ == "__main__":
    print("Wywołanie  bezpośrednie(nie jako moduł)")
    print(__name__)
    # testowanie modułu
    imie = powitanie()
    pozdrowienia(imie)

else:
    print("Jestem modułem")
    print(__name__)
