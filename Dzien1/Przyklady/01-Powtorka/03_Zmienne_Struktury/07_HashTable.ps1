
# Tworzenie i operacje na HashTable
$hash = @{
    Name = "John"
    Age = 30
    Country = "Poland"
}
$hash.Add("City", "Warsaw")
$hash["Age"] = 31
$hash.Remove("Country")
Write-Output $hash
