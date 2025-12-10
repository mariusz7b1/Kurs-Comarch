$tekst=Get-Content -LiteralPath "c:\test\testowy.txt"  -Encoding utf8

$tekst=Get-Content -LiteralPath "c:\test\testowy.txt" -TotalCount 3 -Encoding utf8

$tekst=Get-Content -LiteralPath "c:\test\testowy.txt" -Tail 3 -Encoding utf8


Set-Content -LiteralPath "c:\test\wynik.txt" -Value $tekst

$tekst | Set-Content -LiteralPath "c:\test\wynik.txt"  



Get-Content -LiteralPath "c:\test\testowy.txt" -Tail 2 | Set-Content -LiteralPath "c:\wynik2.txt" 

"ala","ma","kota" | Set-Content -LiteralPath "c:\wynik3.txt" 

"kot nie lubi Ali".Split() | Add-Content -LiteralPath "c:\wynik3.txt" 