$script1 = "Write-Host 'To jest blok skryptu Przykład 1' `n"
$script1 += "Get-Process | select -First 1 `n"
$script1 += "Get-Service | select -Last  2 | FT"


Invoke-Expression $script1


$scrblock=[scriptblock]::Create($script1)

&$scrblock
Invoke-Command $scrblock