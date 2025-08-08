import matplotlib.pyplot as plt

# Utwórz dane do wykresu
x, y = [], []
for i in range(-10, 11, 1):
    x.append(i)
    y.append(2 * i**2 + 3 * i + 1)

# Ustawienie wykresu
plt.plot(x, y)

# Etykiety osi i tytuł
plt.xlabel('x')
plt.ylabel('y')
plt.title('Wykres funkcji 2x^2 + 3x + 1')

# Wyświetlenie wykresu
plt.show()
