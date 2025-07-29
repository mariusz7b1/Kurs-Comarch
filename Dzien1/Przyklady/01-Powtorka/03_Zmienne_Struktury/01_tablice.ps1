#  definicja pustej tablicy, uniwersalne
$m=@()

$m=(“a”,1),(“b”,2),("c",1)

$m[0]
$m[1][0]
$m.Count  
# wynik 3
$m[1].Count


# nie dodaje tablicy tylko pojedyncze elementy
$m1=$m
$m1+=(“d”,”4”)
$m1[3]
$m1[3][0]
$m1.count

$m+=,(“d”,”4”)

$m[3][1]
$m[0]
$m.Count  

$m1=@()
$m1+=,(1,2,3)
$m1.Count

