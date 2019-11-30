n = 1000000000

a = 0
b = 0
c = 1

0.upto(n) do
	a = b
	b = c
	c = a + b
end
