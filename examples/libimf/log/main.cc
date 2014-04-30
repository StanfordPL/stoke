#include <stdint.h>

#include "sym_table.h"

extern double log(double val, uint64_t* st);

int main() {
	for ( double val = 1.0; val < 10.0; val += 0.01 ) {
		log(val, sym_table);
	}

	return 0;
}
