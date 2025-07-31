# ValidateRange dla liczby
param (
    [ValidateRange(1, 10)]
    [int]$Level
)

Write-Host "Poziom: $Level"