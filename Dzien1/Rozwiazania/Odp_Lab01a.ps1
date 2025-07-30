# Zadanie 1: Usuwanie pliku z -WhatIf
function Remove-FileSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param ([string]$Path)
    if ($PSCmdlet.ShouldProcess($Path, "Usunięcie pliku")) {
        Remove-Item -Path $Path -Force
    }
}

# Zadanie 2: Tworzenie folderu jeśli nie istnieje, z -WhatIf
function New-FolderIfMissing {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param ([string]$Path)
    if (-not (Test-Path $Path)) {
        if ($PSCmdlet.ShouldProcess($Path, "Utworzenie folderu")) {
            New-Item -Path $Path -ItemType Directory
        }
    }
}

# Zadanie 3: Kopiowanie pliku z -WhatIf
function Copy-FileSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param (
        [string]$Source,
        [string]$Destination
    )
    if ($PSCmdlet.ShouldProcess($Destination, "Skopiowanie pliku z $Source")) {
        Copy-Item -Path $Source -Destination $Destination -Force
    }
}

# Zadanie 4: Zatrzymanie usługi z -Confirm
function Stop-ServiceSafe {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
    param ([string]$ServiceName)
    if ($PSCmdlet.ShouldProcess($ServiceName, "Zatrzymanie usługi")) {
        Stop-Service -Name $ServiceName -Force
    }
}

# Zadanie 5: Usuwanie folderu z -Confirm
function Remove-FolderConfirm {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param ([string]$Path)
    if ($PSCmdlet.ShouldProcess($Path, "Usunięcie folderu")) {
        Remove-Item -Path $Path -Recurse -Force
    }
}

# Zadanie 6: Usuwanie użytkownika AD
function Remove-ADUserSafe {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param ([string]$SamAccountName)
    $user = Get-ADUser -Identity $SamAccountName
    if ($null -ne $user) {
        if ($PSCmdlet.ShouldProcess($SamAccountName, "Usunięcie użytkownika")) {
            Remove-ADUser -Identity $user -Confirm:$false
        }
    }
}

# Zadanie 7: Przenoszenie użytkownika do innego OU
function Move-ADUserToOU {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param (
        [string]$SamAccountName,
        [string]$TargetOU
    )
    $user = Get-ADUser -Identity $SamAccountName
    if ($PSCmdlet.ShouldProcess($SamAccountName, "Przeniesienie użytkownika")) {
        Move-ADObject -Identity $user.DistinguishedName -TargetPath $TargetOU
    }
}

# Zadanie 8: Dodanie użytkownika do grupy
function Add-UserToGroupSafe {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'Medium')]
    param (
        [string]$SamAccountName,
        [string]$GroupName
    )
    if ($PSCmdlet.ShouldProcess($SamAccountName, "Dodanie do grupy $GroupName")) {
        Add-ADGroupMember -Identity $GroupName -Members $SamAccountName -Confirm:$false
    }
}

# Zadanie 9: Tworzenie nowej grupy
function New-ADGroupSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param ([string]$GroupName)
    $ou = "OU=Groups,DC=keja,DC=msft"
    if ($PSCmdlet.ShouldProcess($GroupName, "Utworzenie grupy w $ou")) {
        New-ADGroup -Name $GroupName -Path $ou -GroupScope Global -GroupCategory Security
    }
}

# Zadanie 10: Usuwanie pustej grupy
function Remove-EmptyGroup {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param ([string]$GroupName)
    $members = Get-ADGroupMember -Identity $GroupName
    if ($members.Count -eq 0) {
        if ($PSCmdlet.ShouldProcess($GroupName, "Usunięcie pustej grupy")) {
            Remove-ADGroup -Identity $GroupName -Confirm:$false
        }
    }
}

# Zadanie 11: Reset hasła użytkownika
function Reset-UserPasswordSafe {
    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param (
        [string]$SamAccountName,
        [string]$NewPassword
    )
    if ($PSCmdlet.ShouldProcess($SamAccountName, "Reset hasła")) {
        Set-ADAccountPassword -Identity $SamAccountName -Reset -NewPassword (ConvertTo-SecureString $NewPassword -AsPlainText -Force)
    }
}

# Zadanie 12: Dezaktywacja konta z logowaniem
function Disable-ADUserSafe {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param ([string]$SamAccountName)
    if ($PSCmdlet.ShouldProcess($SamAccountName, "Dezaktywacja konta")) {
        Disable-ADAccount -Identity $SamAccountName
        Add-Content -Path "C:\log\dezaktywacje.log" -Value "$(Get-Date) - $SamAccountName dezaktywowany"
    }
}

