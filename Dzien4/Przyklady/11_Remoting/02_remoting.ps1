Clear-Host
#1
$ilosc = Read-Host "Ile wpisów ? "

#2
Write-Host " Wykorzystanie Argument List"
Invoke-Command –ComputerName SVR1 –ScriptBlock { Param($x) Get-EventLog –LogName Security –newest $x } –ArgumentList $ilosc 

#3
Write-Host "`nWykorzystanie Using "
Invoke-Command -ComputerName SVR1  -ScriptBlock {Get-EventLog -LogName Security –Newest $Using:ilosc}





