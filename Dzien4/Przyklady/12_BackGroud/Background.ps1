
# 1
Start-Job –ScriptBlock { Dir C:\ -Recurse } –Name LocalDir

# 2
Invoke-Command –ScriptBlock { Get-EventLog –LogName Security –Newest 10 } –ComputerName SVR1,SVR2 –JobName RemoteLogs

# 3
Get-Job

# 4
Get-Job –Name LocalDir | Stop-Job

# 5
Receive-Job  –Name LocalDir

# 6
Remove-Job –Name LocalDir

# 7
Wait-Job -Name RemoteLogs
Get-Job 

# 8
$id = Get-Job –Name RemoteLogs -IncludeChildJob | Where location -eq 'SVR1' | Select -ExpandProperty ID

# 9
Get-Job –ID $id | Receive-Job –Keep 

# 10
Receive-Job –Name RemoteLogs

# 11
Remove-Job –Name RemoteLogs









