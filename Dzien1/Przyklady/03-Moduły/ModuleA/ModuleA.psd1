
@{
    RootModule = 'ModuleA.psm1'
    ModuleVersion = '1.0.0'
    Author = 'Mariusz Gola'
    Description = 'Moduł nadrzędny A, zależny od ModuleB'
    RequiredModules = @('ModuleB')
    FunctionsToExport = @('Get-FromModuleA','Get-Top5Proc')
}
