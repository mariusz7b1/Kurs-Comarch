# Convertuje wynik polecenia PowerShell na ciąg tekstowy (string)
# Przydatne gdy chcemy pracować ze stringiem zamiast z obiektami (np. do logów)

$procesy = Get-Process | Select-Object -First 3
$tekst = $procesy | Out-String
$tekst | Out-File -Encoding utf8 -FilePath "procesy.txt"
