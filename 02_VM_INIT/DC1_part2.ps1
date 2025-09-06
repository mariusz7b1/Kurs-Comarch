# 06.04.2025 sprawdzone OK

# Instalacja roli AD DS
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools 

# Promowanie serwera na pierwszy kontroler domeny
Install-ADDSForest `
    -DomainName "keja.msft" `
    -DomainNetbiosName "KEJA" `
    -DomainMode "WinThreshold" `
    -ForestMode "WinThreshold" `
    -SafeModeAdministratorPassword (ConvertTo-SecureString -AsPlainText "Pa55w.rd" -Force) `
    -Force
