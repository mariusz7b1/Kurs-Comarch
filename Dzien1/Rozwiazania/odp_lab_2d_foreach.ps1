# "1: Zmiana rozszerzenia"
Write-Host "Ćwiczenie 1: Zmiana rozszerzenia"
Get-ChildItem -Path "C:\TwojKatalog" -Filter "*.txt" | ForEach-Object {
    Rename-Item -Path $_.FullName -NewName ($_.Name -replace '\.txt$', '.bak')
}
Write-Host 

# 2: Wyświetlenie sześcianów liczb od 1 do 5
Write-Host "Ćwiczenie 2: Wyświetlenie sześcianów liczb od 1 do 5"
1..5 | Foreach-Object { Write-Host ([math]::pow($_,3)) }
Write-Host 


# 3: Przefiltrowanie liczb parzystych od 1 do 20
Write-Host "Ćwiczenie 4: Przefiltrowanie liczb parzystych od 1 do 20"
1..20 | Foreach-Object { if ($_ % 2 -eq 0) { Write-Host $_ } }
Write-Host 

#  4: Wylistowanie wszystkich zatrzymanych usług
Write-Host "Ćwiczenie 1: Wylistowanie wszystkich zatrzymanych usług"
Get-Service | Where-Object {$_.Status -eq 'Stopped'} | Foreach-Object { Write-Host $_.DisplayName }
Write-Host 

#  5: Zamknięcie procesów o nazwie "calc"
Write-Host "Ćwiczenie 2: Zamknięcie procesów o nazwie 'calc'"
Get-Process | Where-Object {$_.Name -eq 'calc'} | Foreach-Object { $_.kill() }
Write-Host 

# 6: Wyświetlenie procesów, które zużywają więcej niż 100 MB pamięci
Write-Host "Ćwiczenie 3: Wyświetlenie procesów, które zużywają więcej niż 100 MB pamięci"
Get-Process | Where-Object {$_.WS / 1MB -gt 100} | Foreach-Object { Write-Host "$($_.Name) - $($_.WS / 1MB) MB" }
Write-Host 

# 7 Wyświetlenie dysków z mniej niż 10 GB wolnego miejsca
Write-Host "Ćwiczenie 4: Wyświetlenie dysków z mniej niż 10 GB wolnego miejsca"
Get-Volume | Where-Object { $_.SizeRemaining / 1GB -lt 10 } | Foreach-Object { Write-Host "Dysk $($_.DriveLetter): Wolne miejsce - $($_.SizeRemaining / 1GB) GB" }
Write-Host 

# 8: Wyłączenie wszystkich kart sieciowych, które są w stanie "Disconnected"
Write-Host "Ćwiczenie 5: Wyłączenie wszystkich kart sieciowych, które są w stanie 'Disconnected'"
Get-NetAdapter | Where-Object {$_.Status -eq 'Disconnected'} | Foreach-Object { Disable-NetAdapter -Name $_.Name -Confirm:$false }

Write-Host "Zakończono wszystkie ćwiczenia."


