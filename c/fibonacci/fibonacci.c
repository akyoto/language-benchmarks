#include <stdlib.h>

int main() {
	int n = 100000000;

	int a = 0;
	int b = 0;
	int c = 1;

	for(int i = 1; i < n; i++) {
		a = b;
		b = c;
		c = a + b;
	}

	exit(c);
}
