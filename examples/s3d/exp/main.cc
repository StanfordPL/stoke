#include <stdint.h>

#include "sym_table.h"

extern double exp(double val, uint64_t* st);

int main() {
	for ( double val = -3.0; val < 0.0; val += 0.01 ) {
		exp(val, sym_table);
	}

	return 0;
}
