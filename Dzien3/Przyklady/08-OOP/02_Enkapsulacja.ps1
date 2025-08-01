# encoding: utf-8
# Przykład 02 – Enkapsulacja (pola prywatne i metody dostępowe)

class KontoBankowe {
    [string]$Wlasciciel
    hidden [decimal]$Saldo = 0

    KontoBankowe([string]$wlasciciel) {
        $this.Wlasciciel = $wlasciciel
    }

    [void]Wplata([decimal]$kwota) {
        $this.Saldo += $kwota
    }

    [void]Wyplata([decimal]$kwota) {
        if ($kwota -le $this.Saldo) {
            $this.Saldo -= $kwota
        } else {
            throw "Brak wystarczających środków."
        }
    }

    [decimal]GetSaldo() {
        return $this.Saldo
    }
}

$konto = [KontoBankowe]::new("Jan Kowalski")
$konto.Wplata(500)
$konto.Wyplata(200)
$konto.GetSaldo()
