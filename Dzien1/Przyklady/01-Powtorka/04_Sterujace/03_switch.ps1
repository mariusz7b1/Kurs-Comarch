Clear-Host
for(;;)
{
    $computer = Read-Host -Prompt "podaj nazwe komputera "
    If( $computer -eq "")
    {
        break
    }
    
    $role = "nieznana rola"
    $location = "nieznana lokalizacja"

    Switch -wildcard ($computer) {
        "*-CL*" {$role = "client"}
        "*-SRV*" {$role = "server"}
        "*-DC*" {$role = "domain controller"}
        "LON-*" {$location = "London"}
        "VAN-*" {$location = "Vancouver"}
    }

    Write-Host "$computer jest $role w $location"
}