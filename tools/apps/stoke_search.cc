// Copyright 2013-2015 Stanford University
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

#include <chrono>
#include <iostream>
#include <sys/time.h>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "src/cfg/cfg_transforms.h"
#include "src/tunit/tunit.h"
#include "src/search/progress_callback.h"
#include "src/search/statistics_callback.h"
#include "src/search/timeout.h"
#include "src/search/postprocessing.h"

#include "tools/args/search.inc"
#include "tools/args/target.inc"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/search.h"
#include "tools/gadgets/search_state.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/gadgets/transforms.h"
#include "tools/gadgets/validator.h"
#include "tools/gadgets/verifier.h"
#include "tools/io/postprocessing.h"
#include "tools/io/timeout.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace chrono;

auto& io = Heading::create("Output Options:");
auto& out = ValueArg<string>::create("out")
            .alternate("o")
            .usage("<path/to/file.s>")
            .description("File to write successful results to")
            .default_val("result.s");

auto& stats = Heading::create("Statistics Options:");
auto& stat_int =
  ValueArg<size_t>::create("statistics_interval")
  .usage("<int>")
  .description("Number of iterations between statistics updates")
  .default_val(1000000);

auto& automation_heading = Heading::create("Automation Options:");
auto& timeout_action_arg =
  ValueArg<Timeout, TimeoutReader, TimeoutWriter>::create("timeout_action")
  .usage("(quit|restart|testcase)")
  .description("Action to take when search times out")
  .default_val(Timeout::RESTART);
auto& timeout_cycles_arg =
  ValueArg<size_t>::create("timeout_cycles")
  .usage("<int>")
  .description("Number of timeout cycles to attempt before giving up")
  .default_val(16);

ValueArg<double>& exp_scaling_arg =
  ValueArg<double>::create("exp_scaling")
  .usage("<double>")
  .description("Exponential scaling factor of timeout iterations per cycle (requires timeout_action==restart)")
  .default_val(1.0);

auto& postprocessing_arg =
  ValueArg<Postprocessing, PostprocessingReader, PostprocessingWriter>::create("postprocessing")
  .usage("(none|simple|full)")
  .description("Postprocessing of the program found by STOKE (simple removes nops and unreachable blocks, and full additionally removes redundant statements without side-effects)")
  .default_val(Postprocessing::FULL);

void sep(ostream& os, string c = "*") {
  for (size_t i = 0; i < 80; ++i) {
    os << c;
  }
  os << endl << endl;
}

static Cost lowest_cost = 0;
static Cost lowest_correct = 0;
static Cost starting_cost = 0;

void show_state(const SearchState& state, ostream& os) {
  CfgTransforms tforms;

  ofilterstream<Column> ofs(os);
  ofs.filter().padding(5);

  auto best_yet = state.best_yet;
  tforms.remove_unreachable(best_yet);
  tforms.remove_nop(best_yet);

  lowest_cost = state.best_yet_cost;
  ofs << "Lowest Cost Discovered (" << state.best_yet_cost << ")" << endl;
  ofs << endl;
  ofs << best_yet.get_code();
  ofs.filter().next();

  auto best_correct = state.best_correct;
  tforms.remove_unreachable(best_correct);
  tforms.remove_nop(best_correct);

  lowest_correct = state.best_correct_cost;
  ofs << "Lowest Known Correct Cost (" << state.best_correct_cost << ")" << endl;
  ofs << endl;
  ofs << best_correct.get_code();
  ofs.filter().done();
}

void pcb(const ProgressCallbackData& data, void* arg) {
  ostream& os = *((ostream*)arg);

  os << "Progress Update: " << endl;
  os << endl;

  show_state(data.state, os);

  os << endl << endl;
  sep(os);
}

struct ScbArg {
  ostream* os;
  uint32_t** cost_stats;
};

void show_statistics(const StatisticsCallbackData& data, ostream& os) {
  os << "Iterations:                    " << data.iterations << endl;
  os << "Elapsed Time:                  " << data.elapsed.count() << "s" << endl;
  os << "Iterations/s:                  " << (data.iterations / data.elapsed.count()) << endl;
  os << endl;
  os << "Starting cost:                 " << starting_cost << endl;
  os << "Lowest cost:                   " << lowest_cost << endl;
  os << "Lowest correct cost:           " << lowest_correct << endl;
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
}

void scb(const StatisticsCallbackData& data, void* arg) {
  ScbArg sa = *((ScbArg*)arg);
  ostream& os = *(sa.os);
  uint32_t** cost_stats = sa.cost_stats;

  os << "Statistics Update: " << endl;
  os << endl;
  show_statistics(data, os);

  os << endl << endl;
  sep(os);
}

void show_final_update(const StatisticsCallbackData& stats, SearchState& state,
                       size_t total_restarts,
                       size_t total_iterations, time_point<steady_clock> start,
                       duration<double> search_elapsed) {
  auto total_elapsed = duration_cast<duration<double>>(steady_clock::now() - start);
  sep(Console::msg(), "#");
  Console::msg() << "Final update:" << endl << endl;
  Console::msg() << "Total search iterations:       " << total_iterations << endl;
  Console::msg() << "Number of attempted searches:  " << total_restarts << endl;
  Console::msg() << "Total search time:             " << search_elapsed.count() << "s" << endl;
  Console::msg() << "Total time:                    " << total_elapsed.count() << "s" << endl;
  Console::msg() << endl << "Statistics of last search" << endl << endl;
  // get the state first (because it updates some static variables)
  ostringstream stream;
  show_state(state, stream);
  show_statistics(stats, Console::msg());
  Console::msg() << endl << endl;
  Console::msg() << stream.str();
  Console::msg() << endl << endl;
  sep(Console::msg(), "#");
}

int main(int argc, char** argv) {
  const auto start = steady_clock::now();
  duration<double> search_elapsed;

  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;
  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns);

  TrainingSetGadget training_set(seed);
  SandboxGadget training_sb(training_set, aux_fxns);

  TransformsGadget transforms(target.get_code(), aux_fxns, seed);
  SearchGadget search(&transforms, seed);

  TestSetGadget test_set(seed);
  SandboxGadget test_sb(test_set, aux_fxns);
  CostFunctionGadget holdout_fxn(target, &test_sb);
  SolverGadget smt;
  ValidatorGadget validator(smt);
  VerifierGadget verifier(holdout_fxn, validator);

  if (!target.is_sound()) {
    Console::error(1) << "Target reads undefined variables, or leaves live_out undefined: " << target.which_undef_read() << endl;
  }

  ScbArg scb_arg {&Console::msg(), nullptr};
  search.set_progress_callback(pcb, &Console::msg())
  .set_statistics_callback(scb, &scb_arg)
  .set_statistics_interval(stat_int);

  size_t total_iterations = 0;
  size_t total_restarts = 0;

  string final_msg;
  SearchStateGadget state(target, aux_fxns);
  for (size_t i = 0; ; ++i) {
    CostFunctionGadget fxn(target, &training_sb);

    Console::msg() << "Running search:" << endl << endl;
    state = SearchStateGadget(target, aux_fxns);

    // Run the initial cost function
    // Used by statistics output and a sanity check
    auto initial_cost = fxn(state.current);
    if(!initial_cost.first && init_arg == Init::TARGET) {
      Console::warn() << "Initial state has non-zero correctness cost with --init target.";
    }
    starting_cost = initial_cost.second;
    lowest_cost = initial_cost.second;
    if(initial_cost.first) {
      lowest_correct = initial_cost.second;
    } else {
      lowest_correct = 0;
    }

    search.set_timeout_itr(timeout_itr_arg);
    const auto start_search = steady_clock::now();
    search.run(target, fxn, init_arg, state, aux_fxns);
    search_elapsed += duration_cast<duration<double>>(steady_clock::now() - start_search);

    total_iterations += search.get_statistics().iterations;
    total_restarts++;

    if (state.interrupted) {
      Console::msg() << endl;
      show_final_update(search.get_statistics(), state, total_restarts, total_iterations, start, search_elapsed);
      Console::msg() << "Search interrupted!" << endl;
      exit(1);
    }

    const auto verified = verifier.verify(target, state.best_correct);

    if(verifier.has_error()) {
      Console::msg() << "The verifier encountered an error:" << endl;
      Console::msg() << verifier.error() << endl;
    }

    if (!state.success) {
      Console::msg() << "Unable to discover a new correct rewrite before timing out... " << endl << endl;
    } else if (!verified) {
      Console::msg() << "Unable to verify new rewrite..." << endl << endl;
    } else {
      if (strategy_arg.value() == Strategy::NONE) {
        final_msg = "Search terminated successfully (but no verification was performed)!";
      } else {
        final_msg = "Search terminated successfully with a verified rewrite!";
      }
      break;
    }

    sep(Console::msg());

    if ((timeout_action_arg == Timeout::RESTART) && (i < timeout_cycles_arg.value())) {
      if (exp_scaling_arg.value() != 1.0) {
        timeout_itr_arg.value() = (size_t)ceil(timeout_itr_arg.value() * exp_scaling_arg.value());
        Console::msg() << "Increasing timeout iterations to " << timeout_itr_arg.value() << endl;
      }
      Console::msg() << "Restarting search:" << endl << endl;
    } else if ((timeout_action_arg == Timeout::TESTCASE) && (i < timeout_cycles_arg.value())
               && verifier.counter_example_available()) {
      Console::msg() << "Restarting search using new testcase:" << endl << endl;
      Console::msg() << verifier.get_counter_example() << endl << endl;
      training_sb.insert_input(verifier.get_counter_example());
    } else {
      show_final_update(search.get_statistics(), state, total_restarts, total_iterations, start, search_elapsed);
      Console::error(1) << "Search terminated unsuccessfully; unable to discover a new rewrite!" << endl;
    }
  }

  CfgTransforms tforms;
  if (postprocessing_arg == Postprocessing::FULL) {
    tforms.remove_redundant(state.best_correct);
    tforms.remove_unreachable(state.best_correct);
    tforms.remove_nop(state.best_correct);
  } else if (postprocessing_arg == Postprocessing::SIMPLE) {
    tforms.remove_unreachable(state.best_correct);
    tforms.remove_nop(state.best_correct);
  } else {
    // Do nothing.
  }

  auto final_stats = search.get_statistics();
  show_final_update(final_stats, state, total_restarts, total_iterations, start, search_elapsed);
  Console::msg() << final_msg << endl;

  ofstream ofs(out.value());
  ofs << state.best_correct.get_code();

  return 0;
}
