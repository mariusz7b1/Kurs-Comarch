$path = "c:\test\ksiazka.txt"

# Odczytuj po 10 linii naraz
if (Test-Path $path){
    Get-Content -Path $path -ReadCount 10 |
    ForEach-Object {
        # Przetwarzaj każdą partię linii
        foreach ($linia in $_) {
            # Wykonaj operacje na bloku linii, tutaj przykładowo po prostu je wyświetlamy
            Write-Output $linia
        }
        # Tu możesz dodać przerwę lub inny kod, jeśli chcesz coś zrobić między partiami
    }
}