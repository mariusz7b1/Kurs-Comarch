$tab=Get-Content -Path c:\test\ou_file.txt
foreach($t1 in $tab) {
    $t1=$t1.Trim()
    if ($t1.Length -gt 0){
        $poz=$t1.IndexOf(",")
        $nazwa =$t1.Substring(0,$poz)
        $nazwa =$nazwa.Substring(3)
        $reszta=$t1.Substring($poz+1)
        $nazwa+ " "+ $reszta
        New-ADOrganizationalUnit -Name $nazwa -Path $reszta
    }
 }