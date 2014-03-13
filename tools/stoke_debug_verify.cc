#include <iostream>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/code.h"
#include "src/args/reg_set.h"
#include "src/args/strategy.h"
#include "src/args/testcases.h"
#include "src/cfg/cfg.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"
#include "src/state/state_writer.h"
#include "src/verifier/strategy.h"
#include "src/verifier/verifier.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input programs:");

auto& target = FileArg<Code, CodeReader, CodeWriter>::create("target")
  .usage("<path/to/file>")
  .description("Target")
  .default_val({{RET}});

auto& rewrite = FileArg<Code, CodeReader, CodeWriter>::create("rewrite")
  .usage("<path/to/file>")
  .description("Rewrite")
  .default_val({{RET}});

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
  .usage("{ rax rsp ... }")
  .description("Registers defined on entry")
  .default_val(RegSet::linux_caller_save());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
  .usage("{ rax rsp ... }")
  .description("Registers live on exit")
  .default_val(RegSet::empty() + rax);

auto& stack_out = FlagArg::create("stack_out")
  .description("Is stack defined on exit?");

auto& heap_out = FlagArg::create("heap_out")
  .description("Is heap defined on exit?");

auto& h2 = Heading::create("Verification options:");

auto& strategy = ValueArg<Strategy, StrategyReader, StrategyWriter>::create("strategy")
	.usage("(regression|formal|random)")
	.description("Verification strategy")
	.default_val(Strategy::REGRESSION);

auto& h3 = Heading::create("Regression options:");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
  .usage("<path/to/file>")
  .description("Testcases")
  .default_val({CpuState()});

auto& indices = ValueArg<set<size_t>, SpanReader<set<size_t>, Range<size_t, 1, 1000000>>>::create("indices")
  .usage("{ 0 1 ... 9 }")
  .description("Subset of testcase indices to use")
  .default_val({0});

auto& h4 = Heading::create("Sandbox options:");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
  .usage("<int>")
  .description("Maximum jumps before exit due to infinite loop")
  .default_val(1024);

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

	Cfg cfg_t(target, def_in, live_out);
	Cfg cfg_r(rewrite, def_in, live_out);

	Sandbox sb;
	sb.set_max_jumps(max_jumps);

	for (size_t i = 0, ie = testcases.value().size(); i < ie; ++i ) {
		if (indices.value().find(i) != indices.value().end()) {
			sb.insert_input(testcases.value()[i]);
		}
	}

	Verifier verifier(&sb);
	verifier.set_strategy(strategy);

	ofilterstream<Column> os(cout);
	os.filter().padding(3);

	os << "Target" << endl;
	os << endl;
	os << target.value() << endl;
	os.filter().next();

	os << "Rewrite" << endl;
	os << endl;
	os << rewrite.value() << endl;
	os.filter().done();

	const auto res = verifier.verify(cfg_t, cfg_r);
	
	cout << "Equivalent: " << (res ? "yes" : "no") << endl;

	if ( !res ) {
		cout << "Counter example: " << endl;
		cout << endl;
		cout << verifier.get_counter_example();
	}
	
  return 0;
}

