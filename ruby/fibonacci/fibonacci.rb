n = 100000000

a = 0
b = 0
c = 1

1.upto(n) do
	a = b
	b = c
	c = a + b
end

puts c
