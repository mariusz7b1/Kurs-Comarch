# 1. Swap variables
x, y = 5, 10
y, x = x, y

# 2. Chained comparison
x = 5
if -10 < x < 10:
    print("x is in range")

# 3. Tuple/list unpacking
a, b, c = [1, 2, 3]

# 4. Star unpacking
a, *middle, c = [1, 2, 3, 4, 5]
pass

# 5. Reverse list
my_list = [1, 2, 3, 4]
reversed_list = my_list[::-1]

# 6. Ternary operator
code = 200
status = "OK" if code == 200 else "FAIL"

# 7. Remove duplicates with set
unique = list(set([1, 2, 2, 3, 3]))
