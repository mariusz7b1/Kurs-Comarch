# Eksport danych do formatu XML za pomocą Export-Clixml
# Ten format może być później bezpiecznie odczytany przez Import-Clixml
# Zapisuje dane z zachowaniem typów i struktur obiektów PowerShell

$users = Get-LocalUser | Select-Object -First 3
$users | Export-Clixml -Path "users.clixml" -Encoding utf8
