Get-ADDomain
Get-ADForest

Get-ADOrganizationalUnit -Filter * | Select-Object -Property DistinguishedName 

Get-AdUser -Filter * -SearchBase "OU=IT,OU=Users,OU=KejaMain,DC=keja,DC=msft" | Select-Object SamAccountName,enabled

Get-ADUser -Identity ewa  

Get-ADUser ewa -Properties *

Get-ADUser -Filter *  | Select-Object DistinguishedName, name

Get-ADUser -Filter 'name -like "c*"'  |FT

Get-ADUser -Filter {name -like "c*"}  |FT

# liczenie
Get-ADUser -Filter {name -like 'c*' } | Measure-Object 

# zapisanie do pliku
Get-ADUser -Filter {name -like 'c*' } | Select-Object -Property name,DistinguishedName |`
    Out-File d:\dane_wynikowe.txt -Encoding utf8 

# zmiana wlasciwosci
Get-ADUser -Filter {name -like 'c*'} | Get-Member  # zwraca objekt typu ADUSER

get-help set-aduser -ShowWindow    # w pipline jest wstanie akceptować objekt typu ADUSER

Get-ADUser -Filter {name -like 'c*'} | Set-ADUser -City "Opole"

Get-ADUser -Filter {name -like 'c*'} -Properties City | Select-Object name,city

#  nowa OU
New-ADOrganizationalUnit -Name "NEW-OU" -Path "OU=KejaMain,DC=keja,DC=msft" 

# Nowa Grupa
New-ADGroup -Name "NEW-GG" -Path "ou=NEW-OU,OU=KejaMain,DC=keja,DC=msft"  -GroupCategory Security -GroupScope Global

# Przeniesienie do innego OU
Get-ADUser -Filter {name -like 'c*' } | Move-ADObject -TargetPath "ou=new-ou,OU=KejaMain,DC=keja,DC=msft" 










