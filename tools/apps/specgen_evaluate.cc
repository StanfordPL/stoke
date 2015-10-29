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
#include <fstream>
#include <iostream>
#include <random>
#include <map>
#include <set>
#include <string>
#include <vector>
#include <cassert>

#include "src/ext/cpputil/include/command_line/command_line.h"
#include "src/ext/cpputil/include/signal/debug_handler.h"
#include "src/ext/cpputil/include/io/filterstream.h"
#include "src/ext/cpputil/include/io/column.h"
#include "src/ext/cpputil/include/io/console.h"

#include "src/ext/x64asm/src/reg_set.h"

#include "src/symstate/simplify.h"

#include "src/validator/straight_line.h"
#include "src/validator/handler.h"
#include "src/validator/handlers/combo_handler.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/validator.h"

#include "tools/apps/base.h"
#include "src/specgen/specgen.h"
#include "tools/apps/support.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;
using namespace boost;


Heading& functions_heading =
  cpputil::Heading::create("Auxiliary Function Options:");

auto& circuits_arg =
  ValueArg<string>::create("circuit_dir")
  .usage("<path/to/dir>")
  .description("Directory containing the strata circuits")
  .required();

auto& opcode_arg =
  ValueArg<string>::create("opcode")
  .usage("<opcode>")
  .description("The opcode to check.")
  .required();


class Counter : public SymVisitor<size_t, size_t> {
public:
  Counter(size_t c) : constant_(c) {}
  Counter() : constant_(0) {}
  virtual size_t operator()(const SymBitVector& bv) {
    return SymVisitor<size_t, size_t>::operator()(bv.ptr);
  }
  virtual size_t operator()(const SymBool& bv) {
    return SymVisitor<size_t, size_t>::operator()(bv.ptr);
  }
  virtual size_t operator()(const SymBitVectorAbstract * const bv) {
    // return 0 if we have already seen this one
    if (seen_bits_.find((SymBitVectorAbstract*)bv) != seen_bits_.end()) return 0;
    seen_bits_.insert((SymBitVectorAbstract*)bv);
    return SymVisitor<size_t, size_t>::operator()(bv);
  }
  virtual size_t operator()(const SymBoolAbstract * const bv) {
    // return 0 if we have already seen this one
    if (seen_bool_.find((SymBoolAbstract*)bv) != seen_bool_.end()) return 0;
    seen_bool_.insert((SymBoolAbstract*)bv);
    return SymVisitor<size_t, size_t>::operator()(bv);
  }
  size_t visit_binop(const SymBitVectorBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return lhs + rhs + constant_;
  }
  size_t visit_binop(const SymBoolBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return lhs + rhs + constant_;
  }
  size_t visit_unop(const SymBitVectorUnop * const bv) {
    auto lhs = (*this)(bv->bv_);
    return lhs + constant_;
  }
  size_t visit_compare(const SymBoolCompare * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return lhs + rhs + constant_;
  }
  size_t visit(const SymBitVectorConstant * const bv) {
    return constant_;
  }
  size_t visit(const SymBitVectorExtract * const bv) {
    auto lhs = (*this)(bv->bv_);
    return lhs + constant_;
  }
  size_t visit(const SymBitVectorFunction * const bv) {
    size_t res = 0;
    for (size_t i = 0; i < bv->args_.size(); ++i) {
      auto arg = (*this)(bv->args_[i]);
      res += arg;
    }
    return res + constant_;
  }
  size_t visit(const SymBitVectorIte * const bv) {
    auto c = (*this)(bv->cond_);
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    return c + lhs + rhs + constant_;
  }
  size_t visit(const SymBitVectorSignExtend * const bv) {
    auto lhs = (*this)(bv->bv_);
    return lhs + constant_;
  }
  size_t visit(const SymBitVectorVar * const bv) {
    return constant_;
  }
  size_t visit(const SymBoolFalse * const b) {
    return constant_;
  }
  size_t visit(const SymBoolNot * const b) {
    auto lhs = (*this)(b->b_);
    return lhs;
  }
  size_t visit(const SymBoolTrue * const b) {
    return constant_;
  }
  size_t visit(const SymBoolVar * const b) {
    return constant_;
  }

private:
  size_t constant_;
  std::set<SymBoolAbstract*> seen_bool_;
  std::set<SymBitVectorAbstract*> seen_bits_;
};

class NodeCounter : public Counter {
public:
  NodeCounter() : Counter(1) {}
};

class UninterpretedFunctionCounter : public Counter {
public:
  size_t visit(const SymBitVectorFunction * const bv) {
    size_t res = 0;
    for (size_t i = 0; i < bv->args_.size(); ++i) {
      auto arg = (*this)(bv->args_[i]);
      res += arg;
    }
    return res + 1;
  }
};

class MulDivCounter : public Counter {
public:
  size_t visit_binop(const SymBitVectorBinop * const bv) {
    auto lhs = (*this)(bv->a_);
    auto rhs = (*this)(bv->b_);
    if (bv->type() == SymBitVector::DIV ||
        bv->type() == SymBitVector::MOD ||
        bv->type() == SymBitVector::MULT ||
        bv->type() == SymBitVector::SIGN_DIV ||
        bv->type() == SymBitVector::SIGN_MOD) {
      return lhs + rhs + 1;
    }
    return lhs + rhs;
  }
};

int main(int argc, char** argv) {

  // not actually required here
  target_arg.required(false);

  CommandLineConfig::strict_with_convenience(argc, argv);

  auto strata_path = circuits_arg.value();
  auto strata_handler = StrataHandler(strata_path);

  Opcode opcode;
  if (!(stringstream(opcode_arg.value()) >> opcode)) {
    Console::error(1) << "Failed to parse opcode '" << opcode_arg.value() << "'." << endl;
  }
  auto instr = get_instruction(opcode);

  if (strata_handler.get_support(instr) == Handler::SupportLevel::NONE) {
    cout << "strata does not support '" << instr << "'." << endl;
    exit(1);
  }

  // build circuit
  SymState strata_state("", true);
  strata_handler.build_circuit(instr, strata_state);

  if (strata_handler.has_error()) {
    cout << "strata handler produced an error: " << strata_handler.error() << endl;
    exit(1);
  }

  x64asm::RegSet rs =
    (x64asm::RegSet::all_gps() | x64asm::RegSet::all_ymms()) +
    x64asm::eflags_cf + x64asm::eflags_of + x64asm::eflags_pf +
    x64asm::eflags_zf + x64asm::eflags_sf;// + x64asm::eflags_af;

  NodeCounter node_counter;
  size_t nodes = 0;

  UninterpretedFunctionCounter uif_counter;
  size_t uifs = 0;

  MulDivCounter mul_counter;
  size_t muls = 0;

  for (auto gp_it = rs.gp_begin(); gp_it != rs.gp_end(); ++gp_it) {
    auto circuit = SymSimplify::simplify(strata_state.lookup(*gp_it));
    nodes += node_counter(circuit);
    uifs += uif_counter(circuit);
    muls += mul_counter(circuit);
  }
  for (auto sse_it = rs.sse_begin(); sse_it != rs.sse_end(); ++sse_it) {
    auto circuit = SymSimplify::simplify(strata_state.lookup(*sse_it));
    nodes += node_counter(circuit);
    uifs += uif_counter(circuit);
    muls += mul_counter(circuit);
  }
  for (auto flag_it = rs.flags_begin(); flag_it != rs.flags_end(); ++flag_it) {
    auto circuit = SymSimplify::simplify(strata_state[*flag_it]);
    nodes += node_counter(circuit);
    uifs += uif_counter(circuit);
    muls += mul_counter(circuit);
  }

  auto circuit = SymSimplify::simplify(strata_state.sigfpe);
  nodes += node_counter(circuit);
  uifs += uif_counter(circuit);
  muls += mul_counter(circuit);
  circuit = SymSimplify::simplify(strata_state.sigsegv);
  nodes += node_counter(circuit);
  uifs += uif_counter(circuit);
  muls += mul_counter(circuit);
  circuit = SymSimplify::simplify(strata_state.sigbus);
  nodes += node_counter(circuit);
  uifs += uif_counter(circuit);
  muls += mul_counter(circuit);

  cout << uifs << "," << muls << "," << nodes << endl;
}
