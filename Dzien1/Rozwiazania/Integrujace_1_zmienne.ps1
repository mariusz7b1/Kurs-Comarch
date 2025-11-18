
# 1 ilosc
$users=Get-ADUser -Filter {name -like 'k*' -or name -like 's*'} 
$users | Measure-Object 

#2 Formatownie
$users | FT -Property name,DistinguishedName
$users | Select-Object -Property name,DistinguishedName |FT

#3 zapisanie do pliku
$users | Select-Object -Property name,DistinguishedName | Out-File c:\user2.txt

#4 zmiana wlasciwosci
$users | Set-ADUser -City "Opole" 

#5 zmiana wlasciowosci
$users | Set-ADUser -Department "Utajniony" 

# spr 4,5
$users=Get-ADUser -Filter {name -like 'k*' -or name -like 's*'}    -Properties City, Department
$users

#6  nowa OU
New-ADOrganizationalUnit -Name "TESTERZY" -Path "ou=kejamain,dc=keja,dc=msft" 

#7 Nowa Grupa
New-ADGroup -Name "TESTERZY" -Path "ou=Testerzy,ou=kejamain,dc=keja,dc=msft" -GroupCategory Security -GroupScope Global

#8 Przeniesienie do innego OU
$users | Move-ADObject -TargetPath "ou=testerzy,ou=kejamain,dc=keja,dc=msft" 

#9 dodanie do grupy
Add-ADGroupMember -Identity "TESTERZY" -Members (Get-ADUser -Filter * -SearchBase "ou=testerzy,ou=kejamain,dc=keja,dc=msft" )



#Get-ADUser -Filter * -SearchBase "ou=testerzy,ou=kejamain,dc=keja,dc=msft" | Get-ADPrincipalGroupMembership 

Get-ADUser -Filter * -SearchBase "ou=testerzy,ou=kejamain,dc=keja,dc=msft" | Set-ADUser -PasswordNeverExpires:$false
