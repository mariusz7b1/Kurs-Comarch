# Wczytanie zawartości z pliku tekstowego
$codeFromFile = Get-Content -Path ".\scriptblock_code.txt" -Raw

# Konwersja tekstu do ScriptBlock
$scriptBlock = [ScriptBlock]::Create($codeFromFile)

# Uruchomienie ScriptBlocka z parametrem
$scriptBlock.Invoke("PowerShell User")
