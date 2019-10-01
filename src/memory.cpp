#include <stdlib.h>

void *operator new(unsigned long s) {
	return calloc(1, s);
}

void operator delete(void *p, unsigned long) {
	free(p);
}
