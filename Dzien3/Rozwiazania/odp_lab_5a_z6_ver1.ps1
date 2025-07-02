<# Wersja rozwojowa :)#>

function Get-TimeStamp
{
    $date = Get-Date
    return $date.ToShortDateString() + ' ' + $date.ToLongTimeString() + ' '
}
function Save-Log
{
    param (
        $plikRaportu,
        $tekst
    )
    $tekstDoZapisu = Get-TimeStamp
    $tekstDoZapisu += $tekst
    Add-Content -LiteralPath $plikRaportu -Value $tekstDoZapisu
    Write-Host $tekst -ForegroundColor Yellow -BackgroundColor Black
}

Function Convert-CsvToJson
{
    param(
        [Parameter(mandatory = $true)] $inputFolder,
        $outputFolder = $inputFolder,
        $delimiter = ","
    )

    if ( Test-Path $inputFolder)
    {
        # folder ŻRÓDŁOWY Istnieje
      
        # sprawdzam czy istnieje Folder Docelowy
        if (-not (Test-Path $outputFolder))
        {
            # problem z  folderem Docelowym,  przymuję ze docelowy = zrodłowy
            $outputFolder = $inputFolder
        }
        # tworzę w folderze docelowym  plik do raportowania
        $plikRaportu = "$outputFolder\raport_konwersji.txt"
        try
        {
            #  !!! potencjalnie tu może być bład zwiazany z zapisem 
            (Get-TimeStamp) + "->->  Raport Konwersji  <-<-" | 
            Set-Content -LiteralPath $plikRaportu -Encoding UTF8 -ErrorAction Stop
        }
        catch
        {
            Write-Host "BLAD ZAPISU Działanie niemożliwe"
            Return $false
        }
        

        $mojePliki = Get-ChildItem -LiteralPath $inputFolder -File | Where-Object { $_.Extension -eq ".csv" }
        if ($mojePliki.count -eq 0)
        {
            Save-Log -plikRaportu $plikRaportu -tekst "Brak plików do konwersji -> Koniec działania"
            Return $false
        }    
        # w końcu zaczynamy
        foreach ($plik in $mojePliki)
        {
            $nazwa = $plik.BaseName
            $nazwaZrodlowa = $nazwa + ".csv"
            $nazwaDocelowa = $nazwa + ".json"
            
            # wczytywanie zawartosci 
            try
            {
                $pelnaNazwa = $inputFolder + '\' + $nazwaZrodlowa
                $dane = Import-Csv  -LiteralPath $pelnaNazwa -Delimiter $delimiter -ErrorAction Stop
                # zapisywanie zawartosci 
                $pelnaNazwa = $outputFolder + '\' + $nazwaDocelowa
                $dane | ConvertTo-Json | Set-Content -LiteralPath $pelnaNazwa    -ErrorAction Stop
                Save-Log -plikRaportu $plikRaportu -tekst "Plik  $pelnaNazwa został przekonwertowany" 
                               
            }
            catch
            {
                Save-Log -plikRaportu $plikRaportu -tekst "Bład odczytu/zapisu pliku  $pelnaNazwa"                
            }
                
        }
        
        Save-Log -plikRaportu $plikRaportu -tekst "->->  KONIEC  KONWERSJI <-<- "                     

    }
    else
    {
        Write-Host "BRAK FOLDERU z plikami Działanie niemożliwe"
        return $false
    }

}

Clear-Host
Convert-CsvToJson -inputFolder D:\dane\CSV -outputFolder D:\dane\JSON










