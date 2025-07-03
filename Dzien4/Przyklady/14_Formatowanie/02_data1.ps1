# Set-Date -Date "2023-12-31 23:59:59"
# Set-TimeZone -Id "Central European Standard Time"
# w32tm /resync

# formatowanie:


(Get-Date).ToString("yyyy-MM-dd")
(Get-Date).ToString("dd-MM-yyyy")
(Get-Date).ToString("HH:mm:ss")
(Get-Date).ToString("dd MMMM yyyy, HH:mm")

$date1 = Get-Date
Start-Sleep -Seconds 5
$date2 = Get-Date
$diff = $date2 - $date1
$diff.TotalSeconds



#Wyświetlanie pełnej daty i czasu:
Get-Date -UFormat "%c"

#Wyświetlanie daty w formacie YYYY-MM-DD:
Get-Date -UFormat "%Y-%m-%d"

#Wyświetlanie czasu w formacie HH:MM:SS:
Get-Date -UFormat "%T"

#Wyświetlanie dnia tygodnia:
Get-Date -UFormat "%A"


#Wyświetlanie skróconego dnia tygodnia:
Get-Date -UFormat "%a"

#Wyświetlanie dnia roku (od 1 do 366):
Get-Date -UFormat "%j"


#Wyświetlanie pełnej daty, czasu i strefy czasowej:
Get-Date -UFormat "%F %T %Z"


$startDate = Get-Date "2023-05-17 08:00:00"
$endDate = Get-Date "2023-05-19 16:30:00"
$timeSpan = $endDate - $startDate

$timeSpan.Days # Zwraca liczbę dni
$timeSpan.Hours # Zwraca liczbę godzin
$timeSpan.Minutes # Zwraca liczbę minut
$timeSpan.Seconds # Zwraca liczbę sekund
$timeSpan.Milliseconds # Zwraca liczbę milisekund

"{0} dni, {1} godzin, {2} minut, {3} sekund, {4} milisekund" -f $timeSpan.Days, $timeSpan.Hours, $timeSpan.Minutes, $timeSpan.Seconds, $timeSpan.Milliseconds
