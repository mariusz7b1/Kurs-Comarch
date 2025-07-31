$script1 = { 
    Write-Host "`n`nTo jest blok skryptu Przykład 1 " 
    Get-Process | select -First 1
    Get-Service | select -Last  2 | FT
                
}
& $script1
Invoke-Command  $script1



$script1 = { param([int]$par1,[int]$par2)
    Write-Host "`n`nTo jest blok skryptu  Przykład 2 " 
    Get-Process | select -First $par1
    Get-Service | select -Last  $par2  | FT
                
}

& $script1 2 2
Invoke-Command  $script1 -ArgumentList(1,2)



$script1 = { 
    Write-Host "`n`nTo jest blok skryptu   Przykład 3" 
    Get-Process | select -First $args[0]
    Get-Service | select -Last  $args[1]| FT
                
}

& $script1 2 4
Invoke-Command  $script1 -ArgumentList(4,2)


