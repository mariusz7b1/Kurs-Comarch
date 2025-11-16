#Get-Member czyli  co w trawie piszczy :)

Get-Service | Get-Member

Get-Process | Get-Member

Get-Disk | Get-Member 

"hello" | Get-Member 

1 | Get-Member

1,"hello",67.78, $true | Get-Member

Get-ChildItem | Get-Member

Get-ChildItem  d:\ -Recurse| Get-Member

Get-NetAdapter | Get-Member


Get-HotFix | Get-Member 

# w środowisku AD
Get-ADUser -Filter * | Get-Member

Get-ADUser -Filter * -Properties | Get-Member

