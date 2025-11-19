$zawartosc=Get-Content -LiteralPath "D:\dane\dane1k.txt"  -encoding utf8

foreach($linia in $zawartosc)
{
    $dane_zlini=$linia.split(";")
    Write-Host  $dane_zlini -Separator " "
 }