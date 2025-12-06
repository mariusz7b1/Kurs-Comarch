

Get-Process | Select-Object -Property Name

# Aby wyświetlić więcej niż jedną właściwość, wystarczy je wymienić po przecinku.
Get-Service | Select-Object -Property Status, Name, DisplayName

#Użyj parametru `-Unique` aby wyświetlić tylko unikatowe wystąpienia wybranej właściwości.
Get-Process | Select-Object -Property ProcessName -Unique

# Parametr `-First` pozwala na wyświetlenie pierwszych `n` obiektów z listy.
Get-Process | Select-Object -First 5

# Z kolei parametr `-Last` pozwala na wybranie ostatnich `n` obiektów.
Get-Process | Select-Object -Last 5

# Jeśli nie znasz dokładnych nazw właściwości, możesz użyć symboli wieloznacznych do ich wyszukania.
Get-Process | Select-Object -Property Peak* | Format-Table


# Pominiecie określonej liczby pierwszych obiektów z listy.
Get-Process | Select-Object -Skip 10
