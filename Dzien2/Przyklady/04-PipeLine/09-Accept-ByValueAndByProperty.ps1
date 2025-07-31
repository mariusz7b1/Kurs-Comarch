<#
.SYNOPSIS
Funkcja Accept-ByValueAndByProperty demonstruje odbieranie danych z potoku w PowerShell zarówno przez wartość (ByValue),
jak i przez nazwę właściwości (ByPropertyName).

.DESCRIPTION
Funkcja akceptuje dane przekazywane w potoku, które mogą być:
- zwykłymi wartościami tekstowymi (string),
- obiektami posiadającymi właściwość "Name".

.PARAMETER Name
Nazwa elementu przekazywana bezpośrednio lub jako właściwość obiektu.

.EXAMPLE
'Serwer01', 'Serwer02' | Accept-ByValueAndByProperty

.EXAMPLE
[PSCustomObject]@{ Name = 'PC01' }, @{ Name = 'PC02' } | Accept-ByValueAndByProperty
#>

function Accept-ByValueAndByProperty {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true
        )]
        [string]$Name
    )

    process {
        Write-Output "Przetwarzam: $Name"
    }
}

# Przykład użycia 1 – przekazywanie przez wartość (ByValue)
'Serwer01', 'Serwer02' | Accept-ByValueAndByProperty

# Przykład użycia 2 – przekazywanie przez nazwę właściwości (ByPropertyName)
[PSCustomObject]@{ Name = 'PC01' }, [PSCustomObject]@{ Name = 'PC02' } | Accept-ByValueAndByProperty


#get-help Accept-ByValueAndByProperty -ShowWindow