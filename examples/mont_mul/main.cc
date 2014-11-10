#include <stdint.h>

#include <chrono>
#include <random>

using namespace std;
using namespace std::chrono;

extern void mont_mul(uint64_t c1, uint64_t np, uint32_t ml, uint32_t mh, uint64_t c0);

int main() {
  const auto seed = system_clock::now().time_since_epoch().count();
  default_random_engine gen(seed);

  for (auto i = 0; i < 1024; ++i) {
    mont_mul(gen(), gen(), gen(), gen(), gen());
  }

  return 0;
}
