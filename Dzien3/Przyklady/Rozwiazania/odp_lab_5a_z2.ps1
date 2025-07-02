param(
    [string]$Tekst,
    [string]$Kolor = "RED"
)
$kolory = [System.Enum]::GetValues([System.ConsoleColor])
if ($Kolor -notin $kolory)
{
    Write-Host "Dopuszczalne kolory to " -BackgroundColor Yellow -ForegroundColor Red
    Write-Host $kolory -Separator " " -NoNewline
}
else
{
    Write-Host "Wypisuję parametr Tekst: $Tekst" -ForegroundColor $Kolor
}
