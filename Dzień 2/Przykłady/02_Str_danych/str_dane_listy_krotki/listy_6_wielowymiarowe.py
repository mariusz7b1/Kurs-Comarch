from os import system
system('cls')

# list 2 wymiary
lista1 = []
for j in range(3):
    lista1.append([])
    for i in range(4):
        lista1[j].append(str(j) + ":" + str(i))

lst1 = [[str(j) + ":" + str(i) for i in range(4)] for j in range(3)]


for i in lista1:
    print(i)

for i in lst1:
    print(i)


lst1 = [[[str(x) + "-" + str(y) + "-" + str(z) for z in range(4)]
         for y in range(4)] for x in range(4)]

lst2 = []
for x in range(4):
    lst2.append([])
    for y in range(4):
        lst2[x].append([])
        for z in range(4):
            lst2[x][y].append(str(x) + "-" + str(y) + "-" + str(z))

print(lst1[3][1][2])
print(lst2[3][1][2])


kolory = ["czerwony", "zielony", "niebieski"]
modele = ["toyota", "skoda", "ford", "renault"]
list_samochodow = [[f"{model}:{kolor}" for model in modele]
                   for kolor in kolory]
print(list_samochodow)
