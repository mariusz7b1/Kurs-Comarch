
@{
    RootModule = 'MyModule.psm1'
    ModuleVersion = '1.0.0'
    Author = 'Mariusz Gola'
    Description = 'Prosty moduł z funkcjami HelloWorld i Get-Date'
    FunctionsToExport = @('Get-HelloWorld', 'Get-CurrentDate')
}
