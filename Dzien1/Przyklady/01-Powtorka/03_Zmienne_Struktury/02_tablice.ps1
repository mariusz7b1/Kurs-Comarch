Clear-Host
Write-Host "przypisywanie"
$zm1,$zm2,$zm3=1,2,3



for($i=1;$i -le 3;$i++)
{
    $tekst='$zm'+$i
    Write-Host $tekst
    Invoke-Expression ($tekst)
}

Write-Host "`nCiecie tablicy"
#tablica
$arr=1,2,3,4,5,6

#cięcie



Write-host $arr[1,0,5] 

Write-host $arr[-1] 

Write-host $arr[0..2]

Write-host $arr[-1..-3]

Write-host $arr[-1..-6]

