Function Test-ScriptBlock
{
    [CmdletBinding()]
    Param
    ( 
        [Parameter(ValueFromPipeline)]
        [int]$Number
    )
     BEGIN
    {
        $zm1=0
        Write-Host "Jestes w bloku Begin   zm1=$zm1, Number=$Number"
    }
 
    PROCESS
    {
        $zm1+=2
        Write-Host "Jestes w bloku Process zm1=$zm1, Number=$Number"
    }
    END
    {
        Write-Host "Jestes w bloku END     Number=$Number"
    }
} 


1..4 | Test-ScriptBlock 
