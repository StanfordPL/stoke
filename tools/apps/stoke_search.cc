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
#include "tools/args/search.h"
#include "tools/args/target.h"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/search.h"
#include "tools/gadgets/search_state.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/gadgets/transforms.h"
#include "tools/gadgets/verifier.h"
#include "tools/io/timeout.h"
#include "tools/ui/console.h"

using namespace cpputil;
using namespace std;
using namespace stoke;

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

  ofs << "Lowest Cost Discovered (" << data.state.best_yet_cost << ")" << endl;
  ofs << endl;
  ofs << best_yet.get_code();
  ofs.filter().next();

  auto best_correct = data.state.best_correct;
  tforms.remove_unreachable(best_correct);
  tforms.remove_nop(best_correct);

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

}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;
  TargetGadget target;

  TrainingSetGadget training_set(seed);
  SandboxGadget training_sb(training_set);

  TransformsGadget transforms(seed);
  SearchGadget search(&transforms, seed);

  TestSetGadget test_set(seed);
  SandboxGadget test_sb(test_set);
  CostFunctionGadget holdout_fxn(target, &test_sb);
  VerifierGadget verifier(holdout_fxn);

  if (!target.is_sound()) {
    Console::error(1) << "Target reads undefined variables, or leaves live_out undefined." << endl;
  }

  ScbArg scb_arg {&Console::msg(), nullptr};
  search.set_progress_callback(pcb, &Console::msg())
  .set_statistics_callback(scb, &scb_arg)
  .set_statistics_interval(stat_int);

  SearchStateGadget state;
  for (size_t i = 0; ; ++i) {
    CostFunctionGadget fxn(target, &training_sb);

    Console::msg() << "Running search:" << endl << endl;
    state = SearchStateGadget();
    search.run(target, fxn, init_arg, state, aux_fxns_arg.value());

    if (state.interrupted) {
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
        Console::msg() << "Search terminated successfully (but no verification was performed)!" << endl;
      } else {
        Console::msg() << "Search terminated successfully with a verified rewrite!" << endl;
      }
      break;
    }

    sep(Console::msg());

    if ((timeout_action_arg == Timeout::RESTART) && (i < timeout_cycles_arg.value())) {
      Console::msg() << "Restarting search:" << endl << endl;
    } else if ((timeout_action_arg == Timeout::TESTCASE) && (i < timeout_cycles_arg.value())
               && verifier.counter_example_available()) {
      Console::msg() << "Restarting search using new testcase:" << endl << endl;
      Console::msg() << verifier.get_counter_example() << endl << endl;
      training_sb.insert_input(verifier.get_counter_example());
    } else {
      Console::error(1) << "Search terminated unsuccessfully; unable to discover a new rewrite!" << endl;
    }
  }

  CfgTransforms tforms;
  tforms.remove_unreachable(state.best_correct);
  tforms.remove_nop(state.best_correct);

  TUnit rewrite;
  rewrite.name = target_arg.value().name;
  rewrite.code = state.best_correct.get_code();

  ofstream ofs(out.value());
  ofs << rewrite;

  return 0;
}
