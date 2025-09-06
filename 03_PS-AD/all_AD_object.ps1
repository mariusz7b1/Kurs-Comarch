Clear-Host

# nazwa dzialu
$DepartmentName="Production"

# sciciezka
$path="OU=Users,OU=kejaMain,DC=keja,dc=msft"



Function New-TestADAccount()
{
    
    New-ADOrganizationalUnit -Name $DepartmentName -Path $path -ProtectedFromAccidentalDeletion:$false
    
    $path="OU=Productions,OU=Users,OU=KejaMain,DC=keja,DC=msft"
    # New-ADGroup $DepartmentName -GroupScope Global -Path $path
    

    $dane=Import-Csv -Path C:\TEST\dane_users.csv -Delimiter ";" -Encoding UTF8
    foreach ($prac in $dane)
    {
        $FirstName=$prac.imie
        $LastName=$prac.nazwisko
        $Name=($FirstName+"."+$LastName).ToLower()
        $DiplayName=$FirstName+" "+$LastName
        $EmailAddress=$Name+"@keja.msft"
    
        $TempPass=$FirstName[0]+$LastName[-1]+$prac.pesel+"##"
        $pass = ConvertTo-SecureString $TempPass -AsPlainText -Force
        New-ADUser -name $Name -Path $path -AccountPassword $pass -Enabled $true `
                   -GivenName $FirstName -Surname $LastName -EmailAddress $EmailAddress `
                   -ChangePasswordAtLogon:$true -SamAccountName $Name -Department $DepartmentName `
                   -UserPrincipalName $EmailAddress -DisplayName $DiplayName
    }
    Add-ADGroupMember $DepartmentName -Members (Get-ADUser -Filter * -SearchBase $path)        
}


New-TestADAccount


