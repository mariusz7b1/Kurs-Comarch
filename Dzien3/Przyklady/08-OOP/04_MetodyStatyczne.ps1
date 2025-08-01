# encoding: utf-8
# Przykład 04 – Właściwości i metody statyczne

class Kalkulator {
    static [int]Dodaj([int]$a, [int]$b) {
        return $a + $b
    }

    static [int]Odejmij([int]$a, [int]$b) {
        return $a - $b
    }
}

# Użycie metod statycznych bez tworzenia obiektu
[Kalkulator]::Dodaj(10, 5)
[Kalkulator]::Odejmij(10, 5)
