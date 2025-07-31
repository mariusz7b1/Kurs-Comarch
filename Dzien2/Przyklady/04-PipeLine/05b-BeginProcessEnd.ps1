function Convert-ToLower {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline=$true)]
        [string]$Text
    )
    begin {
        Write-Host "Start..."
    }
    process {
        $Text.ToLower()
    }
    end {
        Write-Host "Finished."
    }
}

"HELLO","WORLD" | Convert-ToLower