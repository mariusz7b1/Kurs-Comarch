param (
    [Parameter(Mandatory)]
    [ValidateScript({ Get-ADUser -Identity $_ -ErrorAction Stop })]
    [string]$Username,

    [Parameter(Mandatory)]
    [ValidateScript({ Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$_'" })]
    [string]$TargetOU
)

$user = Get-ADUser -Identity $Username
Move-ADObject -Identity $user.DistinguishedName -TargetPath $TargetOU