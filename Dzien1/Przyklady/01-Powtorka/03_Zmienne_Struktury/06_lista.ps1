<#
Out-Null jest przyjętym sposobem na ignorowanie wartości zwracanej przez metodę Add(),
która informuje o indeksie, pod który został wstawiony nowy element.
#>

# Inicjalizacja ArrayList
$lista = New-Object System.Collections.ArrayList

# Dodawanie elementów
$lista.Add('Pierwszy') | Out-Null
$lista.Add('Drugi') | Out-Null
$lista.Add('Trzeci') | Out-Null

# Wyświetlanie całej listy
$lista

# Usuwanie elementu
$lista.Remove('Drugi')

# Wyświetlanie listy po usunięciu elementu
$lista

# Dodawanie elementu na określoną pozycję
$lista.Insert(1, 'Nowy Drugi')

# Wyświetlanie listy po dodaniu elementu
$lista

# Usuwanie elementu z określonego indeksu
$lista.RemoveAt(0)

# Wyświetlanie listy po usunięciu elementu z indeksu
$lista

# Czyszczenie całej listy
$lista.Clear()

# Wyświetlanie listy po wyczyszczeniu
$lista
