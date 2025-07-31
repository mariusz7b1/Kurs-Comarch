#Zmodyfikuj funkcję o sprawdzanie użytkwnikó AD 
# ewentualnie dodaj inne akcje 

function Test-Uzytkownik {
    param (
        [ValidateScript({
            $user = Get-LocalUser -Name $_ -ErrorAction SilentlyContinue
            if (-not $user) {
                Write-Host "Użytkownik nie istnieje."
                return $false
            }

            if ($user.Enabled -ne $true) {
                Write-Host "Użytkownik jest zablokowany."
                return $false
            }

            return $true
        })]
        [string]$UserName
    )

    "Użytkownik jest poprawny: $UserName"
}