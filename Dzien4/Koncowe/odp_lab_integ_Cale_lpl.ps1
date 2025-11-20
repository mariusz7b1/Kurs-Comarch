function zwrocFolder ($sciezkaDoPliku)
{
    $zm1 = $sciezkaDoPliku.split("\")
    $zm1 = $zm1[0..($zm1.Length - 2)]
    $sciezkaDoPliku = $zm1 -join "\"
    return $sciezkaDoPliku
}

function CzyscSlowo ($slowo)
{
    $slowo = $slowo -replace "\W"
    $slowo = $slowo -replace "\d"
    return $slowo
}

function PoliczZnak($linia, $znak)
{
    $liczbaWystapien = ($linia | Where-Object { $_ -eq $znak } | Measure-Object).Count
    return $liczbaWystapien
}



function PrzetwarzajPlik
{
    param(
        [string] $sciezkaDoPliku
    )

    $samogloski = "aeiouy".ToCharArray()
    
    # Policz wystąpienia litery "a"
    $iloscA = 0
    $iloscSamoglosek = 0
    # tablica
    $rozneZnaki = @()
    $statystykaLiter = @{}        
    $iloscWszytklichliter = 0
    $listaSlow = New-Object System.Collections.ArrayList
    
    
    Get-Content -Path $sciezkaDoPliku -Encoding UTF8 -ReadCount 1 | ForEach-Object {
        # operujemy na małych literach
        $wiersz = $_.ToLower()
            
        # linia do tablicy 
        $linia = $wiersz.ToCharArray()
            
        # liczenia 'a'
        $iloscA += PoliczZnak $linia 'a'
            
        # różne znaki 
        $rozneZnaki = ($rozneZnaki + $linia) | Select-Object -Unique
                      
        # liczba samoglosek
        foreach ($samogloska in $samogloski)
        {
            $iloscSamoglosek += PoliczZnak $linia $samogloska
        }

                   
        # statystyka liter (ilość wystąpień)
        foreach ($litera in $linia)
        {
            if ([char]::IsLetter( $litera))
            {
                $iloscWszytklichliter += 1
                if (-not $statystykaLiter.ContainsKey($litera))
                {
                    $statystykaLiter[$litera] = 1    # dodaje kolejny element slownika o kluczu litera
                }
                else
                {
                    $statystykaLiter[$litera] += 1
                }
            }
        }
        
        # słowa
        foreach ($slowo in $wiersz.split())
        {
            # dostaje tablice słow 
            $slowo = CzyscSlowo $slowo
            if ($slowo.length -ge 3)
            {
                $listaSlow.Add($slowo) | Out-Null           
            }
                
        }

    }
    # zakonczony odczyt z pliku
    

    #$statystyka_liter = $statystyka_liter.GetEnumerator() | Sort-Object Value -Descending                
    
    $listaSlowUnikalnych = $listaSlow | Select-Object -Unique
    $listaSlowUnikalnych = $listaSlowUnikalnych | Sort-Object { $_.Length } -Descending
    
    $maxDlugosc = $listaSlowUnikalnych[0].length
    
    $najdluzszeSlowa = New-Object System.Collections.ArrayList
    
    foreach ($slowo in $listaSlowUnikalnych)
    {
        if ($slowo.length -eq $maxDlugosc)
        {
            $najdluzszeSlowa.Add($slowo)
        }
        else { break }
    }
    
    $sciezkaDoPlikuOut = (zwrocFolder $sciezkaDoPliku) + "\raport2.txt"
    $tekst = "Przetworzono plik $sciezkaDoPliku" 
    
    "-" * ($tekst.Length + 4) | Set-Content $sciezkaDoPlikuOut
    "| " + $tekst + " |" | Add-Content $sciezkaDoPlikuOut
    "-" * ($tekst.Length + 4) | Add-Content $sciezkaDoPlikuOut

    
    "Ilość wystąpień litery a = $iloscA" | Add-Content $sciezkaDoPlikuOut
    "różnych znaków w pliku $($rozneZnaki.count)" | Add-Content $sciezkaDoPlikuOut
    "Ilość wszytkich samoglosek to = $iloscSamoglosek" | Add-Content $sciezkaDoPlikuOut
    "Statystyka liter" | Add-Content $sciezkaDoPlikuOut

    $statystykaLiter = $statystykaLiter.GetEnumerator() | Sort-Object Value -Descending
    foreach ($entry in $statystykaLiter)
    {
        
        $wynik = "{0:F2}%" -f ($entry.Value / $iloscWszytklichliter * 100)
        "$($entry.Name): $wynik" | Add-Content $sciezkaDoPlikuOut
    }
    
    "Ilość wszytkich słów to  = $($listaSlow.Count)" | Add-Content $sciezkaDoPlikuOut
    "Ilość słów unikalnych to = $($listaSlowUnikalnych.Count)" | Add-Content $sciezkaDoPlikuOut
    "Najdluższe słowo ma = $maxDlugosc a takich słow jest  $($najdluzszeSlowa.count)  " | Add-Content $sciezkaDoPlikuOut
    
            
}
 
PrzetwarzajPlik "D:\dane\testowy.txt"







