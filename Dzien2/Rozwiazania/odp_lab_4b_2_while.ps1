# Zadanie 1
$i = 1
$suma = 0
while ($i -le 20) {
    $suma += $i
    $i++
}
Write-Host "Zadanie 2: Suma" $suma

# Zadanie 2
$i = 10
while ($i -ge 1) {
    Write-Host "Zadanie 3: Odliczanie" $i
    $i--
}

# Zadanie 3
$i = 2
while ($i -le 20) {
    Write-Host "Zadanie 4: Parzysta liczba" $i
    $i += 2
}

# Zadanie 4
$i = 1
while ($i -lt 15) {
    if ($i % 2 -ne 0) {
        Write-Host "Zadanie 5: Nieparzysta liczba" $i
    }
    $i++
}


# Zadanie 5
$i = 1
while ($i -le 5) {
    Write-Host "Zadanie 8: Liczba" $i "i jej odwrotność" (1 / $i)
    $i++
}

# Zadanie 6
$i = 1
while ($i -le 8) {
    Write-Host "Zadanie 9: 2 do potęgi" $i "wynosi" ([math]::Pow(2,$i))
    $i++
}

# Zadanie 7
$liczba = 123
$suma = 0
$liczbaStr = $liczba.ToString()
$i = 0
while ($i -lt $liczbaStr.Length) {
    $suma += [int]$liczbaStr[$i]
    $i++
}
Write-Host "Zadanie 10: Suma cyfr liczby $liczba wynosi" $suma

# Zadanie 8
do {
    $liczba = Read-Host "Wprowadź liczbę większą niż 0"
} while ($liczba -le 0)
Write-Host "Wprowadzono poprawną liczbę: $liczba"

# Zadanie 9
$losowaLiczba = Get-Random -Minimum 1 -Maximum 10
do {
    $zgadnij = Read-Host "Zgadnij liczbę od 1 do 10"
} while ($zgadnij -ne $losowaLiczba)
Write-Host "Gratulacje! Odgadnięto liczbę: $losowaLiczba"

# Zadanie 10
do {
    Write-Host "Zadanie 10: Menu Wyboru"
    Write-Host "1. Opcja 1"
    Write-Host "2. Opcja 2"
    Write-Host "3. Wyjście"
    $wybor = Read-Host "Wybierz opcję"
} while ($wybor -ne "3")
Write-Host "Wybrano wyjście"



# Zadanie 11
do {
    $limit = Read-Host "Podaj liczbę większą od 2"
} while ($limit -le 2)

$a = 0
$b = 1

Write-Host "Ciąg Fibonacciego do liczby $limit :"
Write-Host $a
if ($limit -ge 1) {
    Write-Host $b
}

while (($a + $b) -le $limit) {
    $suma = $a + $b
    Write-Host $suma
    $a = $b
    $b = $suma
}
