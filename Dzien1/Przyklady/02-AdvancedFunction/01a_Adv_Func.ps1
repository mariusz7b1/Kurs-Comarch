# Przypomnienie funkcji, parametrów  i testowanie write-output
Function Test-param
{
    Param (
        [string]$ComputerName,
        [int]$EventID,
        [Switch] $OnOff
    )
    # write-output
    Write-Host "Testowanie Zachowania funkcji" -ForegroundColor Cyan -BackgroundColor Black
    Write-Output "Wartość parametru 'OnOf' to: $OnOff"
    Write-Output "Wartość parametru 'ComputerName' to: $ComputerName" 
    Write-Output "Wartość parametru 'EventID' to: $EventID"
    
}



$zm1=Test-param -ComputerName SVR1
$zm1 | Sort-Object
