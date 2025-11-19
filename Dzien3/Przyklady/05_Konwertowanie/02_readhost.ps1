
$days = Read-Host "Podaj ilość dni"
$days
$days.GetType()

[int]$days = Read-Host "Podaj ilość dni"

#Use Get-Credential to obtain and store a credential
$cred = Get-Credential
$cred | Format-List
$cred | Export-Clixml -Path c:\poswiadczenia.xml
$cred=$null
$cred

$cred = Import-Clixml -Path c:\poswiadczenia.xml

