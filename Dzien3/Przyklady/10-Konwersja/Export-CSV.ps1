# Eksport danych do formatu CSV
# Używamy Export-Csv z parametrem -Encoding utf8 do zapisu w odpowiednim formacie
# Parametr -Delimiter pozwala ustawić znak rozdzielający, np. ";"
# Parametr -NoTypeInformation usuwa dodatkowy wiersz z typem obiektu

$procesy = Get-Process | Select-Object -First 5
$procesy | Export-Csv -Path "procesy.csv" -Encoding utf8 -Delimiter ";" -NoTypeInformation
