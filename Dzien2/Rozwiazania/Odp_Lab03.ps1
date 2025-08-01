function Zad1 {
    param([ValidateRange(18,99)][int]$Wiek)
    "Wiek: $Wiek"
}

function Zad2 {
    param([ValidatePattern("^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$")][string]$Email)
    "Email: $Email"
}

function Zad3 {
    param([ValidatePattern("^\d{2}-\d{3}$")][string]$Kod)
    "Kod pocztowy: $Kod"
}

function Zad4 {
    param([ValidateNotNullOrEmpty()][string]$Imie)
    "Imię: $Imie"
}

function Zad5 {
    param([ValidateScript({ Test-Path $_ })][string]$Plik)
    "Plik: $Plik"
}

function Zad6 {
    param([ValidateSet("Start", "Stop", "Restart")][string]$Akcja)
    "Akcja: $Akcja"
}

function Zad7 {
    param([ValidatePattern("^[A-Z]{3}\d{3}$")][string]$KodProduktu)
    "Kod produktu: $KodProduktu"
}

function Zad8 {
    param([ValidateRange(0, [int]::MaxValue)][int]$Liczba)
    "Liczba: $Liczba"
}

function Zad9 {
    param([ValidateScript({ $_ -le (Get-Date) })][datetime]$Data)
    "Data: $Data"
}

function Zad10 {
    param([ValidateScript({ Test-Path $_ -PathType Container })][string]$Folder)
    "Folder: $Folder"
}

function Zad11 {
    param([ValidateLength(5,10)][string]$Tekst)
    "Tekst: $Tekst"
}

function Zad12 {
    param([ValidatePattern("^\d{9}$")][string]$Telefon)
    "Telefon: $Telefon"
}

function Zad13 {
    param([ValidateScript({ $_ % 2 -eq 0 })][int]$Liczba)
    "Parzysta liczba: $Liczba"
}

function Zad14 {
    param([ValidateScript({ Get-LocalUser -Name $_ -ErrorAction SilentlyContinue })][string]$User)
    "Użytkownik: $User"
}

function Zad15 {
    param(
        [ValidateRange(1,10)]
        [ValidateScript({ $_ % 2 -eq 1 })]
        [int]$Liczba
    )
    "Nieparzysta liczba z zakresu 1–10: $Liczba"
}