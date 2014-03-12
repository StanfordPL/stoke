#include <algorithm>
#include <chrono>
#include <iostream>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "src/args/testcases.h"
#include "src/state/cpu_state.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
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

auto& h2 = Heading::create("Measurement options:");

auto& itr = ValueArg<size_t>::create("iterations")
  .description("Number of iterations to run for")
	.default_val(1000000);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

	const auto index = min(testcases.value().size()-1, idx.value());
	auto& s1 = testcases.value()[index];
	const auto s2 = s1;

	cout << "Memory::copy_defined()..." << endl;

	const auto start = steady_clock::now();
	for ( size_t i = 0; i < itr; ++i ) {
		s1.stack.copy_defined(s2.stack);
		s1.heap.copy_defined(s2.heap);
	}
	const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
	const auto cps = itr / dur.count();

	cout << "Runtime:    " << dur.count() << " seconds" << endl;
	cout << "Throughput: " << cps << " / second" << endl;

	return 0;
}

