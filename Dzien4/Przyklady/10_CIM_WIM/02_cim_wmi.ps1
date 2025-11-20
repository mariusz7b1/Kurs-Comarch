

Get-CimClass –Class Win32_Service | Select-Object –ExpandProperty CimClassMethods | Sort-Object -Property Name


Get-CimClass –Class Win32_Service | Get-Member


Get-CimClass –Class Win32_process | Select-Object –ExpandProperty CimClassMethods | Sort-Object -Property Name


