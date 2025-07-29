# Mandatory, Help Message
# $VerbosePreference = 'Continue'

function Get-CorpCompSysInfo {
    #[CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True,HelpMessage='Computer name to query')]

        [string]$ComputerName
    )
    Write-Verbose "Now connecting to $ComputerName"
    Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $ComputerName
}


Get-CorpCompSysInfo -ComputerName SVR1 -Verbose