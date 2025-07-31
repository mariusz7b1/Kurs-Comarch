<#
.SYNOPSIS
    Przykładowy szablon funkcji zaawansowanej PowerShell.

.DESCRIPTION
    Funkcja służy jako wzór do budowy własnych funkcji. Wspiera:
    - Parametry wejściowe z walidacją
    - Obsługę -WhatIf i -Confirm
    - Przetwarzanie danych z potoku
    - Sekcję pomocy i przykładów

.PARAMETER Par1
    Pierwszy parametr - może pochodzić z potoku lub być podany jawnie.

.PARAMETER Par2
    Drugi parametr - opcjonalny, może zawierać walidację.

.EXAMPLE
    Get-ExampleData -Par1 "Test" -Par2 5 -Verbose -Confirm

.EXAMPLE
    "Test" | Get-ExampleData -Par2 5

.NOTES
    Autor: Szablon trenera PowerShell
#>
function Get-ExampleData {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
    param (
        # Parametr z potoku po wartości
        [Parameter(Mandatory = $true,
                   ValueFromPipeline = $true,
                   HelpMessage = "Wprowadź wartość dla Par1")]
        [ValidateNotNullOrEmpty()]
        [string]$Par1,

        # Parametr z walidacją zakresu
        [Parameter(Mandatory = $false)]
        [ValidateRange(1, 100)]
        [int]$Par2 = 10
    )

    begin {
        # Inicjalizacja jeśli potrzebna
        Write-Verbose "Rozpoczęcie działania funkcji"
    }

    process {
        # Potwierdzenie działania funkcji z -WhatIf/-Confirm
        if ($PSCmdlet.ShouldProcess("Obiekt: $Par1", "Przetworzenie danych")) {

            # Opcjonalna dodatkowa interaktywna weryfikacja (niezależna od -Confirm)
            if ($PSCmdlet.ShouldContinue("Czy na pewno chcesz przetworzyć: $Par1?", "Potwierdź operację")) {
                # Główna logika
                Write-Output "Przetworzono: $Par1 z parametrem Par2=$Par2"
            } else {
                Write-Warning "Anulowano działanie na $Par1"
            }
        }
    }

    end {
        # Zakończenie jeśli potrzebne
        Write-Verbose "Zakończono działanie funkcji"
    }
}

# Przykładowe wywołanie testowe (do usunięcia lub modyfikacji przy użyciu szablonu)
# Get-ExampleData -Par1 "Demo" -Par2 20 -WhatIf
# "Demo" | Get-ExampleData -Par2 15 -Confirm
