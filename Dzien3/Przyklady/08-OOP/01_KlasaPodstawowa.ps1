# encoding: utf-8
# Przykład 01 – Prosta klasa z właściwościami i metodą

class Samochod {
    [string]$Marka
    [string]$Model

    Samochod([string]$marka, [string]$model) {
        $this.Marka = $marka
        $this.Model = $model
    }

    [string]Opis() {
        return "Samochód: $($this.Marka) $($this.Model)"
    }
}

# Tworzenie obiektu klasy
$samochod = [Samochod]::new("Toyota", "Corolla")
$samochod.Opis()
