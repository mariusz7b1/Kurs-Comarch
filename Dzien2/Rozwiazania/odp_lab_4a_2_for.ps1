# Zadanie 1
Write-Host "Zadanie 1"
for ($i = 1; $i -le 10; $i++)
{
    Write-Host $i
}

# Zadanie 2
Write-Host "Zadanie 2"
for ($i = 10; $i -le 20; $i += 2)
{
    Write-Host $i
}

# Zadanie 3
Write-Host "Zadanie 3"
$suma = 0
for ($i = 1; $i -le 100; $i++)
{
    $suma += $i
}
Write-Host $suma

# Zadanie 4
Write-Host "Zadanie 4"
$tablica = @(1, 4, 7, 10, 13)
for ($i = 0; $i -lt $tablica.Length; $i++)
{
    Write-Host $tablica[$i]
}

# Zadanie 5
Write-Host "Zadanie 5"
for ($i = 1; $i -le 10; $i++)
{
    Write-Host $(3 * $i)
}

# Zadanie 6
Write-Host "Zadanie 6"
for ($i = 1; $i -le 100; $i++)
{
    if (100 % $i -eq 0)
    {
        Write-Host $i
    }
}

# Zadanie 7
Write-Host "Zadanie 7"
$a = 0
$b = 1
for ($i = 0; $i -lt 5; $i++)
{
    Write-Host $a
    $temp = $a
    $a = $b
    $b = $temp + $b
}

# Zadanie 8
Write-Host "Zadanie 8"
$text = "PowerShell"
$reversed = ""
for ($i = $text.Length - 1; $i -ge 0; $i--)
{
    $reversed += $text[$i]
}
Write-Host $reversed

# Zadanie 9
Write-Host "Zadanie 10"
$tablica = @(3, 7, 10, 14, 18, 21)
for ($i = 0; $i -lt $tablica.Length; $i++)
{
    if ($tablica[$i] % 2 -eq 0)
    {
        Write-Host $tablica[$i]
    }
}
