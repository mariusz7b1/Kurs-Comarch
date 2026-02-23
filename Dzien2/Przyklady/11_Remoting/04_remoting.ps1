$tab_computers="SVR1","SVR2"

foreach($komp in $tab_computers){
    Write-Host "Wykonuję działania na $komp" -ForegroundColor Cyan
    Invoke-Command –ComputerName $komp –ScriptBlock{ 
        Get-EventLog –LogName Security –Newest 3  | FT
        Get-Process | Sort-Object -Descending cpu | Select-Object -First 2 |FT
    } 
}
