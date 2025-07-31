
param (
    [ValidateLength(8, 20)]
    [string]$Haslo,

    [ValidateRange(1, 5)]
    [int]$Poziom
)
"Hasło długości: $($Haslo.Length), Poziom: $Poziom"
