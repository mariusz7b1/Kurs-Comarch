# calculated property 
$prop = @{n="Size(KB)";e={$_.Length/1KB}}
$prop
Get-ChildItem C:\Windows -File | Format-Table Name,Length
Get-ChildItem C:\Windows -File | Format-Table Name,$prop
