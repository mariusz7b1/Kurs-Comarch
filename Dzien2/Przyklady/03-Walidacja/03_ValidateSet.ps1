# ValidateSet
param (
    [ValidateSet("Start", "Stop", "Restart")]
    [string]$Action
)

Write-Host "Wybrana akcja: $Action"