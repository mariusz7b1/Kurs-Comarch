
$days = Read-Host "Podaj ilość dni"
$days
$days.GetType()

[int]$days = Read-Host "Podaj ilość dni"

#Use Get-Credential to obtain and store a credential
$cred = Get-Credential
$cred | Format-List
$cred | Export-Clixml -Path d:\poswiadczenia.xml
$cred=$null
$cred

$cred = Import-Clixml -Path d:\poswiadczenia.xml

