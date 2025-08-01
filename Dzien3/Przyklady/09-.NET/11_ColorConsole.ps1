# Przykład 11
$kolory = [Enum]::GetNames([System.ConsoleColor])
foreach ($color in $kolory) {
    Write-Host "Kolor: $color" -ForegroundColor $color
}

[Console]::ForegroundColor = "Yellow"
Write-Host "To jest żółty tekst"
[console]::CapsLock
[Console]::ResetColor()
Write-Host "Poo reset"