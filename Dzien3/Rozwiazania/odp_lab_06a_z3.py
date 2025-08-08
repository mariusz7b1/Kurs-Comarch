import datetime


def ile_dni_do_nowego_roku():
    dzisiaj = datetime.date.today()
    nowy_rok = datetime.date(dzisiaj.year + 1, 1, 1)
    dni_do_nowego_roku = (nowy_rok - dzisiaj).days
    return dni_do_nowego_roku


# Przykładowe użycie funkcji
print("Pozostało", ile_dni_do_nowego_roku(), "dni do Nowego Roku.")
