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

auto& machine_output_arg = ValueArg<string>::create("machine_output")
                           .usage("<path/to/file.s>")
                           .description("Machine-readable output (result and statistics)");

auto& restore_arg = ValueArg<string>::create("restore_state")
                    .usage("<path/to/file.state>")
                    .description("State to restore.");

auto& save_arg = ValueArg<string>::create("save_state")
                 .usage("<path/to/file.state>")
                 .description("Path to save state");

auto& automation_heading = Heading::create("Automation Options:");

auto& timeout_iterations_arg =
  cpputil::ValueArg<size_t>::create("timeout_iterations")
  .usage("<int>")
  .description("Total number of iterations before giving up (across all cycles)")
  .default_val(100000000);

auto& interrupt_seconds_arg =
  cpputil::ValueArg<double>::create("interrupt_after")
  .usage("<double>")
  .description("Number of seconds to interrupt after (will serialize state if --save_state supplied)")
  .default_val(0);

auto& failed_verification_action =
  ValueArg<FailedVerificationAction, FailedVerificationActionReader, FailedVerificationActionWriter>::create("failed_verification_action")
  .usage("(quit|add_counterexample)")
  .description("Action to take when the verification at the end fails")
  .default_val(FailedVerificationAction::ADD_COUNTEREXAMPLE);

void generate_testcases(x64asm::RegSet def_in, CpuStates& set) {
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

static bool have_received_sigint = false;
void sigint_handler(int sig, siginfo_t* siginfo, void* context) {
  have_received_sigint = true;
}
void setup_sigint_handler() {
  struct sigaction term_act;
  memset(&term_act, '\0', sizeof(term_act));
  sigfillset(&term_act.sa_mask);
  term_act.sa_sigaction = sigint_handler;
  term_act.sa_flags = SA_ONSTACK;
  sigaction(SIGINT, &term_act, 0);
}

class SearchExpt {
public:
  SearchExpt(): current(TUnit()) {
    seed = new SeedGadget();
    generator = mt19937_64((mt19937_64::result_type)*seed);

    aux_fxns = new FunctionsGadget();
    target = new TargetGadget(*aux_fxns, init_arg == Init::ZERO);

    transform_pools = new TransformPoolsGadget(*target, *aux_fxns, &generator);
    transform = new WeightedTransformGadget(*transform_pools, &generator);

    training_set = new TrainingSetGadget(*seed);
    if (generate_testcases_arg.value())
      generate_testcases(def_in_arg.value(), *training_set);
    training_sb = new SandboxGadget(*training_set, *aux_fxns);

    test_set = new TestSetGadget(*seed);
    test_sb = new SandboxGadget(*test_set, *aux_fxns);

    perf_set = new PerformanceSetGadget(*seed);
    perf_sb = new SandboxGadget(*perf_set, *aux_fxns);

    holdout_fxn = new CorrectnessCostGadget(*target, test_sb);
    verifier = new VerifierGadget(*test_sb, *holdout_fxn);

    fxn = new CostFunctionGadget(*target, training_sb, perf_sb);

    current_cost = -1;
    iterations = 0;
    search_elapsed = 0.0;
    total_elapsed = 0.0;
    beta = beta_arg.value();
    total_verifications = 0;
    total_counterexamples = 0;
    success = false;
    verified = false;
    interrupted = false;

    configure_zero(*target, max_instrs_arg.value());

    // add dataflow information about function call targets
    for (const auto& fxn : *aux_fxns) {
      const auto& code = fxn.get_code();
      const auto& lbl = fxn.get_leading_label();
      TUnit::MayMustSets mms = {
        code.must_read_set(),
        code.must_write_set(),
        code.must_undef_set(),
        code.maybe_read_set(),
        code.maybe_write_set(),
        code.maybe_undef_set()
      };
      current.add_summary(lbl, fxn.get_may_must_sets(mms));
    }

    current_cost = (*fxn)(current).second;

  }
  void configure_empty(const Cfg& target, size_t size) {
    // Start with initial label
    current = target;
    current.get_function().clear();
    current.get_function().push_back(target.get_code()[0]);

    // Pad with nops
    for (size_t i = 1, ie = size - 1; i < ie; ++i) {
      current.get_function().push_back({x64asm::NOP});
    }

    // Final return
    current.get_function().push_back({x64asm::RET});

    // Recompute cfg (underlying function is kept sound automatically)
    current.recompute();
  }
  void configure_zero(const Cfg& target, size_t size) {
    // Nothing to do if def-ins cover live-outs
    if (target.def_ins().contains(target.live_outs())) {
      configure_empty(target, size);
      return;
    }

    // Compute a minimal function that covers live-outs
    const auto minimal = CfgTransforms::minimal_correct_cfg(target.def_ins(), target.live_outs());
    const auto& code = minimal.get_code();

    // Start with initial label
    current = target;
    current.get_function().clear();
    current.get_function().push_back(target.get_code()[0]);

    // Append instructions from minimal code
    for (size_t i = 1; !code[i].is_ret(); ++i) {
      current.get_function().push_back(code[i]);
    }

    // Pad with nops
    for (size_t i = current.get_code().size(), ie = size - 1; i < ie; ++i) {
      current.get_function().push_back({x64asm::NOP});
    }

    // Final return
    current.get_function().push_back({x64asm::RET});

    // Recompute cfg (underlying function is kept sound automatically)
    current.recompute();
  }

  void iteration() {
    std::uniform_real_distribution<double> prob;
    TransformInfo ti;
    ti = (*transform)(current);
    if (!ti.success) {
      //Console::msg() << ti.move_type << " didn't succeed\n";
      return;
    }
    const auto p = prob(generator);
    const auto max = current_cost - (log(p) / beta);
    const auto new_cost = (*fxn)(current, max + 1).second;

    if (new_cost > max) {
      //Console::msg() << ti.move_type << " wasn't accepted\n";
      (*transform).undo(current, ti);
      return;
    }
    //Console::msg() << ti.move_type << " accepted\n";
    current_cost = new_cost;
  }

  bool verify() {
    const auto did_verify = verifier->verify(*target, current);
    if (verifier->has_error()) {
      Console::msg() << "The verifier encountered an error:" << endl;
      Console::msg() << verifier->error() << endl;
      return true;
    }
    if (did_verify) {
      success = true;
      if (strategy_arg.value() == "none") {
        Console::msg() << "Search terminated successfully (but no verification was performed)!" << endl;
      } else {
        Console::msg() << "Search terminated successfully with a verified rewrite!" << endl;
        verified = true;
      }

      return true;
    } else {
      if (verifier->counter_examples_available() && failed_verification_action.value() == FailedVerificationAction::ADD_COUNTEREXAMPLE) {
        Console::msg() << "Restarting search using new testcase (counterexample from verifier):" << endl << endl;
        Console::msg() << verifier->get_counter_examples()[0] << endl << endl;
        training_sb->insert_input(verifier->get_counter_examples()[0]);
        total_counterexamples++;
        return false;
      } else {
        // Search was successful, but we didn't verify and couldn't add a new
        // counterexample, so just end the search
        Console::msg() << "Unable to verify new rewrite..." << endl << endl;
        return true;
      }
    }
  }
  void restore(ifstream& s) {
    s >> current_cost;

    // these only have meaning within an invocation:
    // bool verified, success, interrupted;

    s >> iterations;
    s >> search_elapsed >> total_elapsed;
    s >> total_verifications >> total_counterexamples;
    s >> generator;
    current.get_function().read_text(s);
    current.recompute();

  }
  void save(ofstream& s) {

    // This should also be handled to save testcases across invocations
    //CpuStates* training_set;

    //Write out current cost
    s << current_cost << "\n";

    // these only have meaning within an invocation:
    // bool verified, success, interrupted;

    s << iterations << "\n";
    s << search_elapsed << " " << total_elapsed << "\n";
    s << total_verifications << " " << total_counterexamples << "\n";

    s << generator << "\n";
    current.recompute();
    current.get_function().write_text(s);
  }

  SeedGadget* seed;
  FunctionsGadget* aux_fxns;
  Cfg* target;
  TransformPools* transform_pools;
  Transform* transform;

  CpuStates* training_set;
  Sandbox* training_sb;
  CpuStates* test_set;
  Sandbox* test_sb;
  CpuStates* perf_set;
  Sandbox* perf_sb;

  CorrectnessCost* holdout_fxn;
  Verifier* verifier;
  CostFunction* fxn;

  Cfg current;
  Cost current_cost;

  bool verified, success, interrupted;
  size_t iterations;
  double search_elapsed, total_elapsed;
  double beta;
  size_t total_verifications, total_counterexamples;

  mt19937_64 generator;
};

int main(int argc, char** argv) {
  const auto start = steady_clock::now();

  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();
  setup_sigint_handler();

  SearchExpt search{};

  if (restore_arg.has_been_provided()) {
    std::ifstream stream{restore_arg.value()};
    search.restore(stream);
    stream.close();
  }

  const auto start_search = steady_clock::now();
  Cost priorcost = -1;
  std::ofstream searchlog{"search.log"};

  size_t i = 0;
  while (true) {
    if (search.iterations >= timeout_iterations_arg.value())
      break;
    if (have_received_sigint) {
      search.interrupted = true;
      break;
    }

    if (interrupt_seconds_arg.has_been_provided()) {
      auto elapsed = duration_cast<duration<double>>(steady_clock::now() - start_search).count();
      if (elapsed > interrupt_seconds_arg.value()) {
        search.interrupted = true;
        break;
      }
    }

    if (search.current_cost != priorcost) {
      searchlog << search.iterations << "," << search.current_cost << "\n";
      priorcost = search.current_cost;
    }

    if (search.current_cost == 0) {
      if (search.verify()) {
        break;
      }
    }

    search.iteration();
    search.iterations++;

  }

  searchlog.close();

  search.search_elapsed += duration_cast<duration<double>>(steady_clock::now() - start_search).count();
  search.total_elapsed += duration_cast<duration<double>>(steady_clock::now() - start).count();

  if (save_arg.has_been_provided()) {
    std::ofstream stream{save_arg.value()};
    search.save(stream);
    stream.close();
  }

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
    f << "  \"success\": " << (search.success ? "true" : "false") << "," << endl;
    f << "  \"interrupted\": " << (search.interrupted ? "true" : "false") << "," << endl;
    f << "  \"verified\": " << (search.verified ? "true" : "false") << "," << endl;
    f << "  \"statistics\": {" << endl;
    f << "    \"total_iterations\": " << search.iterations << "," << endl;
    f << "    \"total_attempted_verifications\": " << search.total_verifications << "," << endl;
    f << "    \"total_counterexamples\": " << search.total_counterexamples << "," << endl;
    f << "    \"total_search_time\": " << search.search_elapsed << "," << endl;
    f << "    \"total_time\": " << search.total_elapsed << endl;
    f << "  }," << endl;
    f << "  \"current\": {" << endl;
    f << "    \"cost\": " << search.current_cost << "," << endl;
    f << "    \"code\": \"" << code_to_string(search.current.get_code()) << "\"" << endl;
    f << "  }" << endl;
    f << "}" << endl;
    f.close();
  }

  return 0;
}
