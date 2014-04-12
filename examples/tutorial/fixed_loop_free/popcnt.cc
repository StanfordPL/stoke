#include <stdint.h>

int popcnt(uint64_t x) {
	int res = 0;
	for ( ; x > 0; x >>= 1 ) {
		res += x & 0x1ull;
	}
	return res;    
}
