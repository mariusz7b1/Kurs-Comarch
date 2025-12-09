Clear-Host
Get-Process n* | Select-Object name, vm, @{n="VM(GB)";e={$_.vm/1GB}}
Get-Process n* | Select-Object name,  @{n="VM(GB)";e={'{0:N2}' -f ($_.vm/1GB)}}


Get-Process | Select-Object -Property Name, @{Name='ThreadsCount'; Expression={$_.Threads.Count}}


# Możesz stworzyć nowy obiekt z istniejących właściwości, używając składni hasztablicy.
Get-Process | Select-Object @{Name='ProcessName';Expression={$_.Name}}, @{Name='MemoryUsage';Expression={$_.WorkingSet}}
