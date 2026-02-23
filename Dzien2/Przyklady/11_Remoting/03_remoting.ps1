# 1
$Svr1 = New-PSSession –ComputerName SVR1

# 2
$all = New-PSSession –ComputerName SVR1,SVR2

# 3
Get-PSSession

# 4
$Svr1

# 5
Enter-PSSession –Session $Svr1


# 6
Get-Process

# 7
Exit-PSSession

# 8
$Svr1

# 9
Invoke-Command –Session $all –ScriptBlock { Get-Service | Where-Object{ $_.Status –eq 'Running' } | Select-Object -Last 2}

# 10
$Svr1 | Remove-PSSession

# 11
Get-PSSession

# 12
Get-PSSession | Remove-PSSession





