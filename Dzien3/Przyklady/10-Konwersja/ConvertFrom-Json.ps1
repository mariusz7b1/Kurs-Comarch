# Konwersja danych JSON do obiektów PowerShell
# Przydatne np. przy pracy z API lub plikami konfiguracyjnymi

$jsonString = Get-Content -Path "usery.json" -Raw
$data = $jsonString | ConvertFrom-Json
$data | Format-Table Name, Enabled
