#include <chrono>
#include <iostream>
#include <random>
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
#include "src/args/flag_set.h"
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
#include "src/search/move.h"
#include "src/search/progress_callback.h"
#include "src/search/search.h"
#include "src/search/statistics_callback.h"
#include "src/search/transforms.h"
#include "src/state/cpu_state.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
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

auto& h2 = Heading::create("Testcase options:");

auto& testcases = FileArg<vector<CpuState>, TestcasesReader, TestcasesWriter>::create("testcases")
  .usage("<path/to/file>")
  .description("Testcases")
  .default_val({CpuState()});

auto& indices = ValueArg<set<size_t>, SpanReader<set<size_t>, Range<size_t, 1, 1024*1024>>>::create("indices")
  .usage("{ 0 1 ... 9 }")
  .description("Subset of testcase indices to use")
  .default_val({0});

auto& h3 = Heading::create("Correctness options:");

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

auto& h4 = Heading::create("Performance options:");

auto& perf = ValueArg<PerformanceTerm, PerformanceTermReader, PerformanceTermWriter>::create("perf")
	.usage("(none|size|latency)")
	.description("Performance definition")
	.default_val(PerformanceTerm::NONE);

auto& nesting_weight = ValueArg<Cost>::create("nesting_weight")	
	.usage("<int>")
	.description("Latency multiplier for nested code")
	.default_val(1);

auto& h5 = Heading::create("Sandbox options:");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
  .usage("<int>")
  .description("Maximum jumps before exit due to infinite loop")
  .default_val(1024);

auto& h6 = Heading::create("Transform options:");

auto& flags = ValueArg<FlagSet, FlagSetReader, FlagSetWriter>::create("cpu_flags")
	.usage("{ flag1 flag2 ... flagn }")
	.description("Propose instruction and opcode moves that use this CPU ID flag set")
	.default_val(FlagSet::empty());

auto& nop_percent = ValueArg<size_t>::create("nop_percent")
	.usage("<percent>")
	.description("Percent of instruction moves that produce nops")
	.default_val(0);

auto& mem_read = FlagArg::create("mem_read")
	.description("Propose instruction and opcode moves that read memory?");

auto& mem_write = FlagArg::create("mem_write")
	.description("Propose instruction and opcode moves that write memory?");

auto& callee_save = FlagArg::create("callee_save")
	.description("Propose instruction and operand moves that use callee save registers?");

auto& h7 = Heading::create("Proposal distribution options:");

auto& instruction_mass = ValueArg<size_t>::create("instruction_mass")
	.usage("<int>")
	.description("Instruction move proposal mass")
	.default_val(1);

auto& opcode_mass = ValueArg<size_t>::create("opcode_mass")
	.usage("<int>")
	.description("Opcode move proposal mass")
	.default_val(1);

auto& operand_mass = ValueArg<size_t>::create("operand_mass")
	.usage("<int>")
	.description("Operand move proposal mass")
	.default_val(1);

auto& local_swap_mass = ValueArg<size_t>::create("local_swap_mass")
	.usage("<int>")
	.description("Local swap move proposal mass")
	.default_val(1);

auto& global_swap_mass = ValueArg<size_t>::create("global_swap_mass")
	.usage("<int>")
	.description("Global swap move proposal mass")
	.default_val(1);

auto& resize_mass = ValueArg<size_t>::create("resize_mass")
	.usage("<int>")
	.description("Resize move proposal mass")
	.default_val(1);

auto& h8 = Heading::create("Search options");

auto& timeout = ValueArg<size_t>::create("timeout")
	.usage("<int>")
	.description("Number of proposals to execute before giving up")
	.default_val(1000000);

auto& beta = ValueArg<double>::create("beta")
	.usage("<double>")
	.description("Annealing constant")
	.default_val(1.0);

auto& h9 = Heading::create("Random number generator options");

auto& seed = ValueArg<default_random_engine::result_type>::create("seed")
	.usage("<int>")
	.description("Seed for random number generator; set to zero for random")
	.default_val(0);

void pcb(const ProgressCallbackData& data, void* arg) {
	ostream& os = *((ostream*)arg);
	os << "Hello, progress!" << endl;
}

void scb(const StatisticsCallbackData& data, void* arg) {
	ostream& os = *((ostream*)arg);
	os << "Hello, statistics!" << endl;
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

	if ( seed == 0 ) {
		const auto time = system_clock::now().time_since_epoch().count();
		default_random_engine gen(time);
		seed.value() = gen();
	}

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

	Transforms transforms;
	transforms.set_seed(seed)
		.set_opcode_pool(flags, nop_percent, mem_read, mem_write)
		.set_operand_pool(target, callee_save);

	Search search(&transforms);
	search.set_seed(seed)
		.set_timeout(timeout)
		.set_beta(beta)
		.set_mass(Move::OPCODE, opcode_mass)
		.set_mass(Move::OPERAND, operand_mass)
		.set_mass(Move::INSTRUCTION, instruction_mass)
		.set_mass(Move::LOCAL_SWAP, local_swap_mass)
		.set_mass(Move::GLOBAL_SWAP, global_swap_mass)
		.set_mass(Move::RESIZE, resize_mass)
		.set_progress_callback(pcb, &cout)
		.set_statistics_callback(scb, &cout);
		
	return 0;
}
