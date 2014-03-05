#include <iostream>
#include <set>
#include <vector>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/code.h"
#include "src/args/distance.h"
#include "src/args/performance_term.h"
#include "src/args/reduction.h"
#include "src/args/reg_set.h"
#include "src/args/testcases.h"
#include "src/cfg/cfg.h"
#include "src/cost/cost.h"
#include "src/cost/cost_function.h"
#include "src/cost/distance.h"
#include "src/cost/performance_term.h"
#include "src/cost/reduction.h"
#include "src/sandbox/sandbox.h"
#include "src/state/cpu_state.h"

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

auto& h2 = Heading::create("Input options:");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
  .usage("<path/to/file>")
  .description("Testcases")
  .default_val({CpuState()});

auto& indices = ValueArg<set<size_t>, SpanReader<set<size_t>, Range<size_t, 1, 1024*1024>>>::create("indices")
  .usage("{ 0 1 ... 9 }")
  .description("Subset of testcase indices to use")
  .default_val({0});

auto& h3 = Heading::create("Optimization options:");

auto& max_cost = ValueArg<Cost>::create("max_cost")
  .usage("<int>")
  .description("Give up once cost exceeds this value")
  .default_val(0);

auto& h4 = Heading::create("Correctness options:");

auto& distance = ValueArg<Distance, DistanceReader, DistanceWriter>::create("distance")
	.usage("(hamming|ulp)")
	.description("Metric for measuring distance between states")
	.default_val(Distance::HAMMING);

auto& reduction = ValueArg<Reduction, ReductionReader, ReductionWriter>::create("reduction")
	.usage("(max|sum)")
	.description("Reduction method")
	.default_val(Reduction::SUM);

auto& sse_width = ValueArg<size_t>::create("sse_width")
	.usage("(1|2|4|8)")
	.description("Number of bytes in sse elements")
	.default_val(8);

auto& sse_count = ValueArg<size_t>::create("sse_count")
	.usage("<int>")
	.description("Number of values in sse registers")
	.default_val(1);

auto& relax_reg = FlagArg::create("relax_reg")
	.description("Allow correct values in incorrect register locations");

auto& relax_mem = FlagArg::create("relax_mem")
	.description("Allow correct values in incorrect memory locations");

auto& misalign_penalty = ValueArg<Cost>::create("misalign_penalty")	
	.usage("<int>")
	.description("Penalty for correct values in incorrect locations")
	.default_val(0);

auto& min_ulp = ValueArg<Cost>::create("min_ulp")
	.usage("<int>")
	.description("minimum ULP value to record")
	.default_val(0);

auto& h5 = Heading::create("Performance options:");

auto& perf = ValueArg<PerformanceTerm, PerformanceTermReader, PerformanceTermWriter>::create("perf")
	.usage("(none|size|latency)")
	.description("Performance definition")
	.default_val(PerformanceTerm::NONE);

auto& nesting_weight = ValueArg<Cost>::create("nesting_weight")	
	.usage("<int>")
	.description("Latency multiplier for nested code")
	.default_val(1);

auto& h6 = Heading::create("Sandbox options:");

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

 	CostFunction fxn(&sb);
	fxn.set_distance(::distance)
		.set_target(cfg_t)
		.set_sse_width(sse_width)
		.set_sse_count(sse_count)
		.set_live_out(live_out)
		.set_stack_out(stack_out)
		.set_heap_out(heap_out)
		.set_relax_reg(relax_reg)
		.set_relax_mem(relax_mem)
		.set_misalign_penalty(misalign_penalty)
		.set_min_ulp(min_ulp)
		.set_reduction(reduction);

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

	const auto res = fxn(cfg_r, max_cost.value());

	cout << "Correct: " << (res.first ? "yes" : "no") << endl;
	cout << "Cost: " << res.second << endl;
	cout << endl;

	return 0;
}
