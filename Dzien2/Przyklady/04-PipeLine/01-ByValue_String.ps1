function Show-UpperCase {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [string]$Text
    )
    process {
        $Text.ToUpper()
    }
}

# get-help Show-UpperCase -ShowWindow

"ala","ma","kota"| Show-UpperCase | Sort-Object -Descending
