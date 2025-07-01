# 1

[int]$liczba = Read-Host "Podaj liczbę cąłkowitą"

if ($liczba -gt 10) {
    Write-Host "Liczba jest większa od 10."
} else {
    Write-Host "Liczba nie jest większa od 10."
}



# 2: Sprawdzanie, czy zmienna jest pusta
$tekst = Read-Host -Prompt "podaj swoje imię"
if ($tekst -eq "") 
{
    Write-Host "Prosiłem cię o Imię"
}
else 
{
    Write-Host "Witaj $tekst"
}

# 3 Sprawdzanie, czy plik istnieje
if (Test-Path "D:\plik.txt")
{
    Write-Host "Plik istnieje."
}
else
{
    Write-Host "Plik nie istnieje."
    # UTWÓRZ TEN PLIK
    New-Item -ItemType File "D:\plik.txt"
}


# 4 Sprawdzanie wielu warunków
[int]$wynik = Read-Host "Podaj liczbę cąłkowitą"

if ($wynik -gt 50 -and $wynik -lt 100) {
    Write-Host "Wynik jest pomiędzy 50 a 100."
} elseif ($wynik -le 50) {
    Write-Host "Wynik jest mniejszy lub równy 50."
} else {
    Write-Host "Wynik jest większy lub równy 100."
}
