#Aliasy
dir
Get-ChildItem
Get-Alias dir

New-Alias list Get-ChildItem
list
Get-Alias -definition Get-ChildItem


Remove-Item Alias:list
# remove-alias	

Get-Alias -definition Get-ChildItem

