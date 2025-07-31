<#
.SYNOPSIS
    Rozbudowany szablon funkcji zaawansowanej PowerShell.

.DESCRIPTION
    Funkcja stanowi szkielet dla własnych implementacji:
    - Obsługuje -WhatIf, -Confirm
    - Obsługuje potok byValue i byPropertyName
    - Zawiera wiele typów walidacji
    - Pokazuje sposób definiowania pozycyjnych parametrów
    - Zawiera pełną sekcję pomocy

.PARAMETER Par1
    Wymagany parametr tekstowy, wspiera ValueFromPipeline i pozycję 0.

.PARAMETER Par2
    Parametr opcjonalny liczbowy, pozycja 1, z walidacją zakresu i wzorca.

.EXAMPLE
    Get-ExampleData -Par1 "Demo" -Par2 5

.EXAMPLE
    [PSCustomObject]@{ Par1 = "FromObject"; Par2 = 20 } | Get-ExampleData

.NOTES
    Autor: Szablon trenera PowerShell
#>
function Get-ExampleData {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
    param (
        # Przykład: byValue, pozycja 0, walidacja pustych wartości i wzorca
        [Parameter(Position = 0, Mandatory = $true,
                   ValueFromPipeline = $true,
                   ValueFromPipelineByPropertyName = $true,
                   HelpMessage = "Wprowadź wartość dla Par1")]
        [ValidateNotNullOrEmpty()]
        [ValidatePattern("^[a-zA-Z0-9]+$")]
        [string]$Par1,

        # Przykład: pozycja 1, walidacja zakresu
        [Parameter(Position = 1, Mandatory = $false,
                   ValueFromPipelineByPropertyName = $true)]
        [ValidateRange(1, 100)]
        [int]$Par2 = 10,

        # Opcjonalna walidacja listy dozwolonych wartości
        [ValidateSet("Red", "Green", "Blue")]
        [string]$Color = "Green",

        # Walidacja skryptowa
        [ValidateScript({ Test-Path $_ })]
        [string]$FilePath
    )

    begin {
        Write-Verbose "Begin: przygotowanie danych"
    }

    process {
        if ($PSCmdlet.ShouldProcess("Obiekt: $Par1", "Przetworzenie danych")) {
            if ($PSCmdlet.ShouldContinue("Czy kontynuować przetwarzanie $Par1?", "Potwierdzenie")) {
                Write-Output "Przetwarzanie: $Par1, Par2=$Par2, Kolor=$Color, Plik=$FilePath"
            } else {
                Write-Warning "Anulowano operację dla $Par1"
            }
        }
    }

    end {
        Write-Verbose "End: zakończenie przetwarzania"
    }
}
