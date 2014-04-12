#include <cstdlib>
#include <stdint.h>

using namespace std;

extern int popcnt(uint64_t x);

int main(int argc, char** argv) {
	const auto itr = atoi(argv[1]);

	auto ret = 0;
	for ( auto i = 0; i < itr; ++i ) {
		ret += popcnt(i);
	}

	return ret;
}
