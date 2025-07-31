 # przerób skrypt na funkcje na zaawansowaną obwługującą whatif i confirm
# Powalczyć z Regex z pośrednictwem AI   - np konieczność conajmiej 1 cyfry i znaku specjalnego 

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
Enable-ADAccount -Identity $Username
Unlock-ADAccount -Identity $Username