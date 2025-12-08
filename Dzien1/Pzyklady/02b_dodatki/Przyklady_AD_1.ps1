# 1. Podstawowe informacje o domenie
Get-ADDomain
Get-ADForest
Get-ADDomainController -Filter *

# 2. Praca z OU (Organizational Units)
Get-ADOrganizationalUnit -Filter *
New-ADOrganizationalUnit -Name 'IT' -Path 'DC=keja,DC=msft'
Set-ADOrganizationalUnit -Identity 'OU=IT,DC=keja,DC=msft' -ProtectedFromAccidentalDeletion $false
Remove-ADOrganizationalUnit -Identity 'OU=IT,DC=keja,DC=msft'

# 3. Zarządzanie użytkownikami
Get-ADUser -Filter *
Get-ADUser -Identity ewa -Properties *

New-ADUser -Name 'Jan Nowak' -SamAccountName 'j.nowak' -AccountPassword (ConvertTo-SecureString 'Pa55w.rd' -AsPlainText -Force) -Enabled $true
Set-ADUser -Identity j.nowak -Department 'IT' -EmailAddress 'j.nowak@keja.msft'
'ewa','adam' | Set-ADUser   -Department 'IT' 

Unlock-ADAccount -Identity j.nowak
Disable-ADAccount -Identity j.nowak
Remove-ADUser -Identity j.nowak

# 4. Zarządzanie grupami
Get-ADGroup -Filter *
New-ADGroup -Name 'IT_Admins' -GroupScope Global -GroupCategory Security -Path 'CN=Users,DC=keja,DC=msft'

Add-ADGroupMember -Identity IT_Admins -Members ewa,adam
Get-ADGroupMember -Identity IT_Admins | FT

Remove-ADGroupMember -Identity IT_Admins -Members adam -Confirm:$false
Remove-ADGroup -Identity IT_Admins

# 5. Zarządzanie komputerami
Get-ADComputer -Filter *
Get-ADComputer -Identity SVR1 -Properties *
New-ADComputer -Name 'SVR10' -Path 'CN=Computers,DC=keja,DC=msft'
Remove-ADComputer -Identity SVR10

# 6. Wyszukiwanie i filtrowanie obiektów AD
Get-ADUser -Filter "Department -eq 'IT'" | FT
Get-ADComputer -Filter "OperatingSystem -like '*Server*'" | FT 

Get-ADGroup -Filter "GroupCategory -eq 'Security'"


# 7. Reset haseł i odblokowanie kont
New-ADUser j.nowak
Set-ADAccountPassword -Identity j.nowak -NewPassword (ConvertTo-SecureString 'NoweHaslo123' -AsPlainText -Force) -Reset

Enable-ADAccount -Identity j.nowak
Get-ADUser j.nowak

# 8. Profile, logony i cechy użytkowników
Set-ADUser -Identity j.nowak -ProfilePath '\\SVR1\Profiles\j.nowak'
Set-ADUser -Identity j.nowak -HomeDirectory '\\SVR1\Home\j.nowak' -HomeDrive 'H:'

