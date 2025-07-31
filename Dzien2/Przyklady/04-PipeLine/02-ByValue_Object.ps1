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

@{ Name = '01' }, @{ Name = '02' } | Get-ComputerName  
#| Get-ADComputer