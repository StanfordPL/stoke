// Copyright 2013-2016 Stanford University
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
#include "src/search/new_best_correct_callback.h"
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

#include <boost/filesystem/operations.hpp>
#include <boost/filesystem/path.hpp>
namespace fs = boost::filesystem;

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

auto& results_arg = ValueArg<string>::create("results")
                    .usage("<path/to/dir>")
                    .description("Path to the directory where new best correct rewrites are being stored.  Rewrites are verified before being stored (using the same verification settings as the final verification).")
                    .default_val("");

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

void new_best_correct_callback(const NewBestCorrectCallbackData& data, void* arg) {

  if (results_arg.has_been_provided()) {
    Console::msg() << "Verifying improved rewrite..." << endl;

    auto state = data.state;
    auto data = (pair<VerifierGadget&, TargetGadget&>*)arg;
    auto verifier = data->first;
    auto target = data->second;

    // perform the postprocessing
    Cfg res(state.current);
    if (postprocessing_arg == Postprocessing::FULL) {
      CfgTransforms::remove_redundant(res);
      CfgTransforms::remove_unreachable(res);
      CfgTransforms::remove_nop(res);
    } else if (postprocessing_arg == Postprocessing::SIMPLE) {
      CfgTransforms::remove_unreachable(res);
      CfgTransforms::remove_nop(res);
    } else {
      // Do nothing.
    }

    // verify the new best correct rewrite
    const auto verified = verifier.verify(target, res);

    if (verifier.has_error()) {
      Console::msg() << "The verifier encountered an error: " << verifier.error() << endl << endl;
    }

    // save to file if verified
    if (verified) {
      Console::msg() << "Verified!  Saving result..." << endl << endl;
      // next name for result file
      string name = "";
      bool done = false;
      do {
        name = results_arg.value() + "/result-" + to_string(state.last_result_id) + ".s";
        state.last_result_id += 1;
        ifstream f(name.c_str());
        done = !f.good();
      } while (!done);

      // write output
      ofstream outfile;
      outfile.open(name);
      outfile << res.get_function();
      outfile.close();
    } else {
      Console::msg() << "Verification failed."  << endl << endl;
      if (verifier.counter_examples_available()) {
        Console::msg() << "Counterexample: " << endl;
        for (auto it : verifier.get_counter_examples()) {
          Console::msg() << it << endl;
        }
      }
    }

  } else {
    cout << "No action on new best correct" << endl;

  }

}



void generate_testcases(x64asm::RegSet def_in, TrainingSetGadget& set) {

  mt19937_64 gen{0xc9e0b44164d52561};
  // 1,0,-1 full cross product on up to two registers
  for (int i = -1; i < 2; i++) {
    for (int j = -1; j < 2; j++) {
      CpuState state{};
      int which = 0;
      for (auto reg = def_in.gp_begin(); reg != def_in.gp_end(); ++reg) {
        state.update(*reg, which ? i : j);
        which = (which + 1) % 2;
      }
      set.push_back(state);
    }
  }


  // sparse bit patterns, 1, 2, or 3 bits set.
  for (int i = 0; i < 30; i++) {
    CpuState state{};
    for (auto reg = def_in.gp_begin(); reg != def_in.gp_end(); ++reg) {
      uint64_t sparse = 0;
      int bits = gen() % 3 + 1;
      for (int j = 0; j < bits; j++)
        sparse |= 1 << (gen() % ((*reg).size()));
      state.update(*reg, sparse);
    }
    set.push_back(state);
  }
  // complement of sparse bit patterns
  for (int i = 0; i < 21; i++) {
    CpuState state{};
    for (auto reg = def_in.gp_begin(); reg != def_in.gp_end(); ++reg) {
      uint64_t sparse = 0;
      int bits = gen() % 3 + 1;
      for (int j = 0; j < bits; j++)
        sparse |= 1 << (gen() % ((*reg).size()));
      state.update(*reg, ~sparse);
    }
    set.push_back(state);
  }

  // totally random testcases
  for (int i = 0; i < 50; i++) {
    CpuState state{};
    for (auto reg = def_in.gp_begin(); reg != def_in.gp_end(); ++reg) {
      state.update(*reg, gen());
    }
    set.push_back(state);
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

  // create results dir if necessary
  if (results_arg.has_been_provided()) {
    fs::path result_dir(results_arg.value());
    if (!fs::is_directory(result_dir)) {
      fs::create_directories(result_dir);
    }
  }

  SeedGadget seed;
  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, init_arg == Init::ZERO);

  TrainingSetGadget training_set(seed);

  if (generate_testcases_arg.value())
    generate_testcases(def_in_arg.value(), training_set);

  SandboxGadget training_sb(training_set, aux_fxns);


  TransformPoolsGadget transform_pools(target, aux_fxns, seed);
  std::mt19937_64* generator = new std::mt19937_64((std::mt19937_64::result_type)seed);
  WeightedTransformGadget transform(transform_pools, generator);
  SearchGadget search(&transform, seed);

  TestSetGadget test_set(seed);
  SandboxGadget test_sb(test_set, aux_fxns);

  PerformanceSetGadget perf_set(seed);
  SandboxGadget perf_sb(perf_set, aux_fxns);

  CorrectnessCostGadget holdout_fxn(target, &test_sb);
  VerifierGadget verifier(test_sb, holdout_fxn);

  ScbArg scb_arg {&Console::msg(), nullptr};
  search.set_statistics_callback(scb, &scb_arg)
  .set_statistics_interval(stat_int);
  if (!no_progress_update_arg.value()) {
    search.set_progress_callback(pcb, &Console::msg());
  }
  auto nbcc_data = pair<VerifierGadget&, TargetGadget&>(verifier, target);
  search.set_new_best_correct_callback(new_best_correct_callback, &nbcc_data);

  size_t total_iterations = 0;
  size_t total_searches = 0;
  size_t total_counterexamples = 0;
  size_t total_verifications = 0;
  bool did_timeout = false;
  bool was_verified = false;

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

  SearchStateGadget state(target, aux_fxns);
  CostFunctionGadget fxn(target, &training_sb, &perf_sb);
  bool finished = false;
  size_t cycle = 0;
  for (; !finished; ++cycle) {

    // Determine iteration timeout for this cycle
    Expr<size_t>* timeout_expr = cycle_timeouts[std::min(cycle_timeouts.size()-1, cycle)];
    function<size_t (const string&)> f2 = [cycle](const string& s) -> size_t { return cycle+1; };
    size_t cycle_iterations_remaining = (*timeout_expr)(f2);
    if (timeout_iterations_arg.value()) {
      if (total_iterations < timeout_iterations_arg.value()) {
        cycle_iterations_remaining = std::min(cycle_iterations_remaining, timeout_iterations_arg.value() - total_iterations);
      } else {
        cycle_iterations_remaining = 0;
      }
    }

    Console::msg() << "Starting cycle " << cycle << " with " << cycle_iterations_remaining << " iterations" << endl;

    // Initialize state to zero, target, etc.
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

    // Perform the epochs within a cycle
    for (size_t epoch = 0; ; ++epoch) {
      if (cycle_iterations_remaining == 0) {
        did_timeout = true;
        finished = true;
        break;
      }
      search.set_timeout_itr(cycle_iterations_remaining);

      // Timeout in seconds
      if (timeout_seconds_arg.value() != 0) {
        auto time_remaining = duration<double>(timeout_seconds_arg.value()) - duration_cast<duration<double>>(steady_clock::now() - start);
        if (time_remaining <= steady_clock::duration::zero()) {
          Console::msg() << "Search terminated unsuccessfully; unable to discover a new rewrite!" << endl;
          did_timeout = true;
          finished = true;
          break;
        }
        search.set_timeout_sec(time_remaining);
      }

      Console::msg() << "Running search (epoch:" << epoch << " timeout is " << cycle_iterations_remaining << " iterations):";
      const auto start_search = steady_clock::now();
      search.run(target, fxn, init_arg, state, aux_fxns);
      search_elapsed += duration_cast<duration<double>>(steady_clock::now() - start_search);

      total_iterations += search.get_statistics().iterations;
      cycle_iterations_remaining -= search.get_statistics().iterations;
      total_searches++;

      if (state.interrupted) {
        Console::msg() << endl << "Search interrupted!" << endl;
        finished = true;
        break;
      }
      if (!state.success) {
        Console::msg() << "Unable to discover a new correct rewrite before timing out... " << endl << endl;
        // End this cycle
        break;
      }

      const auto verified = verifier.verify(target, state.best_correct);
      total_verifications ++;

      if (verifier.has_error()) {
        Console::msg() << "The verifier encountered an error:" << endl;
        Console::msg() << verifier.error() << endl;
        finished = true;
        break;
      }

      if (verified) {
        if (strategy_arg.value() == "none") {
          Console::msg() << "Search terminated successfully (but no verification was performed)!" << endl;
        } else {
          Console::msg() << "Search terminated successfully with a verified rewrite!" << endl;
        }
        was_verified = true;
        finished = true;
        break;
      }

      Console::msg() << "Unable to verify new rewrite..." << endl << endl;
      sep(Console::msg());

      if (verifier.counter_examples_available() && failed_verification_action.value() == FailedVerificationAction::ADD_COUNTEREXAMPLE) {
        Console::msg() << "Restarting search using new testcase (counterexample from verifier):" << endl << endl;
        Console::msg() << verifier.get_counter_examples()[0] << endl << endl;
        training_sb.insert_input(verifier.get_counter_examples()[0]);
        total_counterexamples++;
      } else {
        // Search was successful, but we didn't verify and couldn't add a new
        // counterexample, so just end the search
        finished = true;
        break;
      }
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

  auto stats = search.get_statistics();

  auto total_elapsed = duration_cast<duration<double>>(steady_clock::now() - start);
  sep(Console::msg(), "#");
  Console::msg() << "Final update:" << endl << endl;
  Console::msg() << "Total search iterations:       " << total_iterations << endl;
  Console::msg() << "Number of attempted searches:  " << total_searches << endl;
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
    f << "  \"timeout\": " << (did_timeout ? "true" : "false") << "," << endl;
    f << "  \"verified\": " << (was_verified ? "true" : "false") << "," << endl;
    f << "  \"statistics\": {" << endl;
    f << "    \"total_iterations\": " << total_iterations << "," << endl;
    f << "    \"total_attempted_searches\": " << total_searches << "," << endl;
    f << "    \"total_attempted_verifications\": " << total_verifications << "," << endl;
    f << "    \"total_counterexamples\": " << total_counterexamples << "," << endl;
    f << "    \"total_search_time\": " << search_elapsed.count() << "," << endl;
    f << "    \"total_cycles\": " << (cycle+1) << "," << endl;
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

  ofstream ofs(out.value());
  ofs << state.best_correct.get_function();

  return 0;
}
