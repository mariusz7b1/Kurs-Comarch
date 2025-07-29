# wrzucić wszytko do modułu o nawie TestAdvFunc

function Test-Verbose {
    [CmdletBinding()]
    param ()
    Write-Verbose "To jest komunikat verbose"
    Write-Output "Zakończono"
    Write-Output 1
    Write-Output $true
}

# Przykład: Write-Debug
function Test-Debug {
    [CmdletBinding()]
    param ()
    Write-Debug "Rozpoczęto operację 1"
    Write-Output "Wykonanie operacji"
    Write-Debug "Zakonczono operacje 1"
}

# Przykład: Write-Warning
function Test-Warning {
    [CmdletBinding()]
    param ()
    Write-Warning "Ostrzeżenie: operacja może być ryzykowna"
    Write-Output "Kontynuuję mimo ostrzeżenia"
}

# Przykład: Write-Information
function Test-Info {
    [CmdletBinding()]
    param ()
    Write-Information "Informacja dla użytkownika" -InformationAction Continue
}


$result=Test-Verbose -Verbose
$result

Test-Debug -Debug
Test-Warning
Test-Info