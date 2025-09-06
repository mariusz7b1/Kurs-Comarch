Function New-KejaOU
{
    param (
        [string]$path
    )
    if (Test-Path  $path)
    {
        $tab = Get-Content -Path $path
        foreach ($t1 in $tab)
        {
            $t1 = $t1.Trim()
            if ($t1.Length -gt 0)
            {
                $poz = $t1.IndexOf(",")
                $nazwa = $t1.Substring(0, $poz)
                $nazwa = $nazwa.Substring(3)
                $reszta = $t1.Substring($poz + 1)
                $nazwa + " " + $reszta
                New-ADOrganizationalUnit -Name $nazwa -Path $reszta
            }
        }
    }
    
    
}

Function New-KejaBaseUsers
{
    
    #IT
    $path1 = "OU=IT,OU=Users,OU=kejaMain,DC=keja,dc=msft"
    New-ADUser -name "ewa" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADUser -name "adam" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADGroup IT -GroupScope Global -Path $path1
    Add-ADGroupMember IT -Members adam, ewa
    #HR
    $path1 = "OU=HR,OU=Users,OU=kejaMain,DC=keja,dc=msft"
    New-ADUser -name "ola" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADUser -name "ala" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADGroup HR -GroupScope Global -Path $path1
    Add-ADGroupMember HR -Members ola, ala

    #SALES
    $path1 = "OU=Sales,OU=Users,OU=kejaMain,DC=keja,dc=msft"
    New-ADUser -name "jan" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADUser -name "kuba" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADGroup Sales -GroupScope Global -Path $path1
    Add-ADGroupMember SALES -Members jan, kuba

    #MARKETING
    $path1 = "OU=marketing,OU=Users,OU=kejaMain,DC=keja,dc=msft"
    New-ADUser -name "monika" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADUser -name "grzegorz" -Path $path1 -AccountPassword $pass -Enabled $true
    New-ADGroup marketing -GroupScope Global -Path $path1
    Add-ADGroupMember marketing -Members monika, grzegorz

    #RESZTA
    $path1 = "CN=Users,DC=keja,DC=msft"
    $tab = "marzena", "renata", "agnieszka", "iza", "ania", "asia", "andrzej", "tomasz"

    foreach ($u in $tab)
    {
        New-ADUser -name $u -Path $path1  -AccountPassword $pass -Enabled $true
    }



}

if (not New-KejaOU -path "c:\test\ou_file.txt")
{
    return
}
New-KejaBaseUsers
