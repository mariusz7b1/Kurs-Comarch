# Przykład 1: Bezpieczne usuwanie pliku

function Remove-FileSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param (
        [Parameter(Mandatory = $true)]
        [string]$Path
    )
    # Sprawdza, czy użytkownik podał -WhatIf
    # Jeśli tak, nie wykona operacji, tylko wyświetli co by zrobił
    $var1=$PSCmdlet.ShouldProcess($Path, "Usunięcie pliku")
    
    if ($var1)
    {
        Write-Verbose "Usuwam plik $Path" 
        $Error.Clear()
        Remove-Item -Path $Path -Force -ErrorAction SilentlyContinue
        if ($Error.Count -eq 0)
        {
            Write-Output $true
        }
        else
        {
           Write-Output $false
        }

    }
}



New-item c:\test\plik.txt -ErrorAction SilentlyContinue
Remove-FileSafe -Path C:\test\plik.txt -WhatIf
Remove-FileSafe -Path C:\test\plik.txt 
Remove-FileSafe -Path C:\test\plik.txt -Verbose