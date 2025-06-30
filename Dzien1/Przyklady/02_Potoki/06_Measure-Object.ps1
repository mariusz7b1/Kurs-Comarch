5, 1, 9, 3, 7 | Measure-Object
5, 1, 9, 3, 7 | Measure-Object -Sum -Average -Maximum -Minimum


"Jeden dwa trzy" | Measure-Object -Line -Word -Character

Write-Host "`nZliczenie uruchomionych procesów:"
(Get-Process | Measure-Object).Count


