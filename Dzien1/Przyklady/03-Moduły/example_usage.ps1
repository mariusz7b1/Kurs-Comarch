
Import-Module .\MyModule.psm1
Get-HelloWorld -Name 'Kursanci'
Get-CurrentDate

Import-Module .\MyAdvancedModule.psm1
pingserver -ComputerName localhost
