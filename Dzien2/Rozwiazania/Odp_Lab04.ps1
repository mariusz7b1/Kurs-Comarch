# Zadanie 1: Zamiana tekstu na wielkie litery
function Convert-ToUpper {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [string]$Text
    )
    process {
        $Text.ToUpper()
    }
}

# Zadanie 2: Liczenie ilości znaków w napisie
function Get-TextLength {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [string]$Text
    )
    process {
        "$Text : $($Text.Length) znaków"
    }
}

# Zadanie 3: Filtrowanie liczb większych niż 10
function Filter-AboveTen {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [int]$Number
    )
    process {
        if ($Number -gt 10) {
            $Number
        }
    }
}

# Zadanie 4: Filtracja CSV – status = Active
function Get-ActiveRecords {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$Status
    )
    process {
        if ($Status -eq 'Active') {
            $_
        }
    }
}

# Zadanie 5: Pobieranie użytkowników AD na podstawie SamAccountName
function Get-ADUserFromPipeline {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$SamAccountName
    )
    process {
        Get-ADUser -Identity $SamAccountName
    }
}

# Zadanie 6: Osoby powyżej 40 lat
function Filter-Over40 {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [int]$Age
    )
    process {
        if ($Age -gt 40) {
            "$Name ma $Age lat"
        }
    }
}

# Zadanie 7: Tworzenie folderów na podstawie CSV
function New-FolderFromCSV {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$Folder
    )
    process {
        if (-not (Test-Path $Folder)) {
            New-Item -Path $Folder -ItemType Directory
        }
    }
}

# Zadanie 8: Usuwanie plików z potoku (z -WhatIf)
function Remove-FileFromPipeline {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$Path
    )
    process {
        if ($PSCmdlet.ShouldProcess($Path, "Usunięcie pliku")) {
            Remove-Item -Path $Path -Force
        }
    }
}

# Zadanie 9: Zapis danych do pliku logu
function Write-ToLog {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline = $true)]
        [string]$Line,
        [string]$LogFile = "C:\log\pipeline.log"
    )
    process {
        Add-Content -Path $LogFile -Value $Line
    }
}

# Zadanie 10: Restart działających usług
function Restart-RunningServices {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [string]$Status
    )
    process {
        if ($Status -eq "Running") {
            Restart-Service -Name $Name -Force
        }
    }
}
