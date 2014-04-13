#include <stddef.h>
#include <stdint.h>

size_t popcnt(uint64_t x) {
	int res = 0;
	for ( ; x > 0; x >>= 1 ) {
		res += x & 0x1ull;
	}
	return res;    
}
