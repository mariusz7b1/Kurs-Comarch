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

"ala","ma","kota"| Show-UpperCase 
#| Sort-Object -Descending
