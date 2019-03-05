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

#include <iostream>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/symstate/simplify.h"
#include "src/symstate/pretty_visitor.h"
#include "src/symstate/print_visitor.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"
#include "tools/gadgets/validator.h"
#include "tools/gadgets/testcases.h"
#include "src/validator/strata_support.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

struct CodeReader {
  void operator()(std::istream& is, Code& t) {
    is >> t;
  }
};

struct CodeWriter {
  void operator()(std::ostream& os, const Code& t) {
    os << t;
  }
};

auto& input_header = Heading::create("More Input Formats:");

auto& code_arg = ValueArg<Code, CodeReader, CodeWriter>::create("code")
                 .description("Input code directly");

auto& dbg = Heading::create("Formula Printing Options:");
auto& only_live_out_arg = FlagArg::create("only_live_outs")
                          .description("Only show live out registers");
auto& show_unchanged_arg = FlagArg::create("show_unchanged")
                           .description("Show the formula for unchanged registers");
auto& use_smtlib_format_arg = FlagArg::create("smtlib_format")
                              .description("Show formula in smtlib format");
auto& use_prefix_format_arg = FlagArg::create("prefix_format")
                              .description("Show formula in prefix format");
auto& no_simplify_arg = FlagArg::create("no_simplify")
                        .description("Don't simplify formulas before printing them.");

cpputil::ValueArg<std::string>& strata_path_arg =
  cpputil::ValueArg<std::string>::create("strata_path")
  .usage("<path/to/dir>")
  .description("The path to the directory with the strata circuits (a collection of .s files)")
  .default_val("");

auto& keep_imm_symbolic_arg =
  FlagArg::create("keep_imm_symbolic")
  .description("Should immediates be kept symbolic?");

auto& opc_arg = ValueArg<string>::create("opc")
                .description("The opcode to consider;  use opcode_number to indicate an imm8 argument");

auto& keep_quiet_arg =
  FlagArg::create("keep_quiet")
  .description("No circuit output");

template <typename T>
string out_padded(T t, size_t min_length, char pad = ' ') {
  stringstream ss;
  ss << (*t);
  size_t len = ss.str().size();
  for (size_t i = 0; i < (min_length - len); i++) {
    ss << pad;
  }
  return ss.str();
}

/** Returns bit pattern consisting of 0s and ending with 'ones' many 1s. */
uint64_t mask(uint16_t ones) {
  if (ones == 0) return 0;
  if (ones == 64) return -1;
  return (1ULL << ones) - 1;
}

uint64_t read_const(const SymBitVectorAbstract* const s) {
  auto c = (SymBitVectorConstant*)s;
  return c->constant_ & mask(c->size_);
}

bool is_zero(const SymBitVectorAbstract* const b) {
  return (b->type() == SymBitVector::CONSTANT) && read_const(b) == 0;
}

bool is_one(const SymBitVectorAbstract* const b) {
  return  (b->type() == SymBitVector::CONSTANT) && read_const(b) == 1;
}

template <typename T>
bool has_changed(T reg, SymBitVector& sym) {
  stringstream ss;
  ss << (*reg);
  if (sym.type() == SymBitVector::Type::VAR) {
    const SymBitVectorVar* const var = static_cast<const SymBitVectorVar* const>(sym.ptr);
    if (var->get_name() == ss.str()) return false;
  }

  if (sym.type() == SymBitVector::Type::ITE) {
    const SymBitVectorIte* const ite = static_cast<const SymBitVectorIte*
                                       const>(sym.ptr) ;
    const SymBoolAbstract* const cond = ite->cond_;
    auto var =  dynamic_cast<const SymBoolVar* const>(cond);
    if (NULL != var && is_one(ite->a_) && is_zero(ite->b_)) {
      if ((var->get_name() == ss.str())) {
        return false;
      }
    }
  }

  return true;
}

template <typename T>
bool has_changed(T reg, SymBool& sym) {
  stringstream ss;
  ss << (*reg);
  if (sym.type() == SymBool::Type::VAR) {
    const SymBoolVar* const var = static_cast<const SymBoolVar* const>(sym.ptr);
    if (var->get_name() == ss.str()) return false;
  }
  return true;
}

int main(int argc, char** argv) {

  // not actually required here
  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  bool opcode_provided;
  if (opc_arg.has_been_provided()) {
    opcode_provided = true;
  }

  if (!opcode_provided && !code_arg.has_been_provided()) {
    Console::error() << "Either --code \"adcq %rax, %rbx\" or --opc adcq_r64_r64 required." << endl;
  }

  Code code;
  if (code_arg.has_been_provided()) {
    code = code_arg.value();
  }

  if (opc_arg.has_been_provided()) {
    auto instr = strata_get_instruction_from_string(opc_arg.value());
    code.push_back(instr);
  }

  if (!keep_quiet_arg.value()) {
    Console::msg() << "code: " << code << endl << endl;
    Console::msg() << "  maybe read:      " << code.maybe_read_set() << endl;
    Console::msg() << "  must read:       " << code.must_read_set() << endl;
    Console::msg() << "  maybe write:     " << code.maybe_write_set() << endl;
    Console::msg() << "  must write:      " << code.must_write_set() << endl;
    Console::msg() << "  maybe undef:     " << code.maybe_undef_set() << endl;
    Console::msg() << "  must undef:      " << code.must_undef_set() << endl;
    Console::msg() << "  required flags:  " << code.required_flags() << endl;

    Console::msg() << endl;
  }

  // build initial state
  SymState state;
  TrivialMemory* mem = NULL;
  state = SymState("", true);
  mem = new TrivialMemory();
  state.memory = mem;

  // Useful only for immediates
  if (keep_imm_symbolic_arg.value()) {
    state.set_keep_imm_symbolic();
  }

  // test validator support
  ComboHandler ch;
  for (auto it : code) {
    if (it.get_opcode() == Opcode::LABEL_DEFN) continue;
    if (it.get_opcode() == Opcode::RET) break; // only go until first break
    if (ch.get_support(it) == Handler::SupportLevel::NONE) {
      Console::error() << "Instruction unsupported: " << it << endl;
      exit(0);
    }
  }

  // compute formula
  bool mem_fetch_from_same_address = true;
  size_t line = 0;
  for (auto it : code) {
    if (it.get_opcode() == Opcode::LABEL_DEFN) continue;
    if (it.get_opcode() == Opcode::RET) break;
    if (it.get_opcode() == Opcode::POP_M16 || it.get_opcode() == Opcode::POP_M64) {
      mem_fetch_from_same_address = false;
    }
    state.set_lineno(line);
    ch.build_circuit(it, state);
    if (ch.has_error()) {
      break;
    }
    line++;
  }

  if (ch.has_error()) {
    Console::error() << "Symbolic execution failed: " << ch.error() << endl;
  }

  if (keep_quiet_arg.value()) {
    return 0;
  }

  Console::msg() << "Formula:" << endl;
  Console::msg() << endl;

  SymPrettyVisitor pretty(Console::msg());
  SymPrintVisitor smtlib(Console::msg());

  SolverGadget solver;
  auto print = [&solver, &smtlib, &pretty](const auto cc) {
    auto c = SymSimplify().simplify(cc);
    if (no_simplify_arg.value()) {
      c = cc;
    }
    if (use_smtlib_format_arg.value()) {
      std::cout << solver.getZ3Formula(c);
      std::cout << "\n";
    } else if (use_prefix_format_arg.value()) {
      smtlib((c));
    } else {
      pretty((c));
    }
  };

  // print symbolic state
  bool printed = false;
  RegSet rs = (RegSet::all_gps() | RegSet::all_ymms()) +
              Constants::eflags_cf() +
              Constants::eflags_sf() +
              Constants::eflags_zf() +
              Constants::eflags_of() +
              Constants::eflags_pf() +
              Constants::eflags_af();

  for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    auto val = state.lookup(*gp_it);
    if (!show_unchanged_arg.value() && !has_changed(gp_it, val)) continue;
    Console::msg() << out_padded(gp_it, 7) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    auto val = state.lookup(*sse_it);
    if (!show_unchanged_arg.value() && !has_changed(sse_it, val)) continue;
    Console::msg() << out_padded(sse_it, 7) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {

    //auto val = state.lookup_bv_flags(*flag_it);
    SymBool val = state[*flag_it];
    if (!show_unchanged_arg.value() && !has_changed(flag_it, val)) continue;
    Console::msg() << out_padded(flag_it, 7) << ": ";
    print(val);
    Console::msg() << endl;
    printed = true;
  }
  if (printed) cout << endl;
  printed = false;

  // check equivalence of two circuits for a given register
  auto is_eq = [&solver](auto a_in, auto b_in, stringstream& explanation) {
    auto a = (a_in);
    auto b = (b_in);

    SymBool eq = a == b;
    SymPrettyVisitor pretty(explanation);
    bool res = solver.is_sat({ !eq });
    if (!res) {
      return true;
    }
    return false;
  };



  // print memory reads and writes
  if (mem != NULL) {
    auto reads = mem->get_reads();
    auto writes = mem->get_writes();
    if (reads.size() > 0) {
      printed = true;
      cout << "Information about memory reads:" << endl;
      bool firstInstance = true;
      size_t sZ;
      SymBitVector sA;

      for (auto loc : reads) {
        cout << "  Value ";
        print(loc.value);
        cout << " (" << loc.size << " bytes)" << endl;
        cout << "    was read at address ";
        print(loc.address);
        cout << "." << endl;

        // Check if all the mem access are from same address and of same size
        if (mem_fetch_from_same_address) {
          if (firstInstance) {
            sZ =   loc.size;
            sA = loc.address;
            firstInstance = false;
          } else {
            if (loc.size != sZ) {
              std::cout << "\ninfo: Loc Size Mismatch\n\n";
            }
            stringstream ss;
            if (!is_eq(sA, loc.address, ss)) {
              std::cout << "\ninfo: Loc Address Mismatch\n\n";
            }
          }
        }
      }
    }

    if (printed) cout << endl;
    printed = false;
    if (writes.size() > 0) {
      printed = true;
      cout << "Information about memory writes:" << endl;
      bool firstInstance = true;
      size_t sZ;
      SymBitVector sA;

      for (auto loc : writes) {
        cout << "  Address ";
        print(loc.address);
        cout << " was updated to" << endl;
        cout << "    Value ";
        print(loc.value);
        cout << " (" << loc.size << " bytes)." << endl;

        // Check if all the mem access are from same address and of same size
        if (mem_fetch_from_same_address) {
          if (firstInstance) {
            sZ =   loc.size;
            sA = loc.address;
            firstInstance = false;
          } else {
            assert(loc.size == sZ && "\ninfo: Loc Size Mismatch");
            stringstream ss;
            assert(is_eq(sA, loc.address, ss) && "\ninfo: Loc Address Mismatch");
          }
        }
      }
    }
    if (printed) cout << endl;
    printed = false;
  }

  Console::msg() << "sigfpe  : ";
  print(state.sigfpe);
  Console::msg() << endl;
  Console::msg() << "sigbus  : ";
  print(state.sigbus);
  Console::msg() << endl;
  Console::msg() << "sigsegv : ";
  print(state.sigsegv);
  Console::msg() << endl;

  return 0;
}
