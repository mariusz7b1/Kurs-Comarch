function Get-ComputerName {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [PSCustomObject]$Computer
    )
    process {
        "SVR$($Computer.Name[1])"
    }
}

[PSCustomObject]@{ Name = '01' },[PSCustomObject] @{ Name = '02' } | Get-ComputerName #| Get-ADComputer