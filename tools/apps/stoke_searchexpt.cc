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

    ExperimentSearchState() : current(TUnit()),
       current_cost(0), success(false), interrupted(false) {}

    void configure_zero(const Cfg& target, size_t slots);
    //void configure(const Cfg& previous, const Cfg& target);

    /** The current rewrite. */
    Cfg current;
    /** The cost of the current rewrite. */
    Cost current_cost;

    /** Has search discovered at least one new correct rewrite? */
    bool success;
    /** Did the search get interrupted? */
    bool interrupted;
    /** Which iteration are we on? */
    size_t iteration;
    /** Random Numbers */
    std::default_random_engine gen;
    /** Beta */
    double beta;
};

using namespace x64asm;

void ExperimentSearchState::configure_zero(const Cfg& target, size_t slots) {
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

std::string code_to_string(x64asm::Code code) {
  stringstream ss;
  ss << code;
  auto res = regex_replace(ss.str(), regex("\\\\"), "\\\\");
  return regex_replace(res, regex("\n"), "\\n");
};

void show_final_update(ExperimentSearchState& state, duration<double> search_elapsed) {
  // output machine-readable result
  if (machine_output_arg.has_been_provided()) {
    ofstream f;
    f.open(machine_output_arg.value());
    f << "{" << endl;
    f << "  \"success\": " << (state.success ? "true" : "false") << "," << endl;
    f << "  \"interrupted\": " << (state.interrupted ? "true" : "false") << "," << endl;
    f << "  \"statistics\": {" << endl;
    f << "    \"total_iterations\": " << state.iteration << "," << endl;
    f << "    \"total_time\": " << search_elapsed.count() << "" << endl;
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
            Q& quit_func,
            L& logger) {
  std::uniform_real_distribution<double> uniform;

  state.iteration = 0;
  state.current_cost = fxn(state.current, max_cost_arg.value()).second;
  TransformInfo ti;

  logger.checkpoint(state);

  for (;; ++state.iteration) {

    if (quit_func(state))
      break;

    // if ((state.iteration % 5000) == 0 && state.iteration != 0) {
    if (state.iteration != 0) {
      logger.checkpoint(state);
    }

    ti = transform(state.current);

    // This move has been PROPOSED

    if (!ti.success) {
      logger.proposed(state, ti);
      continue;
    }

    // This move has SUCCEEDED

    const auto p = uniform(state.gen);
    const auto max = state.current_cost - (log(p) / state.beta);

    const auto new_res = fxn(state.current, max + 1);
    const auto new_cost = new_res.second;

    if (new_cost > max) {
      logger.succeeded(state, ti, new_cost);
      transform.undo(state.current, ti);
      continue;
    }

    logger.accepted(state, ti, new_cost);

    // This move is ACCEPTED
    state.current_cost = new_cost;
  }

  logger.checkpoint(state);

}

const char* nameForMoveType(size_t move_type) {
  switch (move_type) {
    case 0: return "AddNops";
    case 1: return "Delete";
    case 2: return "Instruction";
    case 3: return "Opcode";
    case 4: return "OpcodeWidth";
    case 5: return "Operand";
    case 6: return "LocalSwap";
    case 7: return "GlobalSwap";
    case 8: return "Rotate";
    default:
      assert(false);
      return nullptr;
  }
}
class SearchLogger {
public:
  SearchLogger(std::ofstream& out) : out(out) {
    out << "Stoke Binary Log 0.1\n";
  }
  void checkpoint(ExperimentSearchState& state) {
    uint64_t iteration = state.iteration;
    uint64_t cost = state.current_cost;
    stringstream ss;
    ss << state.current.get_code();
    string code = ss.str();
    uint32_t code_size = code.size();

    write_header_byte(3, 3, 15);
    out.write((char*)&iteration, 8);
    out.write((char*)&cost, 8);
    out.write((char*)&code_size, 4);
    out.write((char*)&code[0], code_size);
  }
  void proposed(ExperimentSearchState& state, TransformInfo& ti) {
    write_header_byte(0, 0, ti.move_type);
  }
  void succeeded(ExperimentSearchState& state, TransformInfo& ti, Cost new_cost) {
    write_move(1, state, ti, new_cost);
  }
  void accepted(ExperimentSearchState& state, TransformInfo& ti, Cost new_cost) {
    write_move(2, state, ti, new_cost);
  }
private:

  void write_move(int accept_state, ExperimentSearchState& state, TransformInfo& ti, Cost new_cost) {
      int cost_size = cost_diff_size(state.current_cost, new_cost);
      write_header_byte(accept_state, cost_size, ti.move_type);
      write_cost_diff(cost_size, state.current_cost, new_cost);
      
      auto& code = state.current.get_code();
      size_t index0 = ti.undo_index[0];
      size_t index1 = ti.undo_index[1];
      
      switch(ti.move_type) {
        case 0: { // AddNops
          assert(false);
          break;
        }
        case 1: { // Delete
          assert(false);
          break;
        }
        case 2: { // Instruction
          write_instruction_index(index0);
          write_instruction(code[index0]);
          break;
        }
        case 3: { // Opcode
          write_instruction_index(index0);
          write_opcode_arity(code[index0].get_opcode(), 0);
          break;
        }
        case 4: { // OpcodeWidth
          write_instruction_index(index0);
          write_opcode_arity(code[index0].get_opcode(), 0);
          break;
        }
        case 5: { // Operand
          Instruction old_ins = ti.undo_instr;
          Instruction new_ins = code[index0];
          assert(old_ins.arity() == new_ins.arity());
          size_t diff_index = 0;
          for (size_t i = 0; i < old_ins.arity(); i++) {
            if (new_ins.get_operand<Operand>(i) != old_ins.get_operand<Operand>(i)) {
              diff_index = i;
              break;
            }
          }
          write_instruction_index(index0);
          write_instruction_index(diff_index);
          write_operand(new_ins.get_operand<Operand>(diff_index));
          break;
        }
        case 6: { // LocalSwap
          write_instruction_index(index0);
          write_instruction_index(index1);
          break;
        }
        case 7: { // GlobalSwap
          write_instruction_index(index0);
          write_instruction_index(index1);
          break;
        }
        case 8: { // Rotate
          write_instruction_index(index0);
          write_instruction_index(index1);
          break;
        }
      }
  }
  void write_instruction_index(size_t index) {
    assert(((size_t)(uint8_t)index) == index);
    write_byte((uint8_t)index);
  }
  void write_opcode_arity(x64asm::Opcode op, int arity) {
    int32_t num = op;
    assert(0 <= num && num < 4096);
    assert(0 <= arity && arity < 8);
    uint16_t val = num | (((uint16_t)arity) << 12);
    write_int16(val);
  }
  void write_operand(x64asm::Operand operand) {
    static_assert(sizeof(x64asm::Operand) == 16, "operand must be 16 bytes");
    out.write((char*)&operand, 16);
  }
  void write_instruction(x64asm::Instruction ins) {
    int arity = ins.arity();
    Opcode op = ins.get_opcode();
    write_opcode_arity(op, arity);
    for(size_t i = 0; i < (size_t)arity; i++) {
      write_operand(ins.get_operand<Operand>(i));
    }
  }
  void write_header_byte(int result, int cost_size, int move_type) {
    assert (0 <= result && result < 4);
    assert (0 <= cost_size && cost_size < 4);
    assert (0 <= move_type && move_type < 16);
    uint8_t byte = (uint8_t)result;
    byte |= (uint8_t)cost_size << 2;
    byte |= (uint8_t)move_type << 4;
    write_byte(byte);
  }
  int cost_diff_size(Cost old_cost, Cost new_cost) {
    if (old_cost == new_cost)
      return 0;
    int64_t diff = new_cost - old_cost;
    if ((int64_t)((int8_t)diff) == diff)
      return 1;
    return 2;
  }
  void write_cost_diff(int size, Cost old_cost, Cost new_cost) {
    switch(size) {
      case 0:
        break;
      case 1: {
        write_byte((int8_t)(new_cost - old_cost));
        break;
      }
      case 2: {
        write_int32((int32_t)(new_cost - old_cost));
        break;
      }
    }
  }
  void write_byte(uint8_t b) {
    out.write((char*)&b, 1);
  }
  void write_int16(uint16_t i) {
    out.write((char*)&i, 2);
  }
  void write_int32(uint32_t i) {
    out.write((char*)&i, 4);
  }
  std::ofstream& out;
};

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  SeedGadget seed;

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  TransformPoolsGadget transform_pools(target, aux_fxns, seed);
  WeightedTransformGadget transform(transform_pools, seed);

  TestcasesGadget testcases(seed);
  SandboxGadget sandbox(testcases, aux_fxns);
  CostFunctionGadget fxn(target, &sandbox);

  ExperimentSearchState state{};
  state.configure_zero(target, max_instrs_arg.value());

  state.gen.seed((std::default_random_engine::result_type)seed);
  state.beta = beta_arg.value();
  auto timeout = timeout_iterations_arg.value();

  auto quit = [timeout](ExperimentSearchState& state) -> bool {
    if (state.iteration >= timeout)
      return true;
    if (state.current_cost == 0) {
      state.success = true;
      return true;
    }
    return false;
  };
  std::ofstream searchlog{"search.binlog", std::ios_base::binary};
  SearchLogger logger{searchlog};
  Console::msg() << "Target is:" << target.get_function() << endl;
  Console::msg() << "Running search (timeout is " << timeout << " iterations)..." << endl;

  const auto start_search = steady_clock::now();
  search(state, fxn, transform, quit, logger);
  auto search_elapsed = duration_cast<duration<double>>(steady_clock::now() - start_search);

  Console::msg() << "Finished search, writing output..." << endl;
  show_final_update(state, search_elapsed);
  searchlog.close();
  Console::msg() << "Done." << endl;
  return 0;
}
