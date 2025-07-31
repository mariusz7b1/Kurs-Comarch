# przerób skrypt na funkcje na zaawansowaną obwługującą whatif i confirm
# zmodyfikuj ten skrypt aby sprawdzał czy użytkownik juz czasem nie istnieje
# skomentuj go 
# ustal ze hasło musi miec długość 10-15 znaków (możesz zastanowić się na temat validacji złożoności hasła)
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