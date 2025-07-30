
function Get-HelloWorld {
    param ([string]$Name)
    "Hello, $Name!"
}

function Get-CurrentDate {
    Get-Date
}

Export-ModuleMember -Function Get-HelloWorld, Get-CurrentDate
