
Get-CimClass –Class Win32_OperatingSystem | Select-Object –ExpandProperty CimClassMethods | Sort-Object -Property Name


Invoke-CimMethod –ComputerName SVR1 –ClassName Win32_OperatingSystem –MethodName Reboot 

# 2
Mspaint

# 3
Get-CimInstance –Class Win32_Process –Filter "Name='mspaint.exe'" | Invoke-CimMethod –Name Terminate



