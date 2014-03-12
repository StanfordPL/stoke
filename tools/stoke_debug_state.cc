#include <algorithm>
#include <iostream>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/args/testcases.h"
#include "src/state/cpu_state.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

auto& h1 = Heading::create("Input state");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
  .usage("<path/to/file>")
  .description("Testcases")
  .default_val({CpuState()});

auto& idx = ValueArg<size_t>::create("index")
  .usage("<int>")
  .description("Testcase index")
  .default_val(0);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

	const auto index = min(testcases.value().size()-1, idx.value());
	auto& s1 = testcases.value()[index];

	cout << "Original state: " << endl;
	cout << endl;
	cout << s1 << endl;
	cout << endl;

	const auto s2 = s1 ^ s1;

	cout << "XOR'ed with itself: " << endl;
	cout << endl;
	cout << s2 << endl;
	cout << endl;

	s1.stack.copy_defined(s2.stack);
	s1.heap.copy_defined(s2.heap);

	cout << "Copy defined state from XOR'ed state" << endl;
	cout << endl;
	cout << s1 << endl;
	cout << endl;

	return 0;
}
