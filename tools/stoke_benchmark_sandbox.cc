#include <chrono>
#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/testcases.h"
#include "src/args/tunit.h"
#include "src/state/cpu_state.h"
#include "src/sandbox/sandbox.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input program:");

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
  .usage("<path/to/file>")
  .description("Target code")
  .default_val({"auto", {{RET}}});

auto& h2 = Heading::create("Testcases:");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
  .usage("<path/to/file>")
  .description("Testcases")
  .default_val({CpuState()});

auto& h3 = Heading::create("Sandboxing options:");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
  .usage("<int>")
  .description("Maximum jumps before exit due to infinite loop")
  .default_val(1024);

auto& h4 = Heading::create("Measurement options:");

auto& itr = ValueArg<size_t>::create("iterations")
  .description("Number of iterations to run for")
	.default_val(1000000);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  Sandbox sb;
  sb.set_max_jumps(max_jumps);
	for ( const auto& tc : testcases.value() ) {
		sb.insert_input(tc);
	}

	Cfg cfg{target.value().code, RegSet::empty(), RegSet::empty()};

	cout << "Sandbox::run()..." << endl;

	const auto start = steady_clock::now();
	for ( size_t i = 0; i < itr; ++i ) {
		sb.run(cfg);
	}
	const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
	const auto rps = itr / dur.count();
	
	cout << "Runtime:    " << dur.count() << " seconds" << endl;
	cout << "Throughput: " << rps << " / second" << endl;

  return 0;
}

