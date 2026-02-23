# Ćwiczenie 1: Filtrowanie liczb
Write-Host "Ćwiczenie 1: Liczby parzyste z zakresu od 1 do 20"
(1..20) | Where-Object { $_ % 2 -eq 0 }
Write-Host 

# Ćwiczenie 2: Filtrowanie procesów
Write-Host "Ćwiczenie 2: Procesy zużywające mniej niż PM"
Get-Process | Where-Object {$_.PagedMemorySize -lt 1.5MB}
Write-Host 

# Ćwiczenie 3: 
Write-Host "Ćwiczenie 3: Wybieranie tylko katalogów z bieżącego katalogu"
Get-ChildItem | Where-Object { $_.PSIsContainer -eq $true}
Write-Host 

# Ćwiczenie 4: 
Write-Host "Ćwiczenie 4: Usługi, które są aktualnie uruchomione"
Get-Service | Where-Object { $_.Status -eq 'Running' }
Write-Host 

# Ćwiczenie 5: rozw A
Write-Host "Ćwiczenie 5: Słowa z więcej niż 4 literami"
"jeden dwa trzy cztery pięć sześć siedem" -split ' ' | Where-Object { $_.Length -gt 4 }
Write-Host 


# Ćwiczenie 5: rozw B
Write-Host "Ćwiczenie 5: Słowa z więcej niż 4 literami"
("jeden dwa trzy cztery pięć sześć siedem").split() | Where-Object { $_.Length -gt 4 }
Write-Host 


# Ćwiczenie 6: 
Write-Host "Ćwiczenie 6: Liczby większe niż 5 i mniejsze niż 15 z zakresu od 1 do 20"
(1..20) | Where-Object { $_ -gt 5 -and $_ -lt 15 }
Write-Host 

# Ćwiczenie 7:
Write-Host "Ćwiczenie 1: Procesy używające najwięcej pamięci CPU"
Get-Process |Where-Object { $_.CPU -gt 0  }| Sort-Object CPU -Descending | Select-Object -First 5 
Write-Host 

# Ćwiczenie 8: 
Write-Host "Ćwiczenie 2: Uruchomione usługi, które nie są automatycznie uruchamiane"
Get-Service | Where-Object { $_.Status -eq 'Running' -and $_.StartType -ne 'Automatic' }
Write-Host 

# Ćwiczenie 9: Zidentyfikowanie dużych plików w katalogu użytkownika
Write-Host "Ćwiczenie 3: Duże pliki w katalogu użytkownika"
Get-ChildItem "C:\windows\system32" -Recurse -File | Where-Object { $_.Length -gt 1MB } | Sort-Object Length -Descending
Write-Host 

# Ćwiczenie 10: Zidentyfikowanie aktywnych połączeń sieciowych
Write-Host "Ćwiczenie 4: Aktywne połączenia sieciowe"
Get-NetTCPConnection | Where-Object { $_.State -eq 'Established' }
Write-Host 

# Ćwiczenie 11: Wyszukiwanie błędów w dziennikach zdarzeń systemowych
Write-Host "Ćwiczenie 5: Błędy w dziennikach zdarzeń systemowych z ostatnich 7 dni"
Get-EventLog -LogName System | Where-Object { $_.EntryType -eq "error"}
Write-Host 
