
# GetEnumerator() z HashTable
$hash = @{
    Name = "Anna"
    Age = 25
    City = "Opole"
}

$enum = $hash.GetEnumerator()
foreach ($entry in $enum) {
    Write-Host "Klucz: $($entry.Key), Wartość: $($entry.Value)"
}
