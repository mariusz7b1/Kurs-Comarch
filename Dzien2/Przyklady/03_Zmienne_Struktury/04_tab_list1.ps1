$computers = "LON-DC1","LON-SRV1","LON-CL1"

$users = Get-ADUser -Filter *


$computers
$users
$users.count
$users[125]


$computers | Get-Member
$users | Get-Member
$users[125].UserPrincipalName


$computers =$computers + "LON-SRV2"
$computers

# tworzenie listy

[System.Collections.ArrayList]$usersList = Get-ADUser -Filter *

$usersList.IsFixedSize

#usuwanie z listy
$usersList.count
$usersList[125]
$usersList.RemoveAt(125)
$usersList.count
$usersList[125]
