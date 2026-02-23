Param (
    [string]$ComputerName
)

If ($ComputerName -eq "") {
    Write-Host "Konieczna jest nazwa komutera"
} Else {
    Get-EventLog -LogName System -Newest 20 -ComputerName $ComputerName
}
