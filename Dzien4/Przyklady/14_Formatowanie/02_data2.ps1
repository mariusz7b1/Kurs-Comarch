$startDate = Get-Date "2023-05-17 08:00:00"
$endDate = Get-Date "2023-05-19 16:30:00"

$timeSpan = $endDate - $startDate
$timeSpan.Days # Zwraca liczbę dni
$timeSpan.Hours # Zwraca liczbę godzin
$timeSpan.Minutes # Zwraca liczbę minut
$timeSpan.Seconds # Zwraca liczbę sekund
$timeSpan.Milliseconds # Zwraca liczbę milisekund


"{0} dni, {1} godzin, {2} minut, {3} sekund, {4} milisekund" `
          -f $timeSpan.Days, $timeSpan.Hours, $timeSpan.Minutes, $timeSpan.Seconds, $timeSpan.Milliseconds
