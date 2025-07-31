function Test-DaneKontaktowe {
    param (
        [ValidatePattern("^\d{3}-\d{3}-\d{3}$")]
        [string]$Telefon,

        [ValidatePattern("^\d{2}-\d{3}$")]
        [string]$KodPocztowy
    )

    "Telefon: $Telefon, Kod: $KodPocztowy"
}

# Przykład użycia:
# Test-DaneKontaktowe -Telefon "123-456-789" -KodPocztowy "12-345"