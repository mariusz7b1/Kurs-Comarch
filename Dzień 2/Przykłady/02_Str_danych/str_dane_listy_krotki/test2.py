lst1 = []                   # Tworzenie pustej listy.
for i in range(10):
    lst1.append(i + 1)
print(lst1)

var1 = int(input("podaj liczbę "))
if var1 in lst1:
    print(f"wartość {var1} jest na liście")
else:
    print(f"wartość {var1} NIE jest na liście")
