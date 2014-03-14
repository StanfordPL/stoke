#include <chrono>
#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/reg_set.h"
#include "src/args/tunit.h"
#include "src/cfg/cfg.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input program:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
  .usage("<path/to/file>")
  .description("Target code")
  .default_val({"anon",{{RET}}});

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
  .usage("{ rax rsp ... }")
  .description("Registers defined on entry")
  .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
  .usage("{ rax rsp ... }")
  .description("Registers live on exit")
  .default_val(RegSet::empty() + rax);

auto& h2 = Heading::create("Measurement options:");

auto& itr = ValueArg<size_t>::create("iterations")
  .description("Number of iterations to run for")
	.default_val(1000000);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

	Cfg cfg(target.value().code, def_in, live_out);

	cout << "Cfg::recompute()..." << endl;

	const auto start = steady_clock::now();
	for ( size_t i = 0; i < itr; ++i ) {
		cfg.recompute();
	}
	const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
	const auto rps = itr / dur.count();

	cout << "Runtime:    " << dur.count() << " seconds" << endl;
	cout << "Throughput: " << rps << " / second" << endl;

  return 0;
}


