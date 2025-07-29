function Test-ShouldProcess
{
    [CmdletBinding(SupportsShouldProcess, ConfirmImpact='Medium')]
    param()

    $var1=$PSCmdlet.ShouldProcess("TO jest zadanie (TAGET)","Czynnosc ?")           
    if ($var1) 
    {
        Write-Host " Wykonanie komendy  1"
  
        $var2=$PSCmdlet.ShouldContinue("Wykonać ?","Ważne zadanie" )
        if ($var2)
        {
            Write-Host " Wykonanie komendy  2"
        }
        else
        {
            Write-Host "rozsadek zwycieżył"
        }
    }
    else
    {
        Write-Host " Nie jesteś twardzielem"
    }
}

$ConfirmPreference = "low"
Clear-Host
Write-Host "ConfirmPreference = $ConfirmPreference"
Test-ShouldProcess -WhatIf -Confirm:$false



