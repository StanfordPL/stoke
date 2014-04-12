#include <stdint.h>

#include "sym_table.h"

extern double tan(double val, uint64_t* st);

int main() {
	for ( double val = -1.5; val < 1.5; val += 0.01 ) {
		tan(val, sym_table);
	}

	return 0;
}
