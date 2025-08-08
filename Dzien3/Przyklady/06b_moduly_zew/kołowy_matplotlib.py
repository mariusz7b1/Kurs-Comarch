import matplotlib.pyplot as plt

# Twoja lista danych
data = [10, 10, 15, 25, 30, 10]

# Oblicz sumę wszystkich danych
total = sum(data)

# Oblicz procent dla każdej liczby z listy
percentages = [(i/total)*100 for i in data]

# Etykiety dla legendy
labels = []
for d, p in zip(data, percentages):
    label = f'{d} ({p:.1f}%)'
    labels.append(label)


# Rysuj wykres kołowy
plt.pie(data, labels=labels, autopct='%1.1f%%')

# Dodaj legendę
plt.legend(labels, title="Dane", loc="center left",
           bbox_to_anchor=(1, 0, 0.5, 1))

# Pokaż wykres
plt.show()
