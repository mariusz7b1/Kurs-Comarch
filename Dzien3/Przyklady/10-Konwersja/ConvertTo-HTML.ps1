# Konwersja obiektów PowerShell do HTML
# Używamy cmdletu ConvertTo-Html do wygenerowania kodu HTML z tabelą
# Parametr -Property pozwala określić, które właściwości mają być pokazane
# Parametr -PreContent i -PostContent dodają nagłówki i stopki
# Parametr -CssUri pozwala załączyć zewnętrzny arkusz CSS

$procesy = Get-Process | Select-Object -First 5
$html = $procesy | ConvertTo-Html -Property Name, Id, CPU `
    -PreContent "<h1>Raport procesów</h1>" `
    -PostContent "<footer>Wygenerowano $(Get-Date)</footer>"
$html | Out-File -Encoding utf8 -FilePath "procesy.html"
