# Przykład 8: Uruchamianie procesu przy użyciu .NET
$proc = New-Object System.Diagnostics.ProcessStartInfo
$proc.FileName = "notepad.exe"
$proc.Arguments = ""
[System.Diagnostics.Process]::Start($proc)
