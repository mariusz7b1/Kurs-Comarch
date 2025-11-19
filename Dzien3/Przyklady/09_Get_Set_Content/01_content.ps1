$tekst=Get-Content -LiteralPath "D:\dane\testowy.txt"  -Encoding utf8

$tekst=Get-Content -LiteralPath "D:\dane\testowy.txt" -TotalCount 3 -Encoding utf8

$tekst=Get-Content -LiteralPath "D:\dane\testowy.txt" -Tail 3 -Encoding utf8


Set-Content -LiteralPath "D:\dane\wynik.txt" -Value $tekst

$tekst | Set-Content -LiteralPath "D:\dane\wynik.txt"  



Get-Content -LiteralPath "D:\raport.txt" -Tail 2 | Set-Content -LiteralPath "D:\wynik2.txt" 

"ala","ma","kota" | Set-Content -LiteralPath "D:\wynik3.txt" 

"kot nie lubi Ali".Split() | Add-Content -LiteralPath "D:\wynik3.txt" 