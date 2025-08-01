# encoding: utf-8
# Przykład 03 – Dziedziczenie klas

class Osoba {
    [string]$Imie
    [string]$Nazwisko

    Osoba([string]$imie, [string]$nazwisko) {
        $this.Imie = $imie
        $this.Nazwisko = $nazwisko
    }

    [string]PelneDane() {
        return "$($this.Imie) $($this.Nazwisko)"
    }
}

class Pracownik : Osoba {
    [string]$Stanowisko

    Pracownik([string]$imie, [string]$nazwisko, [string]$stanowisko) : base($imie, $nazwisko) {
        $this.Stanowisko = $stanowisko
    }

    [string]Opis() {
        return "$($this.PelneDane()), stanowisko: $($this.Stanowisko)"
    }
}

$pracownik = [Pracownik]::new("Anna", "Nowak", "Programista")
$pracownik.Opis()
