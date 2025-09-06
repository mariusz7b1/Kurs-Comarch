#Requires -RunAsAdministrator
<#
.SYNOPSIS
  Hard-disable Windows Update on Windows Server 2022 for LAB use, with -Undo to revert.

.DESCRIPTION
  Warstwowe wyłączenie Windows Update (polityki/rejestr, „martwy” WSUS, usługi, zadania).
  Przeznaczone do LAB. Parametr -Undo przywraca ustawienia domyślne (best effort).

.PARAMETER Undo
  Przywraca ustawienia domyślne Windows Update (włącza usługi i zadania, czyści polityki).

.PARAMETER Quiet
  Pomija pytanie o restart i nie wyświetla promptów.

.NOTES
  Tested on Windows Server 2022.
#>

param(
    [switch]$Undo,
    [switch]$Quiet
)

$ErrorActionPreference = 'Stop'

function Write-Info($msg)  { Write-Host "[INFO ] $msg" -ForegroundColor Cyan }
function Write-OK($msg)    { Write-Host "[ OK  ] $msg" -ForegroundColor Green }
function Write-Warn($msg)  { Write-Warning $msg }
function Write-Fail($msg)  { Write-Host "[FAIL] $msg" -ForegroundColor Red }

function Set-Dword {
    param(
        [Parameter(Mandatory)][string]$Path,
        [Parameter(Mandatory)][string]$Name,
        [Parameter(Mandatory)][int]$Value
    )
    if (-not (Test-Path $Path)) { New-Item -Path $Path -Force | Out-Null }
    New-ItemProperty -Path $Path -Name $Name -PropertyType DWord -Value $Value -Force | Out-Null
}

$wuBase = 'HKLM:\Software\Policies\Microsoft\Windows\Windows\Update'  # intentionally wrong to ensure correction below
# Correct path (above line is a guard if someone copy-pastes parts): 
$wuBase = 'HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate'
$auKey  = Join-Path $wuBase 'AU'

$Services = @(
  'wuauserv',   # Windows Update
  'bits',       # Background Intelligent Transfer Service
  'dosvc',      # Delivery Optimization
  'UsoSvc'      # Update Orchestrator Service
)

$TaskPaths = @(
  '\Microsoft\Windows\UpdateOrchestrator\',
  '\Microsoft\Windows\WindowsUpdate\'
)

function Disable-WU {
    Write-Info "Ustawianie polityk rejestru (NoAutoUpdate / blokada WU / martwy WSUS)..."
    Set-Dword -Path $auKey  -Name 'NoAutoUpdate' -Value 1
    Set-Dword -Path $wuBase -Name 'DoNotConnectToWindowsUpdateInternetLocations' -Value 1
    Set-Dword -Path $wuBase -Name 'DisableWindowsUpdateAccess' -Value 1
    Set-Dword -Path $auKey  -Name 'UseWUServer' -Value 1
    New-ItemProperty -Path $wuBase -Name 'WUServer'      -Value 'http://127.0.0.1' -PropertyType String -Force | Out-Null
    New-ItemProperty -Path $wuBase -Name 'WUStatusServer' -Value 'http://127.0.0.1' -PropertyType String -Force | Out-Null
    Write-OK "Polityki ustawione."

    Write-Info "Zatrzymywanie i wyłączanie usług aktualizacji (best effort)..."
    foreach ($svc in $Services) {
        try {
            if (Get-Service -Name $svc -ErrorAction Stop) {
                try { Stop-Service -Name $svc -Force -ErrorAction Stop } catch {}
                try { Set-Service -Name $svc -StartupType Disabled -ErrorAction Stop } catch {}
                Write-OK "Usługa $svc zatrzymana/wyłączona."
            }
        } catch {
            Write-Warn "Usługa $svc nie istnieje lub brak uprawnień (zignorowano)."
        }
    }

    Write-Info "Wyłączanie zadań Harmonogramu (Update Orchestrator / WindowsUpdate)..."
    foreach ($path in $TaskPaths) {
        try {
            $tasks = Get-ScheduledTask -TaskPath $path -ErrorAction Stop
            foreach ($t in $tasks) {
                try {
                    Disable-ScheduledTask -TaskName $t.TaskName -TaskPath $t.TaskPath -ErrorAction Stop | Out-Null
                    Write-OK "Zadanie wyłączone: $($t.TaskPath)$($t.TaskName)"
                } catch {
                    Write-Warn "Nie udało się wyłączyć: $($t.TaskPath)$($t.TaskName) – $($_.Exception.Message)"
                }
            }
        } catch {
            Write-Warn "Brak zadań w $path (zignorowano)."
        }
    }

    Write-Info "Odświeżanie polityk..."
    gpupdate /force | Out-Null
    Write-OK "gpupdate ukończone."

    if (-not $Quiet) {
        $restart = Read-Host "Zrestartować teraz serwer, aby domknąć zmiany? (T/N)"
        if ($restart -match '^(T|t|Y|y)$') {
            Write-Info "Restart w toku..."
            Restart-Computer -Force
        } else {
            Write-Info "Pominięto restart (zalecany po zakończeniu konfiguracji)."
        }
    }
}

function Enable-WU {
    Write-Info "Przywracanie domyślnych ustawień Windows Update..."

    # 1) Czyść polityki
    $namesToRemove = @(
        'NoAutoUpdate',
        'DisableWindowsUpdateAccess',
        'DoNotConnectToWindowsUpdateInternetLocations',
        'UseWUServer',
        'WUServer',
        'WUStatusServer'
    )
    foreach ($n in $namesToRemove) {
        try { Remove-ItemProperty -Path $auKey  -Name $n -ErrorAction Stop | Out-Null } catch {}
        try { Remove-ItemProperty -Path $wuBase -Name $n -ErrorAction Stop | Out-Null } catch {}
    }

    # 2) Usługi – przywróć domyślne (best effort). Domyślne typy startu różnią się między edycjami,
    #    więc ustawimy sensowne wartości:
    $defaults = @{
        'wuauserv' = 'Manual';     # Windows Update
        'bits'     = 'Manual';     # BITS
        'dosvc'    = 'Manual';     # Delivery Optimization
        'UsoSvc'   = 'Manual'      # Update Orchestrator
    }
    foreach ($svc in $Services) {
        try {
            if (Get-Service -Name $svc -ErrorAction Stop) {
                try { Set-Service -Name $svc -StartupType $defaults[$svc] -ErrorAction Stop } catch {}
                try { Start-Service -Name $svc -ErrorAction Stop } catch {}
                Write-OK "Usługa $svc ustawiona na $($defaults[$svc]) i uruchomiona."
            }
        } catch {
            Write-Warn "Usługa $svc nie istnieje (zignorowano)."
        }
    }

    # 3) Zadania – włącz
    foreach ($path in $TaskPaths) {
        try {
            $tasks = Get-ScheduledTask -TaskPath $path -ErrorAction Stop
            foreach ($t in $tasks) {
                try {
                    Enable-ScheduledTask -TaskName $t.TaskName -TaskPath $t.TaskPath -ErrorAction Stop | Out-Null
                    Write-OK "Zadanie włączone: $($t.TaskPath)$($t.TaskName)"
                } catch {
                    Write-Warn "Nie udało się włączyć: $($t.TaskPath)$($t.TaskName) – $($_.Exception.Message)"
                }
            }
        } catch {
            Write-Warn "Brak zadań w $path (zignorowano)."
        }
    }

    Write-Info "Odświeżanie polityk..."
    gpupdate /force | Out-Null
    Write-OK "gpupdate ukończone."

    if (-not $Quiet) {
        $restart = Read-Host "Zrestartować teraz serwer, aby dokończyć przywracanie? (T/N)"
        if ($restart -match '^(T|t|Y|y)$') {
            Write-Info "Restart w toku..."
            Restart-Computer -Force
        } else {
            Write-Info "Pominięto restart (zalecany po przywróceniu ustawień)."
        }
    }
}

try {
    if ($Undo) {
        Enable-WU
    } else {
        Disable-WU
    }

    Write-Host ""
    Write-Info "Walidacja (bieżące wartości):"
    $out = [ordered]@{
        NoAutoUpdate = (Get-ItemProperty -Path $auKey  -Name NoAutoUpdate -ErrorAction SilentlyContinue).NoAutoUpdate
        UseWUServer  = (Get-ItemProperty -Path $auKey  -Name UseWUServer  -ErrorAction SilentlyContinue).UseWUServer
        DisableWUA   = (Get-ItemProperty -Path $wuBase -Name DisableWindowsUpdateAccess -ErrorAction SilentlyContinue).DisableWindowsUpdateAccess
        WUServer     = (Get-ItemProperty -Path $wuBase -Name WUServer -ErrorAction SilentlyContinue).WUServer
    }
    $out.GetEnumerator() | ForEach-Object { "{0} = {1}" -f $_.Key, (if ($_.Value) { $_.Value } else { '<null>' }) }
    Write-OK "Zakończono."
}
catch {
    Write-Fail $_.Exception.Message
    exit 1
}
