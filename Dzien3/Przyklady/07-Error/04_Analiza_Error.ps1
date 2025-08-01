$Error.Clear()
Get-Item "C:\nieistniejacy.txt" -ErrorAction SilentlyContinue

if ($Error.Count -gt 0) {
    $err = $Error[0]
    Write-Host "Komunikat: $($err.Exception.Message)"
    Write-Host "Typ wyjątku: $($err.Exception.GetType().FullName)"
    Write-Host "ID błędu: $($err.FullyQualifiedErrorId)"
    Write-Host "Obiekt docelowy: $($err.TargetObject)"
    Write-Host "Kategoria: $($err.CategoryInfo.Category)"
    Write-Host "Miejsce wystąpienia: $($err.InvocationInfo.PositionMessage)"
}