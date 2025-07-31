Clear-Host
function Get-FileInfo {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Name
    )
    process {
        "Analyzing file: $Name"
    }
}

[PSCustomObject]@{ Name = 'report.pdf' }, [PSCustomObject]@{ Name = 'data.csv' } | Get-FileInfo
# Get-ADUser -Filter * | Get-FileInfo