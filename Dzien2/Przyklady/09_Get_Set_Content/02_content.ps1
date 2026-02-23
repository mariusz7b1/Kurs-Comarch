
$zawartosc=Get-Content -LiteralPath "c:\test\dane_1k.txt"  -encoding utf8

foreach($linia in $zawartosc)
{
    $dane_zlini=$linia.split(";")
    Write-Host  $dane_zlini -Separator " "
 }