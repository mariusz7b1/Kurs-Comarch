
# Formatowanie 
Get-Service

Get-Service | Format-List -Property Name, Status


Get-Process | Format-Table -Property name,cpu


# w środowisku AD 
Get-ADComputer -Filter * -Properties OperatingSystem

Get-ADComputer -Filter * -Properties OperatingSystem | Format-Table -Property Name, OperatingSystem

Get-ADUser -Filter *

Get-ADUser -Filter * | Format-Wide -AutoSize

