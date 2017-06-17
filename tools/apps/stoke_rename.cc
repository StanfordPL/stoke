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

#include "src/validator/obligation_checker.h"
#include "src/validator/bounded.h"

#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/variable.h"

#include "tools/gadgets/functions.h"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/target.h"

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;

auto& verbose = FlagArg::create("verbose");

auto& no_verify = FlagArg::create("no_verify");

auto& output = ValueArg<string>::create("output")
               .description("file to write rewritten file to (or original, if verification fails)")
               .default_val("");

class RenameMap {

  /** This class encapsulates a somewhat ugly data structure that tracks how
   * registers get renamed.  It's comprised of two maps, one for general
   * purpose registers and one for SSE registers.  We use the values 0-15 to
   * represents x64asm::r64s and x64asm::ssses in order.  We use the value -1
   * to describe an entry that doesn't have a defined mapping. By default, the
   * map starts undefined.  When we query it, we dynamically map registers in
   * order. */

public:

  /** Initialize map to undefined. */
  RenameMap() {
    for (size_t i = 0; i < 16; ++i) {
      gp_map[i] = -1;
      sse_map[i] = -1;
    }
  }

  /** Finish the mapping, leaving as many registers as possible mapping to
   * themslves. */
  void beautify() {

    vector<map<size_t, size_t>*> ms;
    ms.push_back(&this->gp_map);
    ms.push_back(&this->sse_map);
    for (map<size_t, size_t>* m : ms) {
      for (size_t i = 0; i < 16; ++i) {
        if (m->at(i) == (uint64_t)(-1)) {
          if (!index_taken(*m, i))
            (*m)[i] = i;
        }
      }
    }


    for (map<size_t, size_t>* m : ms) {
      for (size_t i = 0; i < 16; ++i) {
        if (m->at(i) == (uint64_t)(-1)) {
          (*m)[i] = get_free_index(*m);
        }
      }
    }

  }

  /** Apply the mapping to a code segment. */
  Code operator()(Code code) {
    for (size_t i = 0; i < code.size(); ++i) {
      auto instr = code[i];
      code[i] = (*this)(instr);
    }
    return code;
  }

  /** Apply the mapping to one instruction. */
  Instruction operator()(Instruction instr) {
    for (size_t i = 0; i < instr.arity(); ++i) {
      Operand op = instr.get_operand<Operand>(i);
      Operand new_op = (*this)(op);
      instr.set_operand(i, new_op);
    }
    return instr;
  }

  /** Preprocess a code segment */
  void preprocess(const Code& code) {
    for (size_t i = 0; i < code.size(); ++i) {
      preprocess(code[i]);
    }
  }

  /** Preprocess an instruction to learn constraints. */
  void preprocess(const Instruction& instr) {
    auto implicit = instr.implicit_maybe_read_set() |
                    instr.implicit_maybe_write_set() | instr.implicit_maybe_undef_set();
    for (auto r = implicit.gp_begin(); r != implicit.gp_end(); ++r) {
      uint64_t index = (uint64_t)(*r);
      gp_map[index] = index;
    }
    for (auto r = implicit.sse_begin(); r != implicit.sse_end(); ++r) {
      uint64_t index = (uint64_t)(*r);
      sse_map[index] = index;
    }
  }

  /** Here's where the real work happens.*/
  R operator()(R& r) {
    uint64_t index = (uint64_t)(r);
    if (gp_map[index] == (uint64_t)(-1)) {
      gp_map[index] = get_free_gp_index();
    }
    index = gp_map[index];

    // TODO: handle RHs
    switch (r.size()) {
    case 64:
      return r64s[index];
    case 32:
      return r32s[index];
    case 16:
      return r16s[index];
    case 8:
      return r8s[index];
    }
    return r;
  }

  Operand operator()(Operand& op) {

    if (op.is_gp_register()) {
      return (*this)(reinterpret_cast<R&>(op));
    } else if (op.is_sse_register()) {
      uint64_t index = (uint64_t)(reinterpret_cast<Sse&>(op));
      if (sse_map[index] == (uint64_t)(-1)) {
        sse_map[index] = get_free_sse_index();
      }
      index = sse_map[index];
      switch (op.size()) {
      case 128:
        return xmms[index];
      case 256:
        return ymms[index];
      }
    } else if (op.is_typical_memory()) {
      auto mem = reinterpret_cast<Mem&>(op);
      if (mem.contains_base())  {
        auto base = mem.get_base();
        mem.set_base((*this)(base));
      }
      if (mem.contains_index())  {
        auto index = mem.get_index();
        mem.set_index((*this)(index));
      }
      return mem;
    }
    return op;
  }

  RenameMap invert() {

    RenameMap inverse;

    for (size_t i = 0; i < 16; ++i) {

      if (gp_map[i] != (uint64_t)(-1))
        inverse.gp_map[gp_map[i]] = i;

      if (sse_map[i] != (uint64_t)(-1))
        inverse.sse_map[sse_map[i]] = i;
    }
    return *this;
  }

  void print() {

    for (size_t i = 0; i < 16; ++i)
      cout << r64s[i] << " -> " << r64s[gp_map[i]] << endl;
    for (size_t i = 0; i < 16; ++i)
      cout << ymms[i] << " -> " << ymms[sse_map[i]] << endl;
  }

private:

  size_t get_free_gp_index() {
    return get_free_index(this->gp_map);
  }

  size_t get_free_sse_index() {
    return get_free_index(this->sse_map);
  }

  bool index_taken(map<size_t, size_t>& m, size_t n) {
    for (size_t i = 0; i < 16; ++i) {
      if (m.at(i) == n)
        return true;
    }
    return false;
  }

  size_t get_free_index(map<size_t,size_t>& m) {
    for (size_t i = 0; i < 16; ++i) {
      if (!index_taken(m, i))
        return i;
    }
    return -1;
  }

  map<size_t, size_t> gp_map;
  map<size_t, size_t> sse_map;

};

/** Take a reg-set and the rename map and build an invariant expressing the
 * equivalence of registers. */

// (helper for build_invariant)
void generate_invariant(ConjunctionInvariant* ci, Operand r, Operand r2) {
  for (size_t i = 0; i < r.size()/64; ++i) {
    Variable t1(r, false);
    t1.coefficient = 1;

    Variable t2(r2, true);
    t2.coefficient = -1;

    vector<Variable> terms;
    terms.push_back(t1);
    terms.push_back(t2);

    EqualityInvariant* ei = new EqualityInvariant(terms, 0);
    ci->add_invariant(ei);
  }
}


Invariant* build_invariant(RenameMap& rm, RegSet rs) {
  ConjunctionInvariant* ci = new ConjunctionInvariant();

  for (auto r = rs.gp_begin(); r != rs.gp_end(); ++r) {
    auto r2 = *r;
    generate_invariant(ci, r2, rm(r2));
  }
  for (auto r = rs.sse_begin(); r != rs.sse_end(); ++r) {
    auto r2 = *r;
    generate_invariant(ci, r2, rm(r2));
  }

  auto mi = new MemoryEqualityInvariant();
  ci->add_invariant(mi);

  return static_cast<Invariant*>(ci);
}

int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);
  DebugHandler::install_sigsegv();
  DebugHandler::install_sigill();

  FunctionsGadget aux_fxns;
  TargetGadget target(aux_fxns, false);
  SolverGadget solver;
  ObligationChecker obc(solver);
  obc.set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);

  // Build the mapping and rename registers

  RenameMap rm;
  auto target_code = target.get_code();

  rm.preprocess(target_code);
  auto rewrite_code = rm(target_code);
  Cfg rewrite(rewrite_code, target.def_ins(), target.live_outs());

  rm.beautify();

  if (verbose.value()) {
    Console::msg() << "********************************************************************" << endl << endl;
    Console::msg() << "Original" << endl << endl << target.get_function() << endl << endl;
    Console::msg() << "Rewrite" << endl << endl << rewrite.get_function() << endl << endl;

    cout << "MAPPING" << endl;
    rm.print();
    cout << endl;
  }

  // Invoke the verifier
  if (!no_verify.value()) {
    auto target_paths = CfgPaths::enumerate_paths(target, 1, target.get_entry(), target.get_exit());
    auto rewrite_paths = CfgPaths::enumerate_paths(target, 1, target.get_entry(), target.get_exit());

    auto invariant = build_invariant(rm, RegSet::universe());

    if (verbose.value())
      cout << "INVARIANT: " << *invariant << endl;

    bool verify_success = true;
    try {
      for (auto tp : target_paths) {
        for (auto rp : rewrite_paths) {
          auto res = obc.check(static_cast<Cfg&>(target),
                               rewrite, target.get_entry(), rewrite.get_entry(), tp, rp, *invariant, *invariant);

          if (!res) {
            verify_success = false;

            if (verbose.value() && obc.checker_has_ceg()) {
              cout << "Counterexample for original/rewrite start states" << endl;
              cout << "Original:" << endl;
              cout << obc.checker_get_target_ceg() << endl << endl;
              cout << "Rewrite: " << endl;
              cout << obc.checker_get_target_ceg() << endl;
              cout << endl << endl;
            }

            break;
          }
        }
      }
    } catch (validator_error e) {
      verify_success = false;
      if (verbose.value()) {
        Console::msg() << "Validation error: " << e.get_message() << endl;
      }
    }

    if (verbose.value()) {
      if (verify_success) {
        Console::msg() << "Verified!" << endl;
      } else {
        Console::msg() << "Verification failed!" << endl;
        rewrite = target;
      }
    }
  }

  // Write the output
  if (output.value().size()) {
    ofstream ofs(output.value());
    ofs << rewrite.get_function() << endl;
    ofs.close();
  } else {
    cout << rewrite.get_function() << endl;
  }

  return 0;
}
