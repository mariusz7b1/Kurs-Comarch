function Test-Katalog {
    param (
        [ValidateScript({
            if (-not (Test-Path $_ -PathType Container)) {
                Write-Host "Ścieżka nie jest katalogiem."
                return $false
            }

            $files = Get-ChildItem -Path $_ -File
            if ($files.Count -le 3) {
                Write-Host "Za mało plików w katalogu."
                return $false
            }

            return $true
        })]
        [string]$Folder
    )

    "Poprawny katalog: $Folder"
}