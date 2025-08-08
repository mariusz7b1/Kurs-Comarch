"""
Przykładowe realizacje zadan 4-5 z listy 4a
"""
# Zadanie 4


def cyfry_w_liczbie(n):
    lst = [int(cyfra) for cyfra in str(n)]
    return lst

# Zadanie 4 klasycznie


def cyfry_w_liczbie2(n):
    lst = []
    s1 = str(n)
    for zm1 in s1:
        lst.append(int(zm1))
    return lst


# Zadanie 5
def srednia(*args):
    if len(args) == 0:
        return None
    else:
        return sum(args) / len(args)


print(cyfry_w_liczbie(321323))
