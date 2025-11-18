#LAB_1B
#Zadanie 1

1.
Get-Help *resolve* 
Get-Command *resolve* 
Resolve-DNSName www.wp.pl

2.
Get-Help *adapter* 
Get-Command *adapter* 
Get-Command -Verb Set -Noun *adapter* 
Set-NetAdapter ‑MACAddress 

3.
Get-Help *sched* 
Get-Command *sched* 
Enable-ScheduledTask

4.
Get-Command *cache* 
Get-Help *cache* 
Clear-BCCache 

5. 
Get-Help *firewall*
Get-Command *firewall* 
Get-Help *rule*
Get-Command *rule* 
Get-NetFirewallRule

6.
Get-Help *address* 
Get-NetIPAddress 

7.
Get-Command –Verb suspend
Suspend-PrintJob


ZADANIE 2
Get-NetFirewallRule -Enabled True
Get-NetIPAddress –AddressFamily IPv4
Set-Service –Name BITS –StartupType Automatic 
Get-EventLog –LogName Security –Newest 10 