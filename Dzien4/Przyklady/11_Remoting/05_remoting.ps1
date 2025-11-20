$tab_computers="SVR1","SVR2"

foreach($komp in $tab_computers){
    Write-Host "Wykonuję działania na $komp" -ForegroundColor Cyan
    Invoke-Command –ComputerName $komp –ScriptBlock{ 
        Install-WindowsFeature DNS -IncludeAllSubFeature -IncludeManagementTools
        Install-WindowsFeature DHCP -IncludeAllSubFeature -IncludeManagementTools
        Install-WindowsFeature NLB -IncludeAllSubFeature -IncludeManagementTools 
    } -AsJob
}



