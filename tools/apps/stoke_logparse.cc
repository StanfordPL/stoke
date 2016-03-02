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
#include "src/cfg/cfg.h"
#include "src/expr/expr.h"
#include "src/expr/expr_parser.h"
#include "src/tunit/tunit.h"
#include "src/cost/cost.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace chrono;

auto& io = Heading::create("Input Options:");

auto& log_input_arg = ValueArg<string>::create("log")
                           .usage("<path/to/file.binlog>")
                           .description("Path to logfile")
                           .required();

inline void _assert(const char* expression, const char* file, int line)
{
 fprintf(stderr, "Assertion '%s' failed, file '%s' line '%d'.", expression, file, line);
 abort();
}
 
#define ASSERT(EXPRESSION) ((EXPRESSION) ? (void)0 : _assert(#EXPRESSION, __FILE__, __LINE__))

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
      ASSERT(false);
      return nullptr;
  }
}
class LogParser {
  bool fail;
  std::ifstream& in;
public:
  LogParser(std::ifstream& in) : fail(false), in(in) {
    string expect_header = "Stoke Binary Log 0.2\n";
    char head[21];
    in.read(head, 21);
    if (!(in.good() && std::string(head, head+21) == expect_header)) {
      fail = true;
    }
  }
  bool failed() {
    return fail;
  }
  void read_log(ExperimentSearchState& state) {
    while(in.good()) {
      int result_tag, cost_size, move_type;
      read_header_byte(result_tag, cost_size, move_type);
      if (in.eof())
        break;
      switch (result_tag) {
        case 0: // proposal that didn't succeed
          state.iteration++;
          break;
        case 1: { // succeeded but not accepted
          int64_t cost_diff = read_cost_diff(cost_size);
          state.iteration++;
          read_move_descriptor(move_type, false, state);
          break;
        }
        case 2: { // accepted
          int64_t cost_diff = read_cost_diff(cost_size);
          state.iteration++;
          state.current_cost += cost_diff;
          read_move_descriptor(move_type, true, state);
          break;
        }
        case 3: // checkpoint!
          read_checkpoint(state);
          break;
      }
    }
  }
  void read_header_byte(int& result, int& cost_size, int& move_type) {
    uint8_t byte = read_byte();
    result = byte & 0x3;
    cost_size = (byte >> 2) & 0x3;
    move_type = (byte >> 4) & 0x0F;
    ASSERT (0 <= result && result < 4);
    ASSERT (0 <= cost_size && cost_size < 4);
    ASSERT (0 <= move_type && move_type < 16);
  }
  void read_checkpoint(ExperimentSearchState& state) {
    //std::cout << "Checkpoint at offset " << in.tellg() << endl;
    uint64_t iteration;
    uint64_t cost;
    string code_str;
    uint32_t code_size;
    in.read((char*)&iteration, 8);
    in.read((char*)&cost, 8);
    in.read((char*)&code_size, 4);
    code_str = string(code_size, '\0');
    in.read((char*)&code_str[0], code_size);
    //std::cout << "I:" << iteration << " C:" << cost << endl;
    
    // Compare to state:
    
    if (state.iteration == (size_t)-1) {
      state.iteration = iteration;
      state.current_cost = cost;
      stringstream ss{code_str};
      Code code;
      code.read_att(ss);
      state.current = Cfg(TUnit(code));
      ASSERT(state.current.get_function().check_invariants());
    } else {
      ASSERT(iteration == state.iteration);
      ASSERT(cost == state.current_cost);
      stringstream ss{};
      state.current.get_function().get_code().write_att(ss);
      if (ss.str() != code_str) {
        std::cout << "Computed: " << endl << ss.str() <<endl;
        std::cout << "But wanted from checkpoint: " << endl << code_str << endl;
      }
      ASSERT(ss.str() == code_str);
      
    }
  }
  void read_move_descriptor(int move_type, bool apply, ExperimentSearchState& state) {
    size_t index0, index1;
    Instruction instr{NOP};
    Code& code = state.current.get_function().get_code();
    //std::cout << "Processing " << nameForMoveType(move_type) << endl;
    switch(move_type) {
      case 0: { // AddNops
        ASSERT(false);
        break;
      }
      case 1: { // Delete
        ASSERT(false);
        break;
      }
      case 2: { // Instruction
        read_instruction_index(index0);
        ASSERT(index0 < code.size());
        read_instruction(instr);
        if (apply) {
          //std::cout << "replacing " << index0 << " with " << instr << endl;
          code[index0] = instr;
        }
        break;
      }
      case 3: { // Opcode
        read_instruction_index(index0);
        ASSERT(index0 < code.size());
        size_t arity;
        Opcode opcode;
        read_opcode_arity(opcode, arity);
        if (apply) {
          //std::cout << "setting opcode to " << opcode << " at " << index0 <<std::endl;
          Instruction instr = code[index0];
          instr.set_opcode(opcode);
          state.current.get_function().replace(index0, instr, false, false);
        }
        break;
      }
      case 4: { // OpcodeWidth
        read_instruction_index(index0);
        ASSERT(index0 < code.size());
        size_t arity;
        Opcode opcode;
        read_opcode_arity(opcode, arity);
        bool full_instr_specified = arity != code[index0].arity();
        if (full_instr_specified) {
          read_instruction(instr);
        }
        if (apply) {
          if (full_instr_specified)
            state.current.get_function().replace(index0, instr, false, false);
          else {
            instr = code[index0];
            instr.set_opcode(opcode);
            state.current.get_function().replace(index0, instr, false, false);
          }
        }
        break;
      }
      case 5: { // Operand
        Operand operand = Constants::rax();
        size_t diff_index;
        read_instruction_index(index0);
        ASSERT(index0 < code.size());
        read_instruction_index(diff_index);
        read_operand(operand);
        if (apply) {
          //std::cout << "Operand" << endl;
          //std::cout << code[index0] << endl;
          //std::cout << diff_index << endl;
          //std::cout << index0 << endl;
          ASSERT(diff_index < code[index0].arity());
          code[index0].set_operand(diff_index, operand);
        }
        break;
      }
      case 6: { // LocalSwap
        read_instruction_index(index0);
        read_instruction_index(index1);
        ASSERT(index0 < code.size() && index1 < code.size());
        if (apply) {
          state.current.get_function().swap(index0, index1);
        }
        break;
      }
      case 7: { // GlobalSwap
        read_instruction_index(index0);
        read_instruction_index(index1);
        ASSERT(index0 < code.size() && index1 < code.size());
        if (apply) {
          state.current.get_function().swap(index0, index1);
        }
        break;
      }
      case 8: { // Rotate
        read_instruction_index(index0);
        read_instruction_index(index1);
        ASSERT(index0 < code.size() && index1 < code.size());
        if (apply) {
          if (index0 < index1)
            state.current.get_function().rotate_left(index0, index1);
          else
            state.current.get_function().rotate_right(index1, index0);
        }
        break;
      }
    }
    if (apply)
      state.current.recompute();
  }
  void read_operand(Operand& operand) {
    in.read((char*)&operand, 16);
  }
  void read_opcode_arity(Opcode& opcode, size_t& arity) {
    uint16_t val = read_int16();
    arity = val >> 12;
    opcode = (Opcode)(((uint32_t)val) & 0xFFF);
  }
  void read_instruction(x64asm::Instruction& ins) {
    size_t arity;
    Opcode op;
    read_opcode_arity(op, arity);
    ins.set_opcode(op);
    ASSERT(ins.arity() == arity);
    for(size_t i = 0; i < (size_t)arity; i++) {
      Operand operand = Constants::rax();
      read_operand(operand);
      ins.set_operand(i, operand);
    }
  }
  void read_instruction_index(size_t& i) {
    i = read_byte();
  }
  uint8_t read_byte() {
    uint8_t byte;
    in.read((char*)&byte, 1);
    return byte;
  }
  uint32_t read_int32() {
    uint32_t i;
    in.read((char*)&i, 4);
    return i;
  }
  uint16_t read_int16() {
    uint16_t i;
    in.read((char*)&i, 2);
    return i;
  }
  int64_t read_cost_diff(int cost_size) {
    if (cost_size == 0)
      return 0;
    if (cost_size == 1)
      return (int8_t)read_byte();
    if (cost_size == 2)
      return (int32_t)read_int32();
    ASSERT(false);
    return 0;
  }
};

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  Console::msg() << "Loading " << log_input_arg.value() << endl;
  std::ifstream searchlog{log_input_arg.value(), std::ios_base::binary};
  LogParser parser{searchlog};
  if (parser.failed())
    Console::error(1) << "Failed to load header" << endl;
  Console::msg() << "Parsing..." << endl;
  ExperimentSearchState state;
  state.iteration = -1;
  parser.read_log(state);
  Console::msg() << "Done." << endl;
  return 0;
}
