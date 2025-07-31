<#
.SYNOPSIS
Zbiór funkcji PowerShell demonstrujących zwracanie danych do pipeline.

.DESCRIPTION
Plik zawiera:
1. Funkcję Get-EvenNumber: filtruje liczby parzyste.
2. Funkcję Multiply-ByTen: mnoży liczby przez 10.
3. Funkcję Get-UserRecord: tworzy obiekty PSCustomObject na podstawie nazw użytkowników.
4. Funkcję Modify-ProcessInfo: modyfikuje obiekty procesu i przekazuje je dalej.
#>

function Get-EvenNumber {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [int]$Number
    )
    process {
        if ($Number % 2 -eq 0) {
            Write-Output $Number
        }
    }
}

function Multiply-ByTen {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [int]$Value
    )
    process {
        $Value * 10
    }
}

function Get-UserRecord {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [string]$Username
    )
    process {
        [PSCustomObject]@{
            User     = $Username
            LoggedIn = $true
        }
    }
}

function Modify-ProcessInfo {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [System.Diagnostics.Process]$Process
    )
    process {
        # Tworzymy nowy obiekt PSCustomObject z wybranymi i zmodyfikowanymi właściwościami
        [PSCustomObject]@{
            ProcessName   = $Process.ProcessName
            ID            = $Process.Id
            MemoryMB      = [math]::Round($Process.WorkingSet64 / 1MB, 2)
            MemoryTag     = if ($Process.WorkingSet64 -gt 100MB) { "High" } else { "Normal" }
        }
    }
}

# Przykłady użycia:

# 1..10 | Get-EvenNumber | Multiply-ByTen

# "Admin", "Guest" | Get-UserRecord | Format-Table

# Get-Process | Modify-ProcessInfo | Format-Table -AutoSize