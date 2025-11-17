#LAB_1A
#Zadanie 1

# 1.1. Wyszukiwanie komend
# Wyświetlenie wszystkich dostępnych komend
Get-Command

# Wyszukanie komend związanych z zarządzaniem procesami
Get-Command *process*

# 1.2. Pomoc i przykłady
# Uzyskanie informacji o komendzie Get-Service
Get-Help Get-Service

# Wyświetlenie przykładów użycia komendy Get-Service
Get-Help Get-Service -Examples

# 1.3. Wyszukiwanie w modułach
# Znalezienie wszystkich dostępnych modułów w systemie
Get-Module -ListAvailable

# Znalezienie wszystkich komend w module ActiveDirectory
Get-Command -Module ActiveDirectory

# 1.4. Wyszukiwanie funkcji i filtracja
# Wyszukanie wszystkich dostępnych funkcji
Get-Command -CommandType Function

# 1.5. Zadanie 5: Pomoc online
# Otworzenie strony pomocy dla komendy Get-Process
Get-Help Get-Process -Online

# 1.6. Brak

# 1.7. Wyszukiwanie Cmdletów z użyciem Noun
# Znalezienie wszystkich poleceń, które mają w nazwie rzeczownik "Process"
Get-Command -Noun Process

# 1.8. Wyszukiwanie Cmdletów z użyciem Verb
# Znalezienie wszystkich poleceń, które mają w nazwie czasownik "Get"
Get-Command -Verb Get


