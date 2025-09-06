# 06.04.2025 sprawdzone OK
# Ustaw nową nazwę komputera
$NewComputerName = "DC1"
# Ustaw adres IP
$IPAddress = "172.16.0.10"

New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress $IPAddress -PrefixLength 16
New-NetRoute -DestinationPrefix "0.0.0.0/0" -InterfaceAlias "Ethernet" -NextHop 172.16.0.1
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses "172.16.0.10"
Start-Sleep 10

# Ustaw nową nazwę komputera
Rename-Computer -NewName $NewComputerName -Force
# Zezwól na restart komputera
Restart-Computer -Force 
