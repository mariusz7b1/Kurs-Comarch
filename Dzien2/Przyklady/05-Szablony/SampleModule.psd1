@{
    # Wymagane
    RootModule = 'SampleModule.psm1'
    ModuleVersion = '1.0.0'
    GUID = '12345678-abcd-1234-abcd-1234567890ab'
    Author = 'Twoje Imię'
    CompanyName = 'Twoja Firma'
    Description = 'Szablon modułu PowerShell z trzema funkcjami.'

    # Opcjonalne
    PowerShellVersion = '5.1'
    FunctionsToExport = @('Get-SampleItem', 'Set-SampleItem', 'Remove-SampleItem')
    CmdletsToExport = @()
    VariablesToExport = @()
    AliasesToExport = @()

    PrivateData = @{
        PSData = @{
            Tags = @('PowerShell', 'Module', 'Template')
            LicenseUri = ''
            ProjectUri = ''
        }
    }
}
