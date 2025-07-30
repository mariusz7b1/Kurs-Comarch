
function Get-ServerStatus {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]$ComputerName
    )
    Test-Connection -ComputerName $ComputerName -Count 1
}

Set-Alias pingserver Get-ServerStatus
Export-ModuleMember -Function Get-ServerStatus -Alias pingserver
