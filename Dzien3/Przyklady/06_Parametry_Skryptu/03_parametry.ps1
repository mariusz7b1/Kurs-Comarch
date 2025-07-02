Param (
    [Parameter(mandatory=$true)] [string]$ComputerName,
    [int]$EventID,
    [Switch] $OnOff
)

Write-Host "Wartość parametru 'ComputerName' to: $ComputerName"
Write-Host "Wartość parametru 'EventID' to: $EventID"
Write-Host "Wartość parametru 'OnOf' to: $OnOff"
