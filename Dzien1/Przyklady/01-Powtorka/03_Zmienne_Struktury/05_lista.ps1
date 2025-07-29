# Tworzenie ArrayList

$lista = New-Object System.Collections.ArrayList
#[System.Collections.ArrayList]$lista =@()

# Dodawanie elementów
$lista.Add('element1') | Out-Null
$lista.Add('element2') | Out-Null
$lista.Add('element3') | Out-Null

# Wyświetlanie listy
$lista
# Usuniecie 
$lista.RemoveAt(1)
$lista

$lista.Insert(1,"Element kolejny")
$lista

# znajdź indeks
$lista.IndexOf("element3")
