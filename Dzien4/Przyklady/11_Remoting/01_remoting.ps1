# 1
#Set-ExecutionPolicy RemoteSigned
#Enable-PSRemoting

# 2
Enter-PSSession –ComputerName SVR1 

# 3
Get-Process

# 4
Exit-PSSession

# 5
Invoke-Command –ComputerName SVR1,SVR2 –ScriptBlock{ 
    Get-EventLog –LogName Security –Newest 3  | FT
    Get-Process | Sort-Object -Descending cpu | Select-Object -First 2 |FT
}





