
#include <random>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

/** For random number generators. */
default_random_engine gen;
uniform_int_distribution<uint64_t> unif;

auto& h1 = Heading::create("Test case generator");
auto& num_tcs = ValueArg<size_t>::create("count")
                .usage("<int>")
                .description("How many test cases to generate")
                .default_val(1);


/** Add a randomly-generated string into the test case's memory. */
uint64_t add_string(CpuState& tc, size_t length, size_t null_size = 1) {

  for(size_t i = 0; i < 100; ++i) {
    /** Guess a starting address that's OK. */
    uint64_t start = unif(gen);

    /** Check that [start, start + length] overlaps no segment. */
    bool ok = true;
    for(uint64_t j = start; j < start + length; ++j) {
      if(tc.in_range(j)) {
        ok = false;
        break;
      }
    }
    if(!ok)
      continue;

    /** Fill a new segment with a random string. */
    Memory m;
    m.resize(start, length);

    for(uint64_t j = start; j < start + length; ++j) {
      m.set_valid(j, true);
      m[j] = unif(gen);
    }
    for(uint64_t j = start+length-null_size; j < start+length;++j) {
      m.set_valid(j, true);
      m[j] = 0;
    }

    /** Add the segment. */
    tc.segments.push_back(m);
    return start;
  }

  return 0;

}

int main(int argc, char** argv) {

  CommandLineConfig::strict_with_convenience(argc, argv);

  for(size_t i = 0; i < num_tcs.value(); ++i) {

    size_t length = i/2 + 1;
    CpuState tc;

    uint64_t str1 = add_string(tc, length);
    tc.update(rdi, str1);

    uint64_t str2 = add_string(tc, length);
    tc.update(rsi, str2);

    cout << "Testcase " << (i+1) << ":" << endl << endl;
    cout << tc << endl << endl;

  }

}
