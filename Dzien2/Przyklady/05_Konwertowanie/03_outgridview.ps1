$wybrani=Get-ADUser -Filter * | select name,surname,givenname | Out-GridView -OutputMode Multiple
$wybrany=Get-ADUser -Filter * | select name,surname,givenname | Out-GridView -OutputMode Single
$wybrany | FT
$wybrani | FT
