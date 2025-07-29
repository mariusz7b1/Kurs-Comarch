# Przykład 3: Tworzenie folderu z -WhatIf, jeśli nie istnieje
function New-FolderSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param (
        [Parameter(Mandatory = $true)]
        [string]$FolderPath
    )
    if (-not (Test-Path $FolderPath)) {
        # Tworzy folder tylko jeśli go nie ma, z możliwością podglądu przez -WhatIf
             
        if ($PSCmdlet.ShouldProcess($FolderPath, "Utworzenie folderu")) 
        {
            Write-Verbose "Tworzę folder"
            New-Item -Path $FolderPath -ItemType Directory
          }
    }  
    else
    {
        Write-Warning "Folder istnieje"
    }
    
}

New-FolderSafe c:\test3 -Verbose