
from os import system
system("cls")

pol_ang = {
    "kwiat": "flower",
    "woda": "water",
    "gleba": "soil",
    "drzewo": "tree",
    "trawa": "grass"
}


# petla 1
print("")  # [(kwait,flower),(woda,water),(),]


for klucz, wartosc in pol_ang.items():
    print(f"{klucz}  -> {wartosc}")
