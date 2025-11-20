$cred=Get-Credential -Message " Podaj dane do Keja" -UserName keja\administrator

$comp=Get-VM mg-2022-sv* | Where-Object state -eq "Running"

foreach($kompvirt in $comp) {
    $k=$kompvirt.VMName
    Write-Host "Testowanie VM: " -NoNewline -ForegroundColor Green
    Write-Host "$k " -NoNewline -ForegroundColor Yellow
    Try{
        Invoke-Command -VMName $k  -ScriptBlock {
            # blok kodu do VM 
            Test-ComputerSecureChannel 

        } -Credential $cred -ErrorAction Stop
        }
    Catch{
    
        Write-Host "Problem z $k" -ForegroundColor Red -BackgroundColor Blue
    }
        
}