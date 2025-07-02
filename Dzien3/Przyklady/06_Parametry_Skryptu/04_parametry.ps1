<#
.SYNOPSIS
prezentuje parametry wywołania skryptu
.DESCRIPTION
Użyj skryptu jako wzorca do modyfikacji 
mamy do czynienia z 3 parametrami, jeden obligatoryjny
.PARAMETER ComputerName
nazwa komputera
.PARAMETER EventID  
parametr typu int
.EXAMPLE
.\moj_skrypt -ComputerName LON-DC1 
.EXAMPLE
.\moj_skrypt -ComputerName LON-DC1 12 
#>


Param (
    [Parameter(mandatory=$true)] [string]$ComputerName,
    [int]$EventID,
    [Switch] $OnOff
)

Write-Host "Wartość parametru 'ComputerName' to: $ComputerName"
Write-Host "Wartość parametru 'EventID' to: $EventID"
Write-Host "Wartość parametru 'OnOf' to: $OnOff"
