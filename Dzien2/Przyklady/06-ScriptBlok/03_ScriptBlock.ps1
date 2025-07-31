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

# Przykład 5
function Process-List {
    param(
        [int[]]$Numbers,
        [ScriptBlock]$Transform
    )
    foreach ($n in $Numbers) {
        & $Transform.Invoke($n)
    }
}
Process-List -Numbers @(1, 2, 3, 4) -Transform { param($x) "$x^2 = $($x*$x)" }

# Przykład 6
$multiply = { param($a, $b) $a * $b }
& $multiply 3 4
