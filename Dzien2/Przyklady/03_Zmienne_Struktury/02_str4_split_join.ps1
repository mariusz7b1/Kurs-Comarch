
$tekst1="ala ma kota ale kot nie lubi ali"
$tab_stringów=$tekst1.Split()

$tekst2 = [string]::Join("-", $tab_stringów)
Write-Host $tekst2


$tekst3 = $tab_stringów -join "-"
Write-Host $tekst3


