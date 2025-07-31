function Show-ProductDetails {
    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [string]$ProductName,

        [Parameter(ValueFromPipelineByPropertyName=$true)]
        [decimal]$Price
    )
    process {
        "Produkt: $ProductName, Cena: $Price PLN"
    }
}

[PSCustomObject]@{ ProductName = 'Laptop'; Price = 3499.99 }, [PSCustomObject]@{ ProductName = 'Monitor'; Price = 899.50 } | Show-ProductDetails