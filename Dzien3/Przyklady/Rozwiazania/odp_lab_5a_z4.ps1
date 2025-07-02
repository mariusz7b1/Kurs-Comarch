param(
    [double]$Liczba1,
    [double]$Liczba2,
    [string]$Operator
)

switch ($Operator) {
    "+" { $Wynik = $Liczba1 + $Liczba2 }
    "-" { $Wynik = $Liczba1 - $Liczba2 }
    "*" { $Wynik = $Liczba1 * $Liczba2 }
    "/" { $Wynik = $Liczba1 / $Liczba2 }
}

Write-Host "Wynik operacji $Liczba1 $Operator $Liczba2 to $Wynik"
