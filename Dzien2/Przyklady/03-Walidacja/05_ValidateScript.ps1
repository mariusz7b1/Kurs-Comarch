# ValidateScript (sprawdzanie, czy plik istnieje)
param (
    [ValidateScript({ Test-Path $_ })]
    [string]$FilePath
)

Write-Host "Plik istnieje: $FilePath"