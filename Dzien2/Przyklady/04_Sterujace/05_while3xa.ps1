# Do-While
$licznik = 0
Write-Host "Przykład do-while:"
do {
    Write-Host "  Licznik wynosi: $licznik"
    $licznik++
} while ($licznik -lt 3)

# Reset licznika
$licznik = 0

# Do-Until
Write-Host "Przykład do-until:"
do {
    Write-Host "  Licznik wynosi: $licznik"
    $licznik++
} until ($licznik -eq 3)

# Reset licznika
$licznik = 0

# Do
Write-Host "Przykład do:"
do {
    Write-Host "  To się wykona tylko raz."
    $licznik++
} while ($licznik -lt 1)
