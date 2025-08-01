# Konwersja obiektów PowerShell do formatu JSON
# ConvertTo-Json posiada parametr -Depth, który określa głębokość zagnieżdżenia (domyślnie 2)
# Parametr -Compress tworzy zwięzłą postać bez białych znaków

$usery = Get-LocalUser | Select-Object -First 3
$json = $usery | ConvertTo-Json -Depth 5
$json | Out-File -Encoding utf8 -FilePath "usery.json"
