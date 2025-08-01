function Get-Nazwa {
    param([string]$Name)
    if (-not $Name) {
        throw "Parametr -Name jest wymagany."
    }
    Write-Host "Podano imię: $Name"
}

try {
    Get-Nazwa
} catch {
    Write-Error "Błąd użytkownika: $_"
}