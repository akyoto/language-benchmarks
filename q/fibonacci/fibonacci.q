import sys

main() {
	n := 100000000

	mut b = 0
	mut c = 1

	for 1..n {
		a := b
		b = c
		c = a + b
	}

	sys.exit(c)
}
