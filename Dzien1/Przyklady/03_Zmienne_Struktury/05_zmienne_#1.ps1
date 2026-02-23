# tworzenie tablicy hash
$users = @{"Lara"="IT";"Peter"="Managers";"Sang"="Sales"}

$users
$users.GetType()
$users.IsFixedSize

Write-Host "Zmiana wartoci na kaluczu"
$users.Lara
$users.Sang = "Marketing"
$users

Write-Host "`n Dodanie i usunuiecie elementu"
$users.Add("Tia","Research")
$users.Remove("Sang")
$users


Write-Host "`n Dodanie elementu"
$users["Mariusz"]="IT"
$users
Write-Host



$users = @{}
$users["Mariusz"]="IT"
$users.Add("Ryszard","Research")
$users

