# Import danych z pliku XML utworzonego przez Export-Clixml
# Obiekty są deserializowane do natywnych obiektów PS z zachowaniem typów

$imported = Import-Clixml -Path "users.clixml"
$imported | Format-Table Name, Enabled, LastLogon
