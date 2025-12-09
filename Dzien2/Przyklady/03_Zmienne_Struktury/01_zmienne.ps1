
$num1 = 5
$num1

$logFile = "C:\Logs\Log.txt"
$logFile

$service = Get-Service W32Time
$service


Write-Host "The log file location is $logFile"

Write-Host 'The log file location is $logFile'


$service | Format-List *
$service.status
$service | Format-Table Name,Status


Get-Variable
Get-ChildItem Variable:

# typ zmiennej
$num1.GetType()
$logFile.GetType()
$service.GetType()
$service | Get-Member

#wymuszenie typu
$num2 = "5"

[Int]$num3 = "5"


$num2.GetType()
$num3.GetType()



[Int]$num4 = "Text that can't convert"


#String plus integer
$num2 + $num3

#Integer plus string
$num3 + $num2

#Integer plus string ktorego nie mozemy konwertowac
$num3 + $logFile
