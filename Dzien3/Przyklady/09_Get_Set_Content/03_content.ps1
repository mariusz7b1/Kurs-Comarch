$ścieżka = "D:\dane\ksiazka.txt"

# Odczytuj po 10 linii naraz
Get-Content -Path $ścieżka -ReadCount 10 |
ForEach-Object {
    # Przetwarzaj każdą partię linii
    foreach ($linia in $_) {
        # Wykonaj operacje na bloku linii, tutaj przykładowo po prostu je wyświetlamy
        Write-Output $linia
    }
    # Tu możesz dodać przerwę lub inny kod, jeśli chcesz coś zrobić między partiami
}
