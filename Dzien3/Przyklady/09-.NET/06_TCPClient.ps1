# Przykład 6: Sprawdzenie dostępności portu TCP
$client = New-Object System.Net.Sockets.TcpClient
$client.Connect("example.com", 80)
$client.Connected
$client.Close()
