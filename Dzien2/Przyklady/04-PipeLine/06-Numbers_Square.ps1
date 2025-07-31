function Get-Square {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [int]$Number
    )
    process {
        $Number * $Number
    }
}

1..5 | Get-Square | Sort-Object -Descending