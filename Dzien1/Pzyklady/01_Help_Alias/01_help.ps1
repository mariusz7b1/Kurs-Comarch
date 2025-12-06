$PSVersionTable

# transcript
Start-Transcript d:\dzien1.txt 

Stop-Transcript

#Help
Get-Help *net* -Category cmdlet
Get-help Get-ChildItem -ShowWindow
Get_help  *process
Get-Help *process*


#Finding (Get-command)
Get-Command *net*
Get-Command -Verb Get -Noun event* 

#PS CORE
Get-winEvent -logName application