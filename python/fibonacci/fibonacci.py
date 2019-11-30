n = 100000000
a, b = 0, 1

for i in range(1, n):
	a, b = b, a + b

print(b)
