# Zadanie 1
$stringZad1 = "Witaj, świecie!"
Write-Host "Zadanie 1: $stringZad1"

# Zadanie 2
$tablicaZad2 = @(1, 2, 3, 4, 5)
Write-Host "Zadanie 2: $($tablicaZad2 -join ' | ')"
<#
-join ' | ' to operator, który łączy elementy tablicy za pomocą podanego separatora, w tym przypadku |.
Konstrukcja $() to tzw. subekspression, czyli podwyrażenie, które pozwala na wykonywanie
bardziej złożonych operacji wewnątrz łańcuchów znaków. 
Dzięki temu możesz, na przykład, wywołać funkcje czy używać operatorów jak -join bezpośrednio wewnątrz stringa.
#>


# Zadanie 3
$tablicaZad2 += 6
Write-Host "Zadanie 3: $($tablicaZad2 -join ' | ')"

# Zadanie 4
$tablicaZad2 = $tablicaZad2 | Where-Object { $_ -ne 3 }
Write-Host "Zadanie 4: $($tablicaZad2 -join ' | ')"

# Zadanie 5
$tablicaZad2 = $tablicaZad2 | Sort-Object
Write-Host "Zadanie 5: $($tablicaZad2 -join ' | ')"

# Zadanie 6
$dateTimeZad6 = Get-Date
Write-Host "Zadanie 6: $dateTimeZad6"

# Zadanie 7
$dateTimeZad7 = $dateTimeZad6.AddDays(7)
Write-Host "Zadanie 7: $dateTimeZad7"

# Zadanie 8
$dateTimeZad8 = $dateTimeZad6.AddDays(-3)
Write-Host "Zadanie 8: $dateTimeZad8"

# Zadanie 9
$tablicaZnakówZad9 = $stringZad1.ToCharArray()
Write-Host "Zadanie 9: $($tablicaZnakówZad9 -join ' | ')"

