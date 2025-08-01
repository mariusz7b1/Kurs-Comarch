# Konwersja obiektów PowerShell do formatu XML
# ConvertTo-Xml zwraca obiekt XmlDocument (typ [xml])
# Parametr -As "String" pozwala otrzymać jako string (inaczej jako obiekt Xml)

$uslugi = Get-Service | Select-Object -First 5
$xml = $uslugi | ConvertTo-Xml -As String -Depth 3
$xml | Out-File -Encoding utf8 -FilePath "uslugi.xml"
