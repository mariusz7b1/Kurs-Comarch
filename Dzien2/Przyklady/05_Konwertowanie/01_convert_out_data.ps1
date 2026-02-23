$users = Get-Content C:\Test\users.csv 
$users.count
$users

#Use Import-Csv to import data from a .csv file
Import-Csv C:\Test\users.csv 
$users = Import-Csv C:\Test\users.csv
$users.count
$users.GetType()
$users[0]
$users[0].First

$moje_procesy=Get-Process |  Sort-Object cpu -Descending| Select-Object Name,CPU,WorkingSet  -First 10 

# zmień cieżkę do pliku jeśli to konieczne
$moje_procesy| Export-Csv -Path C:\Test\wynik_proc.csv  -Delimiter ";" -NoTypeInformation

$moje_procesy | ConvertTo-Json | Out-File -FilePath C:\test\wynik_proc.json -Encoding utf8


