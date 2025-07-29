function Zmienslownik ($slownik) {
    $slownik["klucz1"] = "nowa wartość"
    $slownik["klucz2"] = 42
}

# Utworzenie slownika i dodanie kilku elementów
$mojslownik = @{}
$mojslownik["klucz1"] = "stara wartość"
$mojslownik["klucz2"] = 24

# Wyświetlenie zawartości slownika przed wywołaniem funkcji
Write-Host "Przed wywołaniem funkcji:"
$mojslownik.GetEnumerator() | ForEach-Object {Write-Host ("{0}: {1}" -f $_.Key, $_.Value)}

# Wywołanie funkcji, która zmienia zawartość slownika
Zmienslownik $mojslownik

# Wyświetlenie zawartości slownika po wywołaniu funkcji
Write-Host "Po wywołaniu funkcji:"
$mojslownik.GetEnumerator() | ForEach-Object {Write-Host ("{0}: {1}" -f $_.Key, $_.Value)}
