5, 1, 9, 3, 7|  Sort-Object

5, 1, 95, 1, 9, 3, 7, 3, 5 |  Sort-Object -Unique


Write-Host "Sortowanie procesów wg zużycia pamieci"
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5

Write-Host "Sortowanie procesów wg zużycia pocesora"
Get-Process | Sort-Object -Property cpu -Descending | Select-Object -Property name,cpu -First 5

Write-Host "`nSortowanie usług systemowych wedłóg statusu:"
Get-Service | Sort-Object -Property Status | Select-Object -First 5

