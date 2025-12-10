<#
.SYNOPSIS
  Matryca skryptu z parametrem wyboru (A/B/C)
#>

param(
    [Parameter(Mandatory = $true)]
    [ValidateSet("A", "B", "C")]
    [string]$Wybor
)

Write-Host "Wybrałeś opcję: $Wybor" -ForegroundColor Cyan

switch ($Wybor) {
    "A" { Write-Host "Wykonuję logikę dla A" -ForegroundColor Green }
    "B" { Write-Host "Wykonuję logikę dla B" -ForegroundColor Yellow }
    "C" { Write-Host "Wykonuję logikę dla C" -ForegroundColor Magenta }
}
