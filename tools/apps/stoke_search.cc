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
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "src/cfg/cfg_transforms.h"
#include "src/expr/expr.h"
#include "src/expr/expr_parser.h"
#include "src/tunit/tunit.h"
#include "src/search/progress_callback.h"
#include "src/search/statistics_callback.h"
#include "src/search/failed_verification_action.h"
#include "src/search/postprocessing.h"

#include "tools/args/search.inc"
#include "tools/args/target.inc"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/correctness_cost.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/search.h"
#include "tools/gadgets/search_state.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/gadgets/transform_pools.h"
#include "tools/gadgets/validator.h"
#include "tools/gadgets/verifier.h"
#include "tools/gadgets/weighted_transform.h"
#include "tools/io/postprocessing.h"
#include "tools/io/failed_verification_action.h"

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

auto& machine_output_arg = ValueArg<string>::create("machine_output")
  .usage("<path/to/file.s>")
  .description("Machine-readable output (result and statistics)");

auto& stats = Heading::create("Statistics Options:");
auto& stat_int =
  ValueArg<size_t>::create("statistics_interval")
  .usage("<int>")
  .description("Number of iterations between statistics updates")
  .default_val(1000000);

auto& automation_heading = Heading::create("Automation Options:");

auto& timeout_iterations_arg =
  cpputil::ValueArg<size_t>::create("timeout_iterations")
  .usage("<int>")
  .description("Total number of iterations before giving up (across all cycles)")
  .default_val(100000000);

auto& timeout_seconds_arg =
  cpputil::ValueArg<double>::create("timeout_seconds")
  .usage("<double>")
  .description("Total number of seconds before giving up (across all cycles), or 0 for no timeout")
  .default_val(0);

auto& failed_verification_action =
  ValueArg<FailedVerificationAction, FailedVerificationActionReader, FailedVerificationActionWriter>::create("failed_verification_action")
  .usage("(quit|add_counterexample)")
  .description("Action to take when the verification at the end fails")
  .default_val(FailedVerificationAction::ADD_COUNTEREXAMPLE);

auto& cycle_timeout_arg =
  ValueArg<string, cpputil::LineReader<>>::create("cycle_timeout")
  .usage("<string>")
  .description("The timeout (as number of iterations) per cycle.  Can be a comma-separated list, where the first element is used for the first cycle, and so on.  Can also be an expression involving the variable 'i' that refers to the current cycle (starting at 1); expressions include integer constants, the variable 'i', and binary operators: +, -, *, /, ** (exponentiation), >>, << (shifts), ==, !=, <=, <, >, >= (comparisons), % (modulo), |, & (binary and/or).  The last expression in the list is used for all following cycles.")
  .default_val("10000, 10000, 10000, 10000, 10000, 2**i * 1000");

auto& postprocessing_arg =
  ValueArg<Postprocessing, PostprocessingReader, PostprocessingWriter>::create("postprocessing")
  .usage("(none|simple|full)")
  .description("Postprocessing of the program found by STOKE (simple removes nops and unreachable blocks, and full additionally removes redundant statements without side-effects)")
  .default_val(Postprocessing::FULL);

auto& no_progress_update_arg =
  cpputil::FlagArg::create("no_progress_update")
  .description("Don't show a progress update whenever a new best program is discovered");

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
  ofilterstream<Column> ofs(os);
  ofs.filter().padding(5);

  auto best_yet = state.best_yet;
  CfgTransforms::remove_unreachable(best_yet);
  CfgTransforms::remove_nop(best_yet);

  lowest_cost = state.best_yet_cost;
  ofs << "Lowest Cost Discovered (" << state.best_yet_cost << ")" << endl;
  ofs << endl;
  ofs << best_yet.get_code();
  ofs.filter().next();

  auto best_correct = state.best_correct;
  CfgTransforms::remove_unreachable(best_correct);
  CfgTransforms::remove_nop(best_correct);

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

  const WeightedTransform* transform = static_cast<const WeightedTransform*>(data.transform);

  Statistics total;
  for (size_t i = 0; i < transform->size(); ++i) {
    total += data.move_statistics[i];
  }

  ofs << "Move Type" << endl;
  ofs << endl;
  for (size_t i = 0; i < transform->size(); ++i) {
    ofs << transform->get_transform(i)->get_name() << endl;
  }
  ofs << endl;
  ofs << "Total";
  ofs.filter().next();

  ofs << "Proposed" << endl;
  ofs << endl;
  for (size_t i = 0; i < transform->size(); ++i) {
    ofs << 100 * (double)data.move_statistics[i].num_proposed / data.iterations << "%" << endl;
  }
  ofs << endl;
  ofs << 100 * (double)total.num_proposed / data.iterations << "%";
  ofs.filter().next();

  ofs << "Succeeded" << endl;
  ofs << endl;
  for (size_t i = 0; i < transform->size(); ++i) {
    ofs << 100 * (double)data.move_statistics[i].num_succeeded / data.iterations << "%" << endl;
  }
  ofs << endl;
  ofs << 100 * (double)total.num_succeeded / data.iterations << "%";
  ofs.filter().next();

  ofs << "Accepted" << endl;
  ofs << endl;
  for (size_t i = 0; i < transform->size(); ++i) {
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
                       duration<double> search_elapsed,
                       bool verified,
                       bool timeout) {
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

  // output machine-readable result
  if (machine_output_arg.has_been_provided()) {
    auto code_to_string = [](x64asm::Code code) {
      stringstream ss;
      ss << code;
      auto res = regex_replace(ss.str(), regex("\n"), "\\n");
      return res;
    };

    ofstream f;
    f.open(machine_output_arg.value());
    f << "{" << endl;
    f << "  \"success\": " << (state.success ? "true" : "false") << "," << endl;
    f << "  \"interrupted\": " << (state.interrupted ? "true" : "false") << "," << endl;
    f << "  \"timeout\": " << (timeout ? "true" : "false") << "," << endl;
    f << "  \"verified\": " << (verified ? "true" : "false") << "," << endl;
    f << "  \"statistics\": {" << endl;
    f << "    \"total_iterations\": " << total_iterations << "," << endl;
    f << "    \"total_attempted_searches\": " << total_restarts << "," << endl;
    f << "    \"total_search_time\": " << search_elapsed.count() << "," << endl;
    f << "    \"total_time\": " << total_elapsed.count() << endl;
    f << "  }," << endl;
    f << "  \"best_yet\": {" << endl;
    f << "    \"cost\": " << state.best_yet_cost << "," << endl;
    f << "    \"code\": \"" << code_to_string(state.best_yet.get_code()) << "\"" << endl;
    f << "  }," << endl;
    f << "  \"best_correct\": {" << endl;
    f << "    \"cost\": " << state.best_correct_cost << "," << endl;
    f << "    \"code\": \"" << code_to_string(state.best_correct.get_code()) << "\"" << endl;
    f << "  }" << endl;
    f << "}" << endl;
    f.close();
  }
}

vector<string>& split(string& s, const string& delim, vector<string>& result) {
  auto pos = string::npos;
  while ((pos = s.find(delim)) != string::npos) {
    result.push_back(s.substr(0, pos));
    s.erase(0, pos + delim.length());
  }
  result.push_back(s);
  return result;
}

int main(int argc, char** argv) {
  const auto start = steady_clock::now();
  duration<double> search_elapsed = duration<double>(0.0);

  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;
  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, init_arg == Init::ZERO);

  TrainingSetGadget training_set(seed);
  SandboxGadget training_sb(training_set, aux_fxns);

  TransformPoolsGadget transform_pools(target, aux_fxns, seed);
  WeightedTransformGadget transform(transform_pools, seed);
  SearchGadget search(&transform, seed);

  TestSetGadget test_set(seed);
  SandboxGadget test_sb(test_set, aux_fxns);
  CorrectnessCostGadget holdout_fxn(target, &test_sb);
  VerifierGadget verifier(test_sb, holdout_fxn);

  ScbArg scb_arg {&Console::msg(), nullptr};
  search.set_statistics_callback(scb, &scb_arg)
  .set_statistics_interval(stat_int);
  if (!no_progress_update_arg.value()) {
    search.set_progress_callback(pcb, &Console::msg());
  }

  size_t total_iterations = 0;
  size_t total_restarts = 0;

  // attempt to parse cycle_timeout argument
  vector<string> parts;
  vector<Expr<size_t>*> cycle_timeouts;
  for (auto& part : split(cycle_timeout_arg.value(), ",", parts)) {
    function<bool (const string&)> f = [](const string& s) -> bool { return s == "i"; };
    auto parser = ExprParser<size_t>(part, f);
    if (parser.has_error()) {
      Console::error() << "Error parsing cycle timeout expression '" << part << "': " << parser.get_error() << endl;
    }
    cycle_timeouts.push_back(parser.get());
  }

  if (strategy_arg.value() == "none" &&
      failed_verification_action.value() == FailedVerificationAction::ADD_COUNTEREXAMPLE) {
    Console::error() << "No verification is performed, thus no counterexample can be added (--failed_verification_action add_counterexample and --strategy none are not compatible)." << endl;
  }

  string final_msg;
  SearchStateGadget state(target, aux_fxns);
  for (size_t i = 0; ; ++i) {
    CostFunctionGadget fxn(target, &training_sb);

    // determine iteration timeout
    Expr<size_t>* timeout_expr = i >= cycle_timeouts.size() ? cycle_timeouts[cycle_timeouts.size()-1] : cycle_timeouts[i];
    function<size_t (const string&)> f2 = [i](const string& s) -> size_t { return i; };
    size_t cur_timeout = (*timeout_expr)(f2);
    size_t timeout_left = cur_timeout;
    if (timeout_iterations_arg.value()) {
      timeout_left = std::max(0UL, timeout_iterations_arg.value() - total_iterations);
    }
    search.set_timeout_itr(std::min(cur_timeout, timeout_left));

    Console::msg() << "Running search (timeout is " << cur_timeout << " iterations";
    // timeout in seconds
    if (timeout_seconds_arg.value() != 0) {
      auto time_remaining = duration_cast<duration<double>>(steady_clock::now() - start) + duration<double>(timeout_seconds_arg.value());
      if (time_remaining <= steady_clock::duration::zero()) {
        show_final_update(search.get_statistics(), state, total_restarts, total_iterations, start, search_elapsed, false, true);
        Console::error(1) << "Search terminated unsuccessfully; unable to discover a new rewrite!" << endl;
      }
      search.set_timeout_sec(time_remaining);
      Console::msg() << " / " << time_remaining.count() << " seconds";
    }
    Console::msg() << "):" << endl << endl;
    state = SearchStateGadget(target, aux_fxns);

    // Run the initial cost function
    // Used by statistics output and a sanity check
    auto initial_cost = fxn(state.current);
    if (!initial_cost.first && init_arg == Init::TARGET) {
      Console::warn() << "Initial state has non-zero correctness cost with --init target.";
    }
    starting_cost = initial_cost.second;
    lowest_cost = initial_cost.second;
    if (initial_cost.first) {
      lowest_correct = initial_cost.second;
    } else {
      lowest_correct = 0;
    }

    const auto start_search = steady_clock::now();
    search.run(target, fxn, init_arg, state, aux_fxns);
    search_elapsed += duration_cast<duration<double>>(steady_clock::now() - start_search);

    total_iterations += search.get_statistics().iterations;
    total_restarts++;

    if (state.interrupted) {
      Console::msg() << endl;
      show_final_update(search.get_statistics(), state, total_restarts, total_iterations, start, search_elapsed, false, false);
      Console::msg() << "Search interrupted!" << endl;
      exit(1);
    }

    const auto verified = verifier.verify(target, state.best_correct);

    if (verifier.has_error()) {
      Console::msg() << "The verifier encountered an error:" << endl;
      Console::msg() << verifier.error() << endl;
    }

    if (!state.success) {
      Console::msg() << "Unable to discover a new correct rewrite before timing out... " << endl << endl;
    } else if (!verified) {
      Console::msg() << "Unable to verify new rewrite..." << endl << endl;
    } else {
      if (strategy_arg.value() == "none") {
        final_msg = "Search terminated successfully (but no verification was performed)!";
      } else {
        final_msg = "Search terminated successfully with a verified rewrite!";
      }
      break;
    }

    sep(Console::msg());


    if (timeout_iterations_arg.value() && total_iterations >= timeout_iterations_arg.value()) {
      show_final_update(search.get_statistics(), state, total_restarts, total_iterations, start, search_elapsed, verified, true);
      Console::error(1) << "Search terminated unsuccessfully; unable to discover a new rewrite!" << endl;
    }

    if (!verified && verifier.counter_examples_available() && failed_verification_action.value() == FailedVerificationAction::ADD_COUNTEREXAMPLE) {
      Console::msg() << "Restarting search using new testcase (counterexample from verifier):" << endl << endl;
      Console::msg() << verifier.get_counter_examples()[0] << endl << endl;
      training_sb.insert_input(verifier.get_counter_examples()[0]);
    } else {
      Console::msg() << "Restarting search" << endl;
    }
  }

  if (postprocessing_arg == Postprocessing::FULL) {
    CfgTransforms::remove_redundant(state.best_correct);
    CfgTransforms::remove_unreachable(state.best_correct);
    CfgTransforms::remove_nop(state.best_correct);
  } else if (postprocessing_arg == Postprocessing::SIMPLE) {
    CfgTransforms::remove_unreachable(state.best_correct);
    CfgTransforms::remove_nop(state.best_correct);
  } else {
    // Do nothing.
  }

  auto final_stats = search.get_statistics();
  show_final_update(final_stats, state, total_restarts, total_iterations, start, search_elapsed, true, false);
  Console::msg() << final_msg << endl;

  ofstream ofs(out.value());
  ofs << state.best_correct.get_function();

  return 0;
}
