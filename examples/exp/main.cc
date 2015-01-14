#include <cstdlib>
#include <stdint.h>

#include "sym_table.h"

extern double exp(double val, uint64_t* st);

using namespace std;

int main(int argc, char** argv) {
	const auto itr = atoi(argv[1]);

	const auto min = -2.6;
	const auto max = 0.12;
	const auto delta = (max - min)/itr;

	for (double val = min; val <= max; val += delta) {
		exp(val, sym_table);
	}
	exp(max, sym_table);

	return 0;
}
