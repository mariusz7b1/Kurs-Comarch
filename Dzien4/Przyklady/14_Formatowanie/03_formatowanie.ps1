#"D" lub "d" - dziesiętny format liczby całkowitej, można dołączyć liczbę miejsca, na których powinna pojawić się liczba, np. "D5" dla pięciocyfrowych liczb.
$number = 45
$number.ToString("D5")  # Wyjście: "00045"

#"C" lub "c" - format walutowy, np. dla wartości 25.7 będzie to $25.70 (dla regionu ustawionego na USA).
$number = 25.7
$number.ToString("C")  # Wyjście: "$25.70"

#"N" lub "n" - format liczby z separatorami tysięcy, np. dla wartości 12345 wynikiem będzie 12,345.00.
$number = 12345
$number.ToString("N")  # Wyjście: "12,345.00"

#"X" lub "x" - format liczby heksadecymalnej, np. dla wartości 255 wynikiem będzie FF.
$number = 255
$number.ToString("X")  # Wyjście: "FF"

#"P" lub "p" - format procentowy, np. dla wartości 0.25 wynikiem będzie 25.00%.
$number = 0.25
$number.ToString("P")  # Wyjście: "25.00 %"

#"E" lub "e" - format notacji naukowej, np. dla wartości 12345 wynikiem będzie 1.234500E+004.
$number = 12345
$number.ToString("E")  # Wyjście: "1.234500E+004"

#"F" lub "f" - format liczby zmiennoprzecinkowej z określoną liczbą miejsc po przecinku, np. "F2" dla dwóch miejsc po przecinku.
$number = 12.34567
$number.ToString("F2")  # Wyjście: "12.35"
#Pamiętaj, że wyjście tych formatów może się różnić w zależności od ustawień regionalnych na komputerze, na którym jest uruchamiany skrypt.