# Zadanie 1
$liczba = 10
if ($liczba % 2 -eq 0) {
    Write-Host "Zadanie 1: Liczba jest parzysta."
}

# Zadanie 2
$sciezka = "C:\folder_testowy"
if (-not (Test-Path $sciezka)) {
    New-Item -Path $sciezka -ItemType Directory
    Write-Host "Zadanie 2: Folder został utworzony."
}

# Zadanie 3
$tablica = 1, 2, 3, 4, 5
$element = 3
if ($element -in $tablica) {
    Write-Host "Zadanie 3: Element znajduje się w tablicy."
}

# Zadanie 4
$a = 5
$b = 10
if ($a -gt $b) {
    Write-Host "Zadanie 4: a jest większe od b."
} elseif ($a -lt $b) {
    Write-Host "Zadanie 4: a jest mniejsze od b."
} else {
    Write-Host "Zadanie 4: a jest równe b."
}

# Zadanie 5
$liczba = 0
if ($liczba -gt 0) {
    Write-Host "Zadanie 5: Liczba jest dodatnia."
} elseif ($liczba -lt 0) {
    Write-Host "Zadanie 5: Liczba jest ujemna."
} else {
    Write-Host "Zadanie 5: Liczba jest równa zero."
}
