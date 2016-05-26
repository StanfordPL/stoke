
#include <random>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"
#include "src/state/cpu_state.h"
#include "src/stategen/stategen.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

/** For random number generators. */
default_random_engine gen;
uniform_int_distribution<uint64_t> unif;

auto& h1 = Heading::create("Test case generator");

auto& max_len = ValueArg<size_t>::create("max_len")
                .usage("<int>")
                .description("Max string length")
                .default_val(8);

auto& tc_count = ValueArg<size_t>::create("count")
                 .usage("<int>")
                 .description("How many test cases to generate for each length")
                 .default_val(4);


/** Add a randomly-generated string into the test case's memory. */
uint64_t add_string(CpuState& tc, size_t length, size_t null_size = 1) {

  for (size_t i = 0; i < 100; ++i) {
    /** Guess a starting address that's OK. */
    uint64_t start = unif(gen);

    /** Check that [start, start + length] overlaps no segment. */
    bool ok = true;
    for (uint64_t j = start; j < start + length; ++j) {
      if (tc.in_range(j)) {
        ok = false;
        break;
      }
    }
    if (!ok)
      continue;

    /** Fill a new segment with a random string. */
    Memory m;
    m.resize(start, length);

    for (uint64_t j = start; j < start + length; ++j) {
      m.set_valid(j, true);
      m[j] = unif(gen);
    }
    for (uint64_t j = start+length-null_size; j < start+length; ++j) {
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

  Sandbox sb;
  StateGen sg(&sb);

  for (size_t i = 0; i < max_len.value()*tc_count.value(); ++i) {

    size_t length = i/tc_count.value() + 1;

    CpuState tc;
    sg.get(tc);

    uint64_t str1 = add_string(tc, length);
    tc.update(rdi, str1);

    uint64_t str2 = add_string(tc, length);
    tc.update(rsi, str2);

    tc.update(rsp, unif(gen));

    cout << "Testcase " << (i+1) << ":" << endl << endl;
    cout << tc << endl << endl;

  }

}
