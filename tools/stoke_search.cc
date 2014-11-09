// Copyright 2014 eric schkufza
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <algorithm>
#include <chrono>
#include <iomanip>
#include <iostream>
#include <random>
#include <set>
#include <vector>
#include <sys/time.h>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/serialize/span_reader.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/x64asm/include/x64asm.h"

#include "src/args/cpu_states.h"
#include "src/args/distance.h"
#include "src/args/flag_set.h"
#include "src/args/opc_set.h"
#include "src/args/init.h"
#include "src/args/performance_term.h"
#include "src/args/reduction.h"
#include "src/args/reg_set.h"
#include "src/args/strategy.h"
#include "src/args/timeout.h"
#include "src/args/tunit.h"
#include "src/cfg/cfg.h"
#include "src/cfg/cfg_transforms.h"
#include "src/cost/cost.h"
#include "src/cost/cost_function.h"
#include "src/cost/distance.h"
#include "src/cost/performance_term.h"
#include "src/cost/reduction.h"
#include "src/sandbox/sandbox.h"
#include "src/search/move.h"
#include "src/search/progress_callback.h"
#include "src/search/search.h"
#include "src/search/search_state.h"
#include "src/search/statistics_callback.h"
#include "src/search/transforms.h"
#include "src/state/cpu_state.h"
#include "src/state/cpu_states.h"
#include "src/verifier/strategy.h"
#include "src/verifier/verifier.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace stoke;
using namespace x64asm;

auto& h1 = Heading::create("Input programs:");

auto& aux_fxns = FolderArg<TUnit, TUnitReader, TUnitWriter>::create("functions")
		.usage("<path/to/dir>")
		.description("Directory containing helper functions")
		.default_val({});

auto& target = FileArg<TUnit, TUnitReader, TUnitWriter>::create("target")
    .usage("<path/to/file.s>")
    .description("Target")
    .default_val({"anon", {{RET}}});

auto& def_in = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("def_in")
    .usage("{ %rax %rsp ... }")
    .description("Registers defined on entry")
    .default_val(RegSet::linux_call_preserved());

auto& live_out = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("live_out")
    .usage("{ %rax %rsp ... }")
    .description("Registers live on exit")
    .default_val(RegSet::linux_call_return());

auto& stack_out = FlagArg::create("stack_out")
    .description("Is stack defined on exit?");

auto& heap_out = FlagArg::create("heap_out")
    .description("Is heap defined on exit?");

auto& h2 = Heading::create("Output options:");

auto& out = ValueArg<string>::create("out")
    .alternate("o")
    .usage("<path/to/file.s>")
    .description("File to write successful results to")
    .default_val("result.s");

auto& h3 = Heading::create("Testcase options:");

auto& testcases = FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("testcases")
    .usage("<path/to/file.tc>")
    .description("Testcases");

auto& shuf_tc = FlagArg::create("shuffle_testcases")
		.description("Shuffle testcase order");

auto& training_set =
  ValueArg<set<size_t>, SpanReader<set<size_t>, Range<size_t, 0, 1024 * 1024>>>::create("training_set")
      .usage("{ 0 1 ... 9 }")
      .description("Subset of testcase indices to use for search")
      .default_val({0});

auto& test_set =
  ValueArg<set<size_t>, SpanReader<set<size_t>, Range<size_t, 0, 1024 * 1024>>>::create("test_set")
      .usage("{ 0 1 ... 9 }")
      .description("Subset of testcase indices to use for verification strategies that use testcases")
      .default_val({0});

auto& h4 = Heading::create("Correctness options:");

auto& distance = ValueArg<Distance, DistanceReader, DistanceWriter>::create("distance")
    .usage("(hamming|ulp|extension)")
    .description("Metric for measuring distance between states")
    .default_val(Distance::HAMMING);

auto& reduction = ValueArg<Reduction, ReductionReader, ReductionWriter>::create("reduction")
    .usage("(max|sum|extension)")
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

auto& sig_penalty = ValueArg<Cost>::create("sig_penalty")
    .usage("<int>")
    .description("Penalty for incorrect signal behavior")
    .default_val(0);

auto& min_ulp = ValueArg<Cost>::create("min_ulp")
    .usage("<int>")
    .description("Minimum ULP value to record")
    .default_val(0);

auto& k = ValueArg<uint32_t>::create("k")
    .usage("<int>")
    .description("Multiplier for the correctness term")
    .default_val(1);

auto& h5 = Heading::create("Performance options:");

auto& perf = ValueArg<PerformanceTerm, PerformanceTermReader, PerformanceTermWriter>::create("perf")
    .usage("(none|size|latency|extension)")
    .description("Performance definition")
    .default_val(PerformanceTerm::NONE);

auto& nesting_penalty = ValueArg<Cost>::create("nesting_penalty")
    .usage("<int>")
    .description("Latency multiplier for nested code")
    .default_val(1);

auto& h6 = Heading::create("Sandbox options:");

auto& abi_check = FlagArg::create("abi_check")
		.description("Report SIGSEGV for abi violations");

auto& max_jumps = ValueArg<size_t>::create("max_jumps")
    .usage("<int>")
    .description("Maximum jumps before exit due to infinite loop")
    .default_val(1024);

auto& h7 = Heading::create("Transform options:");

auto& flags = ValueArg<FlagSet, FlagSetReader, FlagSetWriter>::create("cpu_flags")
    .usage("{ flag1 flag2 ... flagn }")
    .description("Propose instruction and opcode moves that use this CPU ID flag set")
    .default_val(FlagSet::empty());

auto& opc_blacklist = ValueArg<set<Opcode>, OpcSetReader, OpcSetWriter>::create("opc_blacklist")
    .usage("{ opcode1 opcode2 ... opcoden; e.g., xorl or xorl_r32_r32 }")
    .description("Don't proprose any instructions from this set")
    .default_val({});

auto& nop_percent = ValueArg<size_t>::create("nop_percent")
    .usage("<percent>")
    .description("Percent of instruction moves that produce nops")
    .default_val(0);

auto& mem_read = FlagArg::create("mem_read")
    .description("Propose instruction and opcode moves that read memory?");

auto& mem_write = FlagArg::create("mem_write")
    .description("Propose instruction and opcode moves that write memory?");

auto& propose_call = FlagArg::create("propose_call")
    .description("Propose instruction and opcode moves that call functions?");

auto& callee_save = FlagArg::create("callee_save")
		.alternate("propose_callee_save")
    .description("Allow transforms to override callee-saved registers.");

auto& preserve_regs = ValueArg<RegSet, RegSetReader, RegSetWriter>::create("preserve_regs")
    .usage("{ %rax %rsp ... }")
    .description("Prevent STOKE from proposing instructions that modify these registers")
    .default_val(RegSet::linux_call_preserved());

auto& imms = ValueArg<vector<uint64_t>, SpanReader<vector<uint64_t>, Range<uint64_t, 0ull, (uint64_t)-1>>>::create("immediates")
		.usage("{ imm1 imm2 ... }")
		.description("Additional immediates to propose as operands");

auto& h8 = Heading::create("Proposal distribution options:");

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

auto& extension_mass = ValueArg<size_t>::create("extension_mass")
		.usage("<int>")
		.description("Extension move proposal mass")
		.default_val(0);

auto& h9 = Heading::create("Search options");

auto& timeout_itr = ValueArg<size_t>::create("timeout")
		.alternate("timeout_itr")
    .usage("<int>")
    .description("Number of proposals to execute before giving up")
    .default_val(1000000);

auto& timeout_sec = ValueArg<size_t>::create("timeout_time")
		.alternate("timeout_sec")
    .usage("<int>")
    .description("Maximum runtime (in seconds) before giving up")
    .default_val(1800);

auto& timeout_action = ValueArg<Timeout, TimeoutReader, TimeoutWriter>::create("timeout_action")
		.usage("(quit|testcase)")
		.description("Action to take when search times out")
		.default_val(Timeout::QUIT);

auto& timeouts = ValueArg<size_t>::create("timeout_cycles")
    .usage("<int>")
    .description("Number of timeout cycles to attempt before giving up")
    .default_val(16);

auto& stat_dir = ValueArg<string>::create("statistics_directory")
    .usage("<path/to/dir>")
    .description("Place to put files with cost function data")
    .default_val("");

auto& stat_int = ValueArg<size_t>::create("statistics_interval")
    .usage("<int>")
    .description("Number of iterations between statistics updates")
    .default_val(100000);

auto& stat_max = ValueArg<uint32_t>::create("statistics_max_cost")
    .usage("<int>")
    .description("Maximum cost to record when collecting statistics")
    .default_val(400);

auto& beta = ValueArg<double>::create("beta")
    .usage("<double>")
    .description("Annealing constant")
    .default_val(1.0);

auto& max_instrs = ValueArg<size_t>::create("max_instrs")
    .usage("<int>")
    .description("The maximum number of instructions allowed in a rewrite")
    .default_val(16);

auto& init = ValueArg<Init, InitReader, InitWriter>::create("init")
		.usage("(empty|target|previous|extension)")
    .description("Initial search state")
		.default_val(Init::EMPTY);

auto& current = FileArg<TUnit, TUnitReader, TUnitWriter>::create("current")
    .usage("<path/to/file.s>")
    .description("Current rewrite; used with --init previous")
    .default_val({"current", {{RET}}});

auto& best_yet = FileArg<TUnit, TUnitReader, TUnitWriter>::create("best_yet")
    .usage("<path/to/file.s>")
    .description("Best rewrite; used with --init previous")
    .default_val({"best_yet", {{RET}}});

auto& best_correct = FileArg<TUnit, TUnitReader, TUnitWriter>::create("best_correct")
    .usage("<path/to/file.s>")
    .description("Best correct rewrite; used with --init previous")
    .default_val({"best_correct", {{RET}}});

auto& h10 = Heading::create("Verification options:");

auto& strategy = ValueArg<Strategy, StrategyReader, StrategyWriter>::create("strategy")
    .usage("(none|hold_out|extension)")
    .description("Verification strategy")
    .default_val(Strategy::NONE);

auto& h11 = Heading::create("Random number generator options");

auto& seed = ValueArg<default_random_engine::result_type>::create("seed")
    .usage("<int>")
    .description("Seed for random number generator; set to zero for random")
    .default_val(0);

void sep(ostream& os) {
  for (size_t i = 0; i < 80; ++i) {
    os << "*";
  }
  os << endl << endl;
}

void pcb(const ProgressCallbackData& data, void* arg) {
  ostream& os = *((ostream*)arg);

	CfgTransforms tforms;

  os << "Progress Update: " << endl;
  os << endl;

  ofilterstream<Column> ofs(os);
  ofs.filter().padding(5);

	auto best_yet = data.state.best_yet;
	tforms.remove_unreachable(best_yet);
	tforms.remove_nop(best_yet);

	ofs << dec;
  ofs << "Lowest Cost Discovered (" << data.state.best_yet_cost << ")" << endl;
  ofs << endl;
  ofs << best_yet.get_code();
  ofs.filter().next();

	auto best_correct = data.state.best_correct;
	tforms.remove_unreachable(best_correct);
	tforms.remove_nop(best_correct);

	ofs << dec;
  ofs << "Lowest Known Correct Cost (" << data.state.best_correct_cost << ")" << endl;
  ofs << endl;
  ofs << best_correct.get_code();
  ofs.filter().done();

  os << endl << endl;
  sep(os);
}

struct ScbArg {
  ostream* os;
  uint32_t** cost_stats;
};

void scb(const StatisticsCallbackData& data, void* arg) {
  ScbArg sa = *((ScbArg*)arg);
  ostream& os = *(sa.os);
  uint32_t** cost_stats = sa.cost_stats;

	os << dec;

  os << "Statistics Update: " << endl;
  os << endl;
  os << "Iterations:   " << data.iterations << endl;
  os << "Elapsed Time: " << data.elapsed.count() << "s" << endl;
  os << "Iterations/s: " << (data.iterations / data.elapsed.count()) << endl;
  os << endl;

  ofilterstream<Column> ofs(os);
  ofs.filter().padding(5);

  Statistics total;
  for (size_t i = 0; i < 6; ++i) {
    total += data.move_statistics[i];
  }

  ofs << "Move Type" << endl;
  ofs << endl;
  ofs << "Instruction" << endl;
  ofs << "Opcode" << endl;
  ofs << "Operand" << endl;
  ofs << "Resize" << endl;
  ofs << "Local Swap" << endl;
  ofs << "Global Swap" << endl;
	ofs << "Extension" << endl;
  ofs << endl;
  ofs << "Total";
  ofs.filter().next();

  ofs << "Proposed" << endl;
  ofs << endl;
  for (size_t i = 0; i < (size_t) Move::NUM_MOVES; ++i) {
    ofs << 100 * (double)data.move_statistics[i].num_proposed / data.iterations << "%" << endl;
  }
  ofs << endl;
  ofs << 100 * (double)total.num_proposed / data.iterations << "%";
  ofs.filter().next();

  ofs << "Succeeded" << endl;
  ofs << endl;
  for (size_t i = 0; i < (size_t) Move::NUM_MOVES; ++i) {
    ofs << 100 * (double)data.move_statistics[i].num_succeeded / data.iterations << "%" << endl;
  }
  ofs << endl;
  ofs << 100 * (double)total.num_succeeded / data.iterations << "%";
  ofs.filter().next();

  ofs << "Accepted" << endl;
  ofs << endl;
  for (size_t i = 0; i < (size_t) Move::NUM_MOVES; ++i) {
    ofs << 100 * (double)data.move_statistics[i].num_accepted / data.iterations << "%" << endl;
  }
  ofs << endl;
  ofs << 100 * (double)total.num_accepted / data.iterations << "%";
  ofs.filter().done();

  os << endl << endl;
  sep(os);

  if(stat_dir.value() != "" && cost_stats != NULL) {
    struct timeval tv;
    gettimeofday(&tv, 0);
    stringstream filename;
    filename << stat_dir.value() << "/" << tv.tv_sec << setfill('0') << setw(6) << tv.tv_usec;

    ofstream stats;
    stats.open(filename.str());
    if(!stats.is_open()) {
      cerr << "Could not open " << filename << " for writing statistics." << endl;
    }

    for(size_t i = 0; i <= stat_max.value(); ++i) {
      for(size_t j = 0; j <= stat_max.value(); ++j) {
        if(cost_stats[i][j])
          stats << i << " " << j << " " << cost_stats[i][j] << endl;
      }
    }

    stats.close();
  }
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

	if (callee_save.value()) {
		preserve_regs.value() = RegSet::empty();
	}

  if (seed == 0) {
    const auto time = system_clock::now().time_since_epoch().count();
    default_random_engine gen(time);
    seed.value() = gen();
  }

  Cfg cfg_t(target.value().code, def_in, live_out);

	if (shuf_tc) {
		shuffle(testcases.value().begin(), testcases.value().end(), default_random_engine());
	}

  Sandbox training_sb;
  training_sb.set_abi_check(abi_check)
		.set_max_jumps(max_jumps);
	for (const auto& fxn : aux_fxns.value()) {
		training_sb.insert_function(Cfg(fxn.code, RegSet::empty(), RegSet::empty()));
	}
  Sandbox test_sb;
  test_sb.set_abi_check(abi_check)
		.set_max_jumps(max_jumps);
	for (const auto& fxn : aux_fxns.value()) {
		test_sb.insert_function(Cfg(fxn.code, RegSet::empty(), RegSet::empty()));
	}

  for (size_t i = 0, ie = testcases.value().size(); i < ie; ++i) {
    if (training_set.value().find(i) != training_set.value().end()) {
      training_sb.insert_input(testcases.value()[i]);
    } 
		if (test_set.value().find(i) != test_set.value().end()) {
			test_sb.insert_input(testcases.value()[i]);
		}
  }

  Transforms transforms;
  transforms.set_seed(seed)
  .set_opcode_pool(flags, nop_percent, mem_read, mem_write, propose_call, opc_blacklist)
  .set_operand_pool(target.value().code, preserve_regs.value());
	for (const auto& imm : imms.value()) {
		transforms.insert_immediate(imm);
	}
	for (const auto& fxn : aux_fxns.value()) {
		transforms.insert_label(fxn.code[0].get_operand<Label>(0));
	}

  ScbArg scb_arg;
  scb_arg.os = &cout;
  scb_arg.cost_stats = NULL;

  Search search(&transforms);
  search.set_seed(seed)
	.set_max_instrs(max_instrs)
  .set_timeout_itr(timeout_itr)
	.set_timeout_sec(timeout_sec)
  .set_beta(beta)
  .set_mass(Move::OPCODE, opcode_mass)
  .set_mass(Move::OPERAND, operand_mass)
  .set_mass(Move::INSTRUCTION, instruction_mass)
  .set_mass(Move::LOCAL_SWAP, local_swap_mass)
  .set_mass(Move::GLOBAL_SWAP, global_swap_mass)
  .set_mass(Move::RESIZE, resize_mass)
	.set_mass(Move::EXTENSION, extension_mass)
  .set_progress_callback(pcb, &cout)
  .set_statistics_callback(scb, &scb_arg)
  .set_statistics_interval(stat_int);

	CostFunction hold_out_fxn(&test_sb);
	hold_out_fxn.set_distance(::distance)
	.set_target(cfg_t, stack_out, heap_out)
	.set_sse(sse_width, sse_count)
	.set_relax(relax_reg, relax_mem)
	.set_penalty(misalign_penalty, sig_penalty, 0)
	.set_min_ulp(min_ulp)
  .set_k(k.value())
	.set_reduction(reduction)
	.set_performance_term(PerformanceTerm::NONE);

	Verifier verifier(hold_out_fxn);
	verifier.set_strategy(strategy);

	SearchState state;
	for (size_t i = 0; ; ++i) {
		CostFunction fxn(&training_sb);
		fxn.set_distance(::distance)
		.set_target(cfg_t, stack_out, heap_out)
		.set_sse(sse_width, sse_count)
		.set_relax(relax_reg, relax_mem)
		.set_penalty(misalign_penalty, sig_penalty, nesting_penalty)
    .set_k(k.value())
		.set_min_ulp(min_ulp)
		.set_reduction(reduction)
		.set_performance_term(perf);

    if(stat_dir.value() != "") {
      if(!scb_arg.cost_stats) {
        cout << "Initialize cost_stats with size " << stat_max.value() + 1 << endl;
        scb_arg.cost_stats = new uint32_t*[stat_max.value()+1];
        for(size_t i = 0; i <= stat_max.value(); ++i) {
          scb_arg.cost_stats[i] = new uint32_t[stat_max.value()+1];
          for(size_t j = 0; j <= stat_max.value(); ++j)
            scb_arg.cost_stats[i][j] = 0;
        }
      }

      cout << "Setting up statistics" << endl;
      cout << "address is " << scb_arg.cost_stats << endl;
      fxn.set_statistics(scb_arg.cost_stats, stat_max.value()+1);
    }

		cout << "Running search:" << endl << endl;
		
		state.current = Cfg(current.value().code, def_in, live_out);
		state.best_yet = Cfg(best_yet.value().code, def_in, live_out);
		state.best_correct = Cfg(best_correct.value().code, def_in, live_out);

		search.run(cfg_t, fxn, init, state);
		const auto verified = verifier.verify(cfg_t, state.best_correct);

		if (!state.success) {
			cout << "Unable to discover a new correct rewrite before timing out... " << endl << endl;
		} else if (!verified) {
			cout << "Unable to verify new rewrite..." << endl << endl;
		} else {
			cout << "Search terminated successfully with a verified rewrite!" << endl;
			break;
		} 

		sep(cout);

		if ((timeout_action == Timeout::RESTART) && (i < timeouts.value())) {
			cout << "Restarting search:" << endl << endl;
		} else if ((timeout_action == Timeout::TESTCASE) && (i < timeouts.value()) && verifier.counter_example_available()) {
			cout << "Restarting search using new testcase:" << endl << endl;
			cout << verifier.get_counter_example() << endl << endl;
			training_sb.insert_input(verifier.get_counter_example());
		} else {
			cout << "Search terminated unsuccessfully; unable to discover a new rewrite!" << endl;
			return 1;
		}
	}

	CfgTransforms tforms;
	tforms.remove_unreachable(state.best_correct);
	tforms.remove_nop(state.best_correct);

	TUnit rewrite;
	rewrite.name = target.value().name;
	rewrite.code = state.best_correct.get_code();

  ofstream ofs(out.value());
  TUnitWriter()(ofs, rewrite);

  return 0;
}
