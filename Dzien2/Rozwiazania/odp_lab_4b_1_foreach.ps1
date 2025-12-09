# Odpowiedź na Zadanie 1
$folder = "d:\Temp"
$outputFile = "d:\Temp\pliki.txt"
Get-ChildItem -Path $folder -Recurse | ForEach-Object {
    $_.Name | Out-File -FilePath $outputFile -Append
}

# Odpowiedź na Zadanie 2
$uzytkownicy = Get-AdUser -Filter *
foreach ($uzytkownik in $uzytkownicy) {
    Write-Host "Nazwa użytkownika: $($uzytkownik.SamAccountName), Email: $($uzytkownik.EmailAddress)"
}


# Odpowiedź na Zadanie 3
$procesy = Get-Process
foreach ($proces in $procesy) {
    Write-Host "Nazwa procesu: $($proces.ProcessName), Zużycie pamięci: $($proces.WorkingSet)"
}

# Odpowiedź na Zadanie 4
$uzytkownicyAD = Get-AdUser -Filter {name -like "ty*"}
foreach ($uzytkownik in $uzytkownicyAD) {
    Set-AdUser -Identity $uzytkownik.DistinguishedName -Replace @{location='Warsaw'} -WhatIf
}
