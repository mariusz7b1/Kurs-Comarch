function Filter-AdminUsers {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$Name
    )
    process {
        if ($name -like 'admin*') {
            $Name
        }
    }
}

Get-ADUser -filter * | Filter-AdminUsers | Sort-Object