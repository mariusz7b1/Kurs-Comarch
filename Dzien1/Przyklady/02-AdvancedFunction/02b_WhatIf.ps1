
# Przykład 2: Restartowanie usługi z obsługą -WhatIf
function Restart-ServiceSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param (
        [Parameter(Mandatory = $true)]
        [string]$ServiceName
    )
    # Restartuje usługę lub pokazuje komunikat przy -WhatIf
    $var1=$PSCmdlet.ShouldProcess($ServiceName, "Restart usługi")
    
    if ($var1)
    {
        Write-Verbose "Restaruje servis $ServiceName"
        Restart-Service -Name $ServiceName -Force 
    }
}
Restart-ServiceSafe bits