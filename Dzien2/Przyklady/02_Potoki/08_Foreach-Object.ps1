# 1

"1","4324", "21312" | ForEach-Object -Process {Write-Host $_.length}


# 2
for($i=1;$i -le 5;$i++) {notepad}  # cel uruchoimine notatnika

Get-Process -Name no*
Get-Process | Where-Object {$_.name -like "no*" -and $_.id -lt 4500} 

Get-Process | Where-Object {$_.name -like "no*" -and $_.id -lt 4500} | ForEach-Object -Process { $_.Kill() }


#3
Get-ChildItem -Path d:\ -Recurse -Directory | 
ForEach-Object {$_.GetFiles()} | Where-Object {$_.Length -gt 30KB -and $_.Extension -eq ".txt"} | FT

# 4
# uprawnienia Admina
Get-EventLog * | ForEach-Object {$_.clear()}
