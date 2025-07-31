function Get-ItemNameAndType {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Name,

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Type
    )
    process {
        "Item: $Name, Type: $Type"
    }
}

$tab=([PSCustomObject]@{ Name = 'File1'; Type = 'txt' },[PSCustomObject] @{ Name = 'File2'; Type = 'doc' })

$tab | Get-ItemNameAndType