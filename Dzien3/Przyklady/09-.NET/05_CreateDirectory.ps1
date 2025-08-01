# Przykład 5: Tworzenie katalogu przy użyciu System.IO
$path = "C:\Temp\DotNetTest"
[System.IO.Directory]::CreateDirectory($path)
[System.IO.Directory]::GetAccessControl("$path") | FL
