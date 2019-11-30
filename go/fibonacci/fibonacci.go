package main

import "os"

func main() {
	n := 100000000

	a := 0
	b := 0
	c := 1

	for i := 1; i < n; i++ {
		a = b
		b = c
		c = a + b
	}

	os.Exit(c)
}
