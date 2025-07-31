# Przykład 1
$code = { Get-Date }
& $code
$code.Invoke()

# Przykład 2
function Invoke-WithLogging {
    param (
        [ScriptBlock]$Script
    )
    Write-Host "Start"
    & $Script
    Write-Host "End"
}
Invoke-WithLogging -Script { Get-Process | Select-Object -First 3 }

# Przykład 3
$script = {
    param($x, $y)
    return $x + $y
}
$script.Invoke(5, 7)

# Przykład 4
Get-Service | Where-Object { $_.Status -eq 'Running' }
1..5 | ForEach-Object { $_ * $_ }

#