
# 2
3, 1, 4, 1, 5, 9 | Sort-Object -Ascending
3, 1, 4, 1, 5, 9 | Sort-Object -Descending

# 3
2, 4, 4, 4, 5, 5, 7, 9 | Measure-Object | Select-Object -ExpandProperty Count

# 4
2, 4, 4, 4, 5, 5, 7, 9 | Measure-Object -Sum -Maximum -Minimum

# 5 
2, 4, 4, 4, 5, 5, 7, 9 | Select-Object -Unique | Measure-Object -Sum -Maximum -Minimum

# 6 b
2, 8, 3, 4 | Sort-Object | Measure-Object -Sum


# 7 
Write-Host "`nZadanie 1 - Sortowanie procesów według zużycia CPU:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

# 8 
Write-Host "`nZadanie 1 - Sortowanie wpisów w dzienniku zdarzeń według kategorii:"
Get-EventLog -LogName Application -Newest 50 | Sort-Object Category 


# 9
Write-Host "`nZadanie 2 - Analiza zużycia pamięci przez procesy:"
Get-Process | Measure-Object WS -Average -Maximum -Minimum


#  10
Write-Host "`nZadanie 3 - Proces zużywający najwięcej pamięci:"
Get-Process | Sort-Object WS -Descending | Select-Object -First 1


# 7 Wyświetlanie 3 Najbardziej Obciążających Procesów pod Względem Zużycia Pamięci
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 3
