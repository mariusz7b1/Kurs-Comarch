#  zmodyfikuj przykład aby pytał się o wielość 
# i działał w petli aż użytkownik poda 0

$freeSpace = 77GB

If ($freeSpace -le 5GB) 
{
    Write-Host “Free disk space is less than 5 GB”
} 
ElseIf ($freeSpace -le 10GB) 
{
    Write-Host “Free disk space is less than 10 GB”
} 
ElseIf ($freeSpace -le 20GB) 
{
    Write-Host “Free disk space is less than 20 GB”
} 
Else 
{
    Write-Host “Free disk space is more than 20 GB”
}
