<#
W PowerShell, pipeline by property name działa tylko dla obiektów ([pscustomobject]), 
ponieważ tylko one mają właściwości, które PowerShell może dopasować do parametrów.

#>

function Get-UserInfo {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Username
    )
    process {
        "User: $Username"
    }
}

[PSCustomObject]@{ Username = 'admin' }, [PSCustomObject]@{ Username = 'guest' } | Get-UserInfo