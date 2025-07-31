# przygotuj uzytkoników którzy bedą mieli odp department
param (
    [Parameter(Mandatory)]
    [ValidateSet("HR", "IT", "Sales")]
    [string]$Role
)

Get-ADUser -Filter "Department -eq '$Role'" | ForEach-Object {
    Disable-ADAccount -Identity $_.DistinguishedName
    Write-Host "Wyłaczono konto użytkownika $($_.SamAccountName)"
}