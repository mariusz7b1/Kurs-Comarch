# przygotuj uzytkoników którzy bedą mieli odp department
<#
Get-ADUser -Filter * -SearchBase "OU=Sales,OU=Users,OU=KejaMain,DC=keja,DC=msft" |
Set-ADUser -Department "Sales"
#>

#Do zrobienia
# przerób skrypt na funkcje na zaawansowaną obwługującą whatif i confirm

param (
    [Parameter(Mandatory)]
    [ValidateSet("HR", "IT", "Sales")]
    [string]$Role
)

Get-ADUser -Filter "Department -eq '$Role'" | ForEach-Object {
    Disable-ADAccount -Identity $_.DistinguishedName
    Write-Host "Wyłaczono konto użytkownika $($_.SamAccountName)"
}