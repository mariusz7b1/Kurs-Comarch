function Get-SampleItem {
    [CmdletBinding()]
    param ()
    # TODO: Implementacja funkcji Get
    Write-Output "Get-SampleItem działa (szablon)"
}

function Set-SampleItem {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param ()
    # TODO: Implementacja funkcji Set
    if ($PSCmdlet.ShouldProcess("SampleItem", "Set")) {
        Write-Output "Set-SampleItem działa (szablon)"
    }
}

function Remove-SampleItem {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param ()
    # TODO: Implementacja funkcji Remove
    if ($PSCmdlet.ShouldProcess("SampleItem", "Remove")) {
        Write-Output "Remove-SampleItem działa (szablon)"
    }
}

Export-ModuleMember -Function Get-SampleItem, Set-SampleItem, Remove-SampleItem
