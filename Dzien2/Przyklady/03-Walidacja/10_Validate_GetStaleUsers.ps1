param (
    [Parameter(Mandatory)]
    [ValidateRange(30, 365)]
    [int]$DaysInactive
)

$threshold = (Get-Date).AddDays(-$DaysInactive)
Get-ADUser -Filter * -Properties LastLogonDate |
    Where-Object { $_.LastLogonDate -lt $threshold } |
    Select-Object Name, SamAccountName, LastLogonDate