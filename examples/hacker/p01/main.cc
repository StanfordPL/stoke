#include <cstdlib>
#include <stdint.h>

extern int32_t p01(int32_t x);

int main(int argc, char** argv) {
	const auto itr = argc > 1 ? atoi(argv[1]) : 1024;
	const auto seed = argc > 2 ? atoi(argv[2]) : 0;

	srand(seed);
	for (auto i = 0; i < itr; ++i) {
		p01(rand());
	}

	return 0;
}
