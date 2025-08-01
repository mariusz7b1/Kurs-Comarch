# Przykład 4: Uzyskiwanie informacji o pliku
$file = New-Object System.IO.FileInfo "C:\Windows\notepad.exe"
$file.Name
$file.Length
$file.CreationTime

[system.IO.FileInfo]::new("C:\TEST\a.txt")