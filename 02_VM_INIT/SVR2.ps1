# 06.04.2025 sprawdzone OK

# Ustaw nową nazwę komputera
$NewComputerName = "SVR2"
# Ustaw adres IP
$IPAddress = "172.16.0.12"

New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress $IPAddress -PrefixLength 16
New-NetRoute -DestinationPrefix "0.0.0.0/0" -InterfaceAlias "Ethernet" -NextHop 172.16.0.1
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses "172.16.0.10"
Start-Sleep 10
# Zdefiniowanie stałych dla nazwy domeny i użytkownika
$DomainName = "keja.msft"
$Username = "Administrator"  # Zmień na właściwą nazwę użytkownika

# Pobranie hasła i przekształcenie go na zabezpieczony ciąg znaków
$Password = ConvertTo-SecureString "Pa55w.rd" -AsPlainText -Force

# Utworzenie obiektu PSCredential z nazwą użytkownika i hasłem
$Credential = New-Object System.Management.Automation.PSCredential($Username, $Password)

if ((Test-NetConnection 172.16.0.10).PingSucceeded)
{
    # Ustaw nową nazwę komputera
    Rename-Computer -NewName $NewComputerName -Force 

    # Dodanie komputera do domeny przy użyciu przechowywanych poświadczeń
    Add-Computer -DomainName $DomainName -Credential $Credential -Restart -Force
}Else{ Write-Host   "BRAK połaczenia z DC" -ForegroundColor Red}
