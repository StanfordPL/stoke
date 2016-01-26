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
#include <regex>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"

#include "src/cfg/cfg_transforms.h"
#include "src/expr/expr.h"
#include "src/expr/expr_parser.h"
#include "src/tunit/tunit.h"

#include "tools/args/search.inc"
#include "tools/args/target.inc"
#include "tools/gadgets/cost_function.h"
#include "tools/gadgets/correctness_cost.h"
#include "tools/gadgets/functions.h"
#include "tools/gadgets/sandbox.h"
#include "tools/gadgets/seed.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/testcases.h"
#include "tools/gadgets/transform_pools.h"
#include "tools/gadgets/weighted_transform.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace chrono;

auto& io = Heading::create("Output Options:");

auto& machine_output_arg = ValueArg<string>::create("machine_output")
                           .usage("<path/to/file.s>")
                           .description("Machine-readable output (result and statistics)");

auto& automation_heading = Heading::create("Automation Options:");

auto& timeout_iterations_arg =
  cpputil::ValueArg<size_t>::create("timeout_iterations")
  .usage("<int>")
  .description("Total number of iterations before giving up")
  .default_val(20000000);

class ExperimentSearchState {
  public:
    
    ExperimentSearchState(size_t size) : current(TUnit()),
       current_cost(0),  slots(size), success(false), interrupted(false) {}
    
    void configure_zero(const Cfg& target);
    void configure(const Cfg& previous, const Cfg& target);

    /** The current rewrite. */
    Cfg current;
    /** The cost of the current rewrite. */
    Cost current_cost;

    /** Number of slots in code */
    size_t slots;
    /** Has search discovered at least one new correct rewrite? */
    bool success;
    /** Did the search get interrupted? */
    bool interrupted;
    /** Which iteration are we on? */
    size_t iteration;
    /** Random Numbers */
    std::default_random_engine gen;
};

using namespace x64asm;

void ExperimentSearchState::configure_zero(const Cfg& target) {
  // Compute a minimal function that covers live-outs
  const auto minimal = CfgTransforms::minimal_correct_cfg(target.def_ins(), target.live_outs());
  const auto& code = minimal.get_code();

  // Start with initial label
  current = minimal;
  current.get_function().clear();
  current.get_function().push_back(target.get_code()[0]);

  // Append instructions from minimal code
  for (size_t i = 1; !code[i].is_ret(); ++i) {
    current.get_function().push_back(code[i]);
  }

  // Pad with nops
  for (size_t i = current.get_code().size(), ie = slots - 1; i < ie; ++i) {
    current.get_function().push_back({NOP});
  }

  // Final return
  current.get_function().push_back({RET});

  // Recompute cfg (underlying function is kept sound automatically)
  current.recompute();
}


void show_final_update(ExperimentSearchState& state, duration<double> search_elapsed) {
  // output machine-readable result
  if (machine_output_arg.has_been_provided()) {
    auto code_to_string = [](x64asm::Code code) {
      stringstream ss;
      ss << code;
      auto res = regex_replace(ss.str(), regex("\\"), "\\\\");
      return regex_replace(res, regex("\n"), "\\n");
    };
    ofstream f;
    f.open(machine_output_arg.value());
    f << "{" << endl;
    f << "  \"success\": " << (state.success ? "true" : "false") << "," << endl;
    f << "  \"interrupted\": " << (state.interrupted ? "true" : "false") << "," << endl;
    f << "  \"statistics\": {" << endl;
    f << "    \"total_iterations\": " << state.iteration << "," << endl;
    f << "    \"total_time\": " << search_elapsed.count() << "," << endl;
    f << "  }," << endl;
    f << "  \"current\": {" << endl;
    f << "    \"cost\": " << state.current_cost << "," << endl;
    f << "    \"code\": \"" << code_to_string(state.current.get_code()) << "\"" << endl;
    f << "  }" << endl;
    f << "}" << endl;
    f.close();
  }
}

template <typename Q, typename L>
void search(ExperimentSearchState& state,
            CostFunction& fxn,
            Transform& transform,
            const Q& quit_func,
            const L& log_func) {
  auto beta = beta_arg.value();
  std::uniform_real_distribution<double> uniform;
  
  state.iteration = 0;
  
  TransformInfo ti;
  
  for (;; ++state.iteration) {
    
    if (quit_func(state))
      break;
    
    ti = transform(state.current);
    
    // This move has been PROPOSED
    
    if (!ti.success) {
      continue;
    }
    
    // This move has SUCCEEDED

    const auto p = uniform(state.gen);
    const auto max = state.current_cost - (log(p) / beta);

    const auto new_res = fxn(state.current, max + 1);
    const auto new_cost = new_res.second;

    if (new_cost > max) {
      transform.undo(state.current, ti);
      continue;
    }
    
    // This move is ACCEPTED
    state.current_cost = new_cost;
  }
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;
  
  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, init_arg == Init::ZERO);
  TransformPoolsGadget transform_pools(target, aux_fxns, seed);
  WeightedTransformGadget transform(transform_pools, seed);
  
  TrainingSetGadget training_set(seed);
  SandboxGadget training_sb(training_set, aux_fxns);
  CostFunctionGadget fxn(target, &training_sb);

  ExperimentSearchState state{max_instrs_arg.value()};
  state.configure_zero(target);
  std::random_device dev;
  state.gen.seed(dev());

  auto timeout = timeout_iterations_arg.value();
  
  auto quit = [timeout](ExperimentSearchState& state) -> bool {
    if (state.iteration > timeout)
      return true;
    if (state.current_cost == 0) {
      state.success = true;
      return true;
    }
    return false;
  };
  
  
  Console::msg() << "Running search (timeout is " << timeout << " iterations):" << endl << endl;
  
  const auto start_search = steady_clock::now();
  search(state, fxn, transform, quit, 1);
  auto search_elapsed = duration_cast<duration<double>>(steady_clock::now() - start_search);
  
  show_final_update(state, search_elapsed);

  Console::msg() << "Done." << endl << endl;
  return 0;
}
