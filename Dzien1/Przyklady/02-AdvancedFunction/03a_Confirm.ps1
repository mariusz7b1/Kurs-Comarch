function Stop-ServiceSafe {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
    param (
        [Parameter(Mandatory = $true)]
        [string]$ServiceName
    )
    $var=$PSCmdlet.ShouldProcess($ServiceName, "Zatrzymanie usługi")
    if ($var)
    {
        Write-Verbose "zatrzymujemy usługę $ServiceName"
        Stop-Service -Name $ServiceName -Force
    }
    else
    {
        Write-Verbose "NIE zatrzymujemy usługi $ServiceName"
    }
}

Clear-Host
#$ConfirmPreference = "Low"
$ConfirmPreference = "Medium"
#$ConfirmPreference = "High"

Write-Host "Aktualne ConfirmPreference = $ConfirmPreference"

# Przykład wywołania:
Stop-ServiceSafe -ServiceName 'Spooler' 


<#
    4 poziomy  impact: Low, Medium, High, and None. 
    Gdy wykonujemy metodę ShouldProcess() , pytanie tylko gdy 
    ConfirmImpact >=  $ConfirmPreference

    Default: $ConfirmPreference = High.
#>
