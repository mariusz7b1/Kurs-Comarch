function Filter-AdminUsers {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Role
    )
    process {
        if ($Role -eq 'Admin') {
            "Admin user detected"
        }
    }
}

[PSCustomObject]@{ Role = 'User' }, [PSCustomObject]@{ Role = 'Admin' } | Filter-AdminUsers