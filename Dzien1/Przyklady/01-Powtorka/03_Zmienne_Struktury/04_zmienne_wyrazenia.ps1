$starttime=get-date
sleep 2
$endtime=get-date



$endtime-$starttime  | FT #obliczy wyrażenie

Write-Host $endtime-$starttime  #-wypisze zmienne

Write-Host "$endtime-$starttime"  #-wypisze zmienne

Write-Host ($endtime-$starttime)  # oblicz wyrażenie

# jedno i drugie daje ten sam efekt
"czas operacji "+ ($endtime-$starttime)+ " i wystarczy"
Write-Host "czas operacji"($endtime-$starttime)"i wystarczy"

$a=10
$b=15
$a+$b  # wyrażenie
"$a+$b" # łaczenie ciągu znaków

Write-Host ($a+$b)  # wyrażenie

Write-Host "suma liczb to ($a+$b)"  

Write-Host "suma liczb to $($a+$b)"  

Write-Host "$a+$b" #

write-host ("#"*25)