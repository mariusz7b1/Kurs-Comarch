param (
    [Parameter(Mandatory)]
    [ValidateScript({ Get-ADUser -Identity $_ -ErrorAction Stop })]
    [string]$Username,

    [Parameter(Mandatory)]
    [ValidatePattern("^(?=.*[A-Z]).{10,}$")]
    [string]$NewPassword
)

Set-ADAccountPassword -Identity $Username -Reset `
    -NewPassword (ConvertTo-SecureString $NewPassword -AsPlainText -Force)
Unlock-ADAccount -Identity $Username