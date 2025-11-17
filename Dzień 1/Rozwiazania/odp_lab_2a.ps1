# FORMAT

# Zadanie 1: Formatowanie Wyników Polecenia Get-Process
Write-Host "Zadanie 1: Lista procesów"
Get-Process | Format-Table Id, ProcessName, CPU
Write-Host "`n"  

# Zadanie 2: Formatowanie Wyników z Get-Service
Write-Host "Zadanie 2: Szczegóły usług"
Get-Service | Format-List Name, DisplayName, Status
Write-Host "`n"


# Zadanie 3: Użycie Format-Wide
Write-Host "Zadanie 4: Lista plików w bieżącym katalogu"
Get-ChildItem | Format-Wide -Property Name
Write-Host "`n"


# SELECT

# Zadanie 1: 
Get-Process | Select-Object ProcessName, Id

# Zadanie 2: 
Get-Service | Select-Object -First 10

# Zadanie 3: 
Get-Process | Select-Object ProcessName, @{Name="MemoryMB"; Expression={$_.WS / 1MB}}

# Zadanie 4: 
Get-Process | Select-Object -ExpandProperty Threads -First 1
