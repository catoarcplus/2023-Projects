from cs50 import get_int

# get height of pyramid between 1-8
while True:
    n = get_int('Height: ')
    if n > 0 and n < 9:
        break

# printing rows,spaces and the blocks
for i in range(0, n, 1):
    for j in range(0, n+i+3, 1):
        if (j == n or j == n+1 or i+j < n-1):
            print(' ', end='')
        else:
            print('#', end='')
    print()