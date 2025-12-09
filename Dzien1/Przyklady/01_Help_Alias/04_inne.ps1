#whatif
Stop-process -name no* -whatif
Stop-process -name notepad -confirm:$true

#:)
New-TemporaryFile

