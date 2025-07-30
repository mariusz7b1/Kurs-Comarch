
function Get-FromModuleA {
    Get-FromModuleB
}

function Get-Top5Proc {
    Get-Process | Sort-Object cpu -Descending | Select-Object -First 5
}

