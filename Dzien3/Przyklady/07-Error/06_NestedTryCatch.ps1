try {
    Write-Host "Poziom 1"
    try {
        throw "Błąd wewnętrzny"
    } catch {
        Write-Host "Obsługa wewnętrzna: $_"
        throw $_
    }
} catch {
    Write-Warning "Obsługa zewnętrzna: $_"
}