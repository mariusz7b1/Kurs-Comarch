param(
    [string]$Sciezka,
    [string]$Tekst
)

Add-Content -Path $Sciezka -Value $Tekst

Write-Host "Dodano tekst do pliku $Sciezka"
