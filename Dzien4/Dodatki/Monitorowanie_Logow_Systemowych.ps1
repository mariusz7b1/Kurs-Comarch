
# 1. Błędy systemowe z ostatnich 24 godzin
Get-EventLog -LogName System -EntryType Error -After (Get-Date).AddDays(-1)

# 2. Liczba logowań (Event ID 4624) z ostatnich 24 godzin
Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4624; StartTime=(Get-Date).AddDays(-1)} | Measure-Object

# 3. Eksport 50 najnowszych logów systemowych do pliku CSV
New-Item "C:\logi" -ItemType Directory -ErrorAction SilentlyContinue
Get-EventLog -LogName System -Newest 50 | Export-Csv -Path C:\logi\system_log.csv -NoTypeInformation

# 4. 10 najnowszych zdarzeń z dziennika Application
Get-EventLog -LogName Application -Newest 10

# 5. Błędy aplikacji (Event ID 1000)
Get-WinEvent -FilterHashtable @{LogName='Application'; ID=1000}

# 6. Nieudane próby logowania (Event ID 4625)
Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4625}
