# zmodyfikuj ten skrypt aby sprawdzał czy użytkownik juz czasem nie istnieje
param (
    [Parameter(Mandatory)]
    [string]$Username,

    
    [Parameter(Mandatory)]
    [ValidateScript({ Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$_'" -ErrorAction Stop })]
    [string]$OU,

    [Parameter(Mandatory)]
    [string]$password

)


New-ADUser -Name $Username -SamAccountName $Username `
           -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) `
           -Enabled $true -Path $OU