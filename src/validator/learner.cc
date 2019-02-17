// Copyright 2013-2016 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the License);
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an AS IS BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include <chrono>

#include "src/state/cpu_state.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/disjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/flag_set.h"
#include "src/validator/invariants/implication.h"
#include "src/validator/invariants/inequality.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/memory_null.h"
#include "src/validator/invariants/mod_2n.h"
#include "src/validator/invariants/nonzero.h"
#include "src/validator/invariants/no_signals.h"
#include "src/validator/invariants/not.h"
#include "src/validator/invariants/pointer_null.h"
#include "src/validator/invariants/range.h"
#include "src/validator/invariants/sign.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/top_zero.h"
#include "src/validator/invariants/true.h"

#include "src/validator/learner.h"
#include "src/validator/null.h"

#define DEBUG_LEARNER(X) { if(1) { X } }

using namespace std;
using namespace stoke;
using namespace x64asm;


RegSet live_out_regs(const Cfg& cfg, Cfg::id_type s) {

  if (s == cfg.get_entry()) {
    return cfg.live_ins();
  } else if (s == cfg.get_exit()) {
    return cfg.live_outs();
  } else {
    assert(cfg.num_instrs(s) > 0);
    auto loc = Cfg::loc_type(s, cfg.num_instrs(s)-1);
    return cfg.live_outs(loc);
  }
}

RegSet def_in_regs(const Cfg& cfg, Cfg::id_type s) {

  if (s == cfg.get_entry()) {
    return cfg.def_ins();
  } else {
    assert(cfg.num_instrs(s) > 0);
    auto loc = Cfg::loc_type(s, cfg.num_instrs(s)-1);
    return cfg.def_ins(loc);
  }
}


vector<Variable> InvariantLearner::pick_variables(const Cfg& target,
    const Cfg& rewrite,
    Cfg::id_type target_block,
    Cfg::id_type rewrite_block,
    bool include_defin) {

  vector<Variable> variables;

  for (size_t k = 0; k < 2; ++k) {
    bool is_rewrite = k;
    auto& cfg = is_rewrite ? rewrite : target;
    auto& block = is_rewrite ? rewrite_block : target_block;

    auto regset = live_out_regs(cfg, block);
    if(include_defin) {
      auto defins = def_in_regs(cfg, block);
      regset = regset | defins;
    }
    for (auto r = regset.gp_begin(); r != regset.gp_end(); ++r) {
      if((*r).size() != 64) // TODO: revisit; what's the right thing to do here?
        continue;
      Variable v(*r, k);
      variables.push_back(v);
    }
    for (auto r = regset.sse_begin(); r != regset.sse_end(); ++r) {
      for (size_t i = 0; i < (*r).size()/64; ++i) {
        Variable v64(*r,k,8,i*8);
        variables.push_back(v64);
      }
    }
  }

  return variables;
}


vector<Variable> get_memory_variables(const Cfg& target, const Cfg& rewrite, RegSet target_regs, RegSet rewrite_regs) {

  set<Variable> results;

  set<x64asm::Mem> target_memory_operands;
  set<x64asm::Mem> rewrite_memory_operands;
  for(size_t k = 0; k < 2; ++k) {
    const Cfg* prog = k ? &rewrite : &target;
    auto& memory_operands = k ? rewrite_memory_operands : target_memory_operands;
    bool has_stack = false;
    auto code = prog->get_code();
    auto tunit = prog->get_function();
    for (size_t i = 0; i < code.size(); ++i) {
      auto instr = code[i];
      //cout << "  processing instr " << instr << endl;
      if (instr.is_explicit_memory_dereference()) {
        auto mem = instr.get_operand<x64asm::Mem>((size_t)instr.mem_index());
        if(mem.rip_offset()) {
          auto rip = tunit.hex_offset(i) + tunit.hex_size(i) + tunit.get_rip_offset();
          cout << "~~~ for " << instr << " rip offset = " << rip << endl;
          cout << "     hexoffset = " << tunit.hex_offset(i) << "  hexsize = " << tunit.hex_size(i) << " fileoffset = " << tunit.get_rip_offset() << endl;
          mem.set_disp(Imm32(mem.get_disp() + (int32_t)rip));
          mem.set_rip_offset(false);
        }
        //cout << "     - considering operand " << mem 
        //     << " of size " << mem.size() << " type " << mem.type() << endl;
        memory_operands.insert(mem);
      } else if (instr.is_push() || instr.is_pop()) {
        has_stack = true;
      }
    }

    if(has_stack) {
      int32_t max_stack_slots = 8;
      for(int32_t i = max_stack_slots*8; i > -max_stack_slots*8; i -= 8) {
        M64 m(rsp, Imm32(i));
        memory_operands.insert(m);
      }
    }
  }

  DEBUG_LEARNER(
  cout << "Inserted target operands include: " << endl;
  for(auto mem : target_memory_operands) {
    cout << "     - considering operand " << mem 
         << " of size " << mem.size() << " type " << mem.type() << endl;
  }
  cout << "Inserted rewrite operands include: " << endl;
  for(auto mem : rewrite_memory_operands) {
    cout << "     - considering operand " << mem 
         << " of size " << mem.size() << " type " << mem.type() << endl;
  }
  )

  for(size_t k = 0; k < 2; ++k) {

    auto& cfg = k ? rewrite : target;
    auto regs = k ? rewrite_regs : target_regs;
    auto memory_operands = k ? rewrite_memory_operands : target_memory_operands;

    for (auto mem : memory_operands) {

      if(mem.contains_base()) {
        if(!regs.contains(mem.get_base())) {
          continue;
        }
      }
      if(mem.contains_index()) {
        if(!regs.contains(mem.get_index())) {
          continue;
        }
      }

      if(mem.size() == 256) { 
        for (size_t offset : {
               0//,32,-32
             }) {

          // Make everything an M256
          M256 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
          //cout << "256 Inserting variable " << v << endl;
        }
      }

      if(mem.size() == 128) { 
        for (size_t offset : {
               0//,16,-16
             }) {

          // Make everything an M128
          M128 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
          //cout << "128 Inserting variable " << v << endl;
        }
      }

      if(mem.size() == 64) { 
        for (size_t offset : {
               0//,8,-8
             }) {

          // Make everything an M64
          M64 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
          //cout << "64 Inserting variable " << v << endl;
        }
      }

      if(mem.size() == 32) {
        for (size_t offset : {
               0//,4,-4
             }) {
          M32 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
          //cout << "32 Inserting variable " << v << endl;
        }
      }

      if(mem.size() == 16) {
        for (size_t offset : {
               0//,2,-2
             }) {

          M16 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
          //cout << "16 Inserting variable " << v << endl;
        }
      }

      if(mem.size() == 8) {
        for (size_t offset : {
               0//,1,-1
             }) {

          M8 mem_fixed(mem.get_seg(),
                       mem.get_base(),
                       mem.get_index(),
                       mem.get_scale(),
                       mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
          //cout << "8 Inserting variable " << v << endl;
        }
      }
    }
  }

  vector<Variable> condensed;
  condensed.insert(condensed.begin(), results.begin(), results.end());

  /*
  for(auto it : condensed) {
    cout << "Condensed includes " << it << endl;
  }
  */

  return condensed;
}


/** Return a set of possible memory null invariants */
vector<std::shared_ptr<NonzeroInvariant>> InvariantLearner::build_memory_null_invariants(RegSet target_regs, RegSet rewrite_regs) const {
  vector<std::shared_ptr<NonzeroInvariant>> invariants;

  auto memory_vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
  for (auto v : memory_vars) {
    auto mni = std::make_shared<NonzeroInvariant>(v, false);
    invariants.push_back(mni);  

    mni = std::make_shared<NonzeroInvariant>(v, true);
    invariants.push_back(mni);
  }


  cout << "[learner][memory_null] Considering these invariants!" << endl;
  for (auto it : invariants) {
    cout << *it << endl;
  }

  return invariants;
}

/** Return a set of possible memory-register equalities */
vector<std::shared_ptr<EqualityInvariant>> InvariantLearner::build_memory_register_equalities(RegSet target_regs, RegSet rewrite_regs) const {

  set<size_t> mem_sizes;
  vector<std::shared_ptr<EqualityInvariant>> invariants;
  auto memory_vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
  for(auto mv : memory_vars) {
    mem_sizes.insert(mv.size);
    cout << "   considering mem var " << mv << endl;
  }
  for(auto it : mem_sizes) 
    cout << "   mem size seen: " << it << endl;

  vector<Variable> register_vars;
  for (size_t k = 0; k < 2; ++k) {
    auto& def_ins = k ? rewrite_regs : target_regs;
    for(size_t mem_size : mem_sizes) {
      for (auto r = def_ins.gp_begin(); r != def_ins.gp_end(); ++r) {
        if ((*r).size() >= mem_size*8) {
          Variable c(*r, k, mem_size, 0);
          register_vars.push_back(c);
          cout << "   considering variable " << c << endl;
        }
      }
      for (auto r = def_ins.sse_begin(); r != def_ins.sse_end(); ++r) {
        for (size_t i = 0; i < (*r).size()/(mem_size*8); ++i) {
          Variable c(*r,k,mem_size,i*mem_size);
          register_vars.push_back(c);
          cout << "   considering variable " << c << endl;
        }
      }
    }
  }

  for(auto mv : memory_vars) {
    for(auto rv : register_vars) {
      if(rv.size == mv.size) {
        mv.coefficient = 1;
        rv.coefficient = -1;
        auto inv = make_shared<EqualityInvariant>(vector<Variable>({rv,mv}),0);
        invariants.push_back(inv);
        cout << "Proposing " << *inv << endl;
      }
    }
    // look for equalities of stack-registers with memory locations
    /*
    for(auto mv2 : memory_vars) {
      if(!mv.is_stack() && !mv2.is_stack())
        continue;
      if(mv == mv2)
        continue;
      if(mv.size != mv2.size)
        continue;
      if(mv.is_rewrite == mv2.is_rewrite)
        continue;

      mv.coefficient = 1;
      mv2.coefficient = -1;
      auto inv = make_shared<EqualityInvariant>(vector<Variable>({mv,mv2}),0);
      invariants.push_back(inv);
      cout << "Proposing " << *inv << endl;
    }*/
  }

  return invariants;
}

/** Return a set of possible inequality invariants. */
vector<std::shared_ptr<InequalityInvariant>> InvariantLearner::build_inequality_invariants(RegSet target_regs, RegSet rewrite_regs, ImplicationGraph& graph) const {

  vector<std::shared_ptr<InequalityInvariant>> inequalities;

  // For now, let's look at unsigned target-target and rewrite-rewrite inequalities

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {

      if ((*i).size() == 64) {
        if(enable_shadow_)
          for (auto ghost : ghosts_) {
            Variable v(*i, k);
            auto a = std::make_shared<InequalityInvariant>(v, ghost, false, false); // v <= ghost (replacement)
            auto b = std::make_shared<InequalityInvariant>(v, ghost, true, false);  // v < ghost
            auto c = std::make_shared<InequalityInvariant>(ghost, v, false, false); // ghost <= v (replacement)
            auto d = std::make_shared<InequalityInvariant>(ghost, v, true, false);  // ghost < v  
            inequalities.push_back(a);
            inequalities.push_back(b);
            inequalities.push_back(c);
            inequalities.push_back(d);
            graph.add_replacement(b, a);
            graph.add_replacement(d, c);
          }
      }

      for (auto j = regs.gp_begin(); j != regs.gp_end(); ++j) {
        if (*i == *j)
          continue;
        if ((*i).size() != (*j).size())
          continue;

        if ((*i).size() == 32) {
          Variable v1(*i, k);
          Variable v2(*j, k);

          auto a = std::make_shared<InequalityInvariant>(v1, v2, false, false);
          auto b = std::make_shared<InequalityInvariant>(v1, v2, true, false);
          inequalities.push_back(a);
          inequalities.push_back(b);
          graph.add_replacement(b, a);

        } else if ((*i).size() == 64) {
          Variable v1(*i, k);
          Variable v2(*j, k);

          Variable v1_32(r32s[*i], k);
          Variable v2_32(r32s[*j], k);

          auto a = std::make_shared<InequalityInvariant>(v1, v2, false, false);
          auto b = std::make_shared<InequalityInvariant>(v1, v2, true, false);

          auto c = std::make_shared<InequalityInvariant>(v1_32, v2_32, false, false);
          auto d = std::make_shared<InequalityInvariant>(v1_32, v2_32, true, false);

          inequalities.push_back(a);
          inequalities.push_back(b);
          inequalities.push_back(c);
          inequalities.push_back(d);
          graph.add_replacement(b, a);
          graph.add_replacement(d, c);
        }
      }
    }
  }

  return inequalities;
}

// https://stackoverflow.com/questions/19738919/gcd-function-for-c
uint64_t InvariantLearner::euclid(uint64_t a, uint64_t b)
{
    while (b != 0)
    {
        a %= b;
        a ^= b;
        b ^= a;
        a ^= b;
    }

    return a;
}


vector<std::shared_ptr<EqualityInvariant>> InvariantLearner::build_modulo_invariants(
    RegSet target_regs, 
    RegSet rewrite_regs, 
    const vector<CpuState>& target_states, 
    const vector<CpuState>& rewrite_states) const {

  vector<std::shared_ptr<EqualityInvariant>> modulos;

  // For now, let's look at unsigned target-target and rewrite-rewrite modulo equalities
  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;
    const auto& states = k ? rewrite_states : target_states;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {

      // first, let's get gcd for all values for just this register
      uint64_t onereg_gcd = 0;
      uint64_t onereg_val = states[0][*i];
      for(auto& it : states) {
        auto value = it[*i] - onereg_val;
        if(value != 0) {
          if(onereg_gcd == 0)
            onereg_gcd = value;
          else
            onereg_gcd = euclid(onereg_gcd, value);
        }
      }
      if(onereg_gcd > 1) {
        Variable v(*i, k);
        v.coefficient = 1;
        auto terms = {v};
        auto inv = std::make_shared<EqualityInvariant>(terms, onereg_val % onereg_gcd, onereg_gcd);
        if(inv->check(target_states, rewrite_states))
          modulos.push_back(inv);
      }


      for (auto j = regs.gp_begin(); j != regs.gp_end(); ++j) {

        if(*i <= *j) // don't put this in loop guard: might not be in order?
          continue;

        /** collect all the differences. */
        vector<uint64_t> differences;
        for(auto& it : states) {
          differences.push_back(it[*i] - it[*j]);
        }

        /** get gcd of all differences of differences */
        uint64_t gcd = 0;
        uint64_t some_diff = differences[0];
        for(size_t s = 1; s < differences.size(); ++s) {
          auto difference = differences[s] - some_diff;
          if(difference != 0) {
            if(gcd == 0)
              gcd = difference;
            else
              gcd = euclid(gcd, difference);
          }

          if(gcd == 1)
            break;
        }

        /** if we have a gcd greater than 1, create an invariant. */
        if (gcd > 1) {
          Variable v(*i, k);
          v.coefficient = 1;
          Variable w(*j, k);
          w.coefficient = -1;
          auto terms = {v , w};
          some_diff = some_diff % gcd;
          auto inv = std::make_shared<EqualityInvariant>(terms, some_diff, gcd);
          if(inv->check(target_states, rewrite_states)) {
            modulos.push_back(inv);
          } 
        }

      }
    }
  }

  return modulos;
}

vector<std::shared_ptr<InequalityInvariant>> InvariantLearner::build_inequality_with_constant_invariants(
    RegSet target_regs, 
    RegSet rewrite_regs, 
    const vector<CpuState>& target_states, 
    const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());

  vector<std::shared_ptr<InequalityInvariant>> outputs;
  vector<Variable> variables;

  for(size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;
    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      Variable v(*i, k);
      variables.push_back(v);
    }

    if(enable_shadow_) {
      const Cfg& prog = k ? rewrite_ : target_;
      for(size_t i = 1; i < prog.num_blocks()-1; ++i) {
        Variable v = Variable::bb_ghost(i, k);
        variables.push_back(v);
      }
    }
  }

  auto memory_vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
  for(auto mv : memory_vars) {
    if(mv.is_stack())
      variables.push_back(mv);
  }

  uniform_int_distribution<size_t> dis(0, 100);

  for(auto& v1 : variables) {
    for(auto& v2 : variables) {
      if(v1 == v2)
        continue;
      if(v1.size != v2.size)
        continue;

      // look for invariants of the form
      // i + constant <= j   (i.e. constant <= j - i)
      //                     (i.e. min value for j-i)

      // i + constant >= j   (i.e. constant >= j - i)
      //                     (i.e. max value for j-i)

      /** collect all the differences. */
      uint64_t min_difference = (uint64_t)(-1);
      uint64_t max_difference = 0;
      uint64_t max_count = 0;
      uint64_t min_count = 0;
      for(size_t i = 0 ; i < target_states.size(); ++i) {


        size_t choice = dis(gen_);
        if(choice <= 10 && target_states.size() > 20)
          continue;
        
        auto a = v1.from_state(target_states[i], rewrite_states[i]);
        auto b = v2.from_state(target_states[i], rewrite_states[i]);
        uint64_t difference = b - a;
        //cout << "  difference " << difference << endl;
        if(difference > max_difference) {
          max_difference = difference;
          max_count = 1;
        } else if (difference == max_difference) {
          max_count++;
        }
        if(difference < min_difference) {
          min_difference = difference;
          min_count = 1;
        } else if (difference == min_difference) {
          min_count++;
        }
      }
      //cout << "  max " << max_difference << endl;
      //cout << "  min " << min_difference << endl;

      // i + constant <= j
      auto inv = std::make_shared<InequalityInvariant>(v1, v2, false, false, min_difference);
      outputs.push_back(inv);
      //cout << "  generating " << *inv << endl;

      // i + constant >= j   i.e.   j - constant <= i
      auto inv2 = std::make_shared<InequalityInvariant>(v2, v1, false, false, -max_difference);
      outputs.push_back(inv2);
      //cout << "  generating " << *inv2 << endl;
    }
  }

  return outputs;
}

/** Return invariants over the range of a variable. */
vector<std::shared_ptr<RangeInvariant>> InvariantLearner::build_range_invariants(
    RegSet target_regs, 
    RegSet rewrite_regs, 
    const vector<CpuState>& target_states, 
    const vector<CpuState>& rewrite_states) const {

  vector<std::shared_ptr<RangeInvariant>> ranges;
  vector<Variable> variables;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;
    for(auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      Variable v(*i, k);
      variables.push_back(v);
    }
  }

  auto mem_vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
  for(auto var : mem_vars) {
    if(var.is_stack())
      variables.push_back(var);
  }

  for(auto var : variables) {

    uint64_t min = (uint64_t)(-1);
    uint64_t max = 0;
    uint64_t min_count = 0;
    uint64_t max_count = 0;

    for(size_t i = 0; i < target_states.size(); ++i) {
      auto ts = target_states[i];
      auto rs = rewrite_states[i];

      auto value = var.from_state(ts, rs);
      if(value == max) {
        max_count++;
      } else if(value > max) {
        max = value;
        max_count = 1;
      }
      if(value == min) {
        min_count++;
      } if(value < min) {
        min = value;
        min_count = 1;
      }
    }

    if(min_count > 2) {
      auto inv = std::make_shared<RangeInvariant>(var, min, (uint64_t)(-1));
      assert(inv->check(target_states, rewrite_states));
      ranges.push_back(inv);
    }
    if(max_count > 2) {
      auto inv = std::make_shared<RangeInvariant>(var, 0, max);
      assert(inv->check(target_states, rewrite_states));
      ranges.push_back(inv);
    }
  }

  return ranges;
}

/** Return a set of possible lower-n bit invariants. */
vector<std::shared_ptr<Mod2NInvariant>> build_mod2n_invariants(RegSet target_regs, RegSet rewrite_regs) {

  vector<std::shared_ptr<Mod2NInvariant>> invariants;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      for (auto j = 1; j < 5; ++j) {
        Variable v(*i, k);
        invariants.push_back(std::make_shared<Mod2NInvariant>(v, j));
      }
    }
  }

  return invariants;
}

/** Return a set of sign invariants. */
vector<std::shared_ptr<SignInvariant>> build_sign_invariants(RegSet target_regs, RegSet rewrite_regs) {

  vector<std::shared_ptr<SignInvariant>> invariants;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      Variable v(*i, k);
      invariants.push_back(std::make_shared<SignInvariant>(v, true));
      invariants.push_back(std::make_shared<SignInvariant>(v, false));
    }
  }

  return invariants;
}

bool invariant_holds(std::shared_ptr<Invariant> invariant, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states) {

  for (size_t i = 0; i < target_states.size(); ++i)
    if (!invariant->check(target_states[i], rewrite_states[i]))
      return false;

  return true;
}

bool add_or_delete_inv(vector<std::shared_ptr<Invariant>>& invs, std::shared_ptr<Invariant> inv, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states, bool verbose = false);

bool add_or_delete_inv(std::shared_ptr<ConjunctionInvariant> conj, std::shared_ptr<Invariant> inv, const vector<CpuState>& ts, const vector<CpuState>& rs, bool verbose = false) {
  vector<std::shared_ptr<Invariant>> tmp;
  bool b = add_or_delete_inv(tmp, inv, ts, rs, verbose);
  for (auto it : tmp)
    conj->add_invariant(it);
  return b;
}

/** Returns true if the invariant is added. */
bool add_or_delete_inv(vector<std::shared_ptr<Invariant>>& invs, std::shared_ptr<Invariant> inv, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states, bool verbose) {
  if (invariant_holds(inv, target_states, rewrite_states)) {
    if (verbose)
      cout << "  Yes, " << *inv << " holds" << endl;
    invs.push_back(inv);
    return true;
  } else {
    if (verbose)
      cout << "  No, " << *inv << " does not hold" << endl;
    return false;
  }
}

vector<std::shared_ptr<Invariant>> build_flag_invariants(
  x64asm::RegSet target_regs,
  x64asm::RegSet rewrite_regs,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  DEBUG_LEARNER(cout << "target_regs: " << target_regs << endl;)
  DEBUG_LEARNER(cout << "rewrite_regs: " << rewrite_regs << endl;)

  vector<std::shared_ptr<Invariant>> inv;

  for(size_t k = 0; k < 2; ++k) {
    auto& regs = k ? rewrite_regs : target_regs;
    for (auto flag = regs.flags_begin(); flag != regs.flags_end(); ++flag) {

      // Generate target flag true
      // these leak memory it unused
      std::shared_ptr<Invariant> flag_true = std::make_shared<FlagSetInvariant>(*flag, k, false);
      std::shared_ptr<Invariant> flag_false = std::make_shared<FlagSetInvariant>(*flag, k, true);
      add_or_delete_inv(inv, flag_true, target_states, rewrite_states);
      add_or_delete_inv(inv, flag_false, target_states, rewrite_states);
    }
  }

  return inv;
}

std::pair<std::vector<CpuState>, std::vector<CpuState>> InvariantLearner::choose_tcs(
      const std::vector<CpuState>& target_states,
const std::vector<CpuState>& rewrite_states) {
  assert(target_states.size() == rewrite_states.size());

  //cout << "sample_tcs_ = " << sample_tcs_ << endl;
  if (sample_tcs_ == 0 || sample_tcs_ >= target_states.size()) {
    //cout << "Preserving all tcs" << endl;
    return pair<vector<CpuState>,vector<CpuState>>(target_states, rewrite_states);
  }

  std::vector<CpuState> target_chosen;
  std::vector<CpuState> rewrite_chosen;
  auto target_remaining = target_states;
  auto rewrite_remaining = rewrite_states;

  for (size_t i = 0; i < sample_tcs_; ++i) {
    size_t pick_from = target_remaining.size();
    uniform_int_distribution<size_t> dis(0, pick_from-1);

    size_t choice = dis(gen_);
    target_chosen.push_back(target_remaining[choice]);
    rewrite_chosen.push_back(rewrite_remaining[choice]);

    target_remaining.erase(target_remaining.begin() + choice);
    rewrite_remaining.erase(rewrite_remaining.begin() + choice);

    assert(target_remaining.size() == rewrite_remaining.size());
    assert(target_chosen.size() == rewrite_chosen.size());
  }

  //cout << "Selected " << target_chosen.size() << " testcases" << endl;

  return pair<vector<CpuState>, vector<CpuState>>(target_chosen, rewrite_chosen);
}

void InvariantLearner::debug_memory_nonequivalent(
    const std::vector<CpuState>& target_states,
    const std::vector<CpuState>& rewrite_states) const {

  MemoryEqualityInvariant inv;
  size_t num_states = target_states.size();
  size_t bad_states = 0;
  CpuState target_bad;
  CpuState rewrite_bad;
  for(size_t i = 0; i < num_states; ++i) {
    if(!inv.check(target_states[i], rewrite_states[i])) {
      if(bad_states == 0) {
        target_bad = target_states[i]; 
        rewrite_bad = rewrite_states[i];
      }
      bad_states++;
    }
  }

  cout << "[debug_memory_nonequivalent] hmm there are " << bad_states << " pairs where memory states disagree.  Here's an example."<< endl;
  cout << "[debug_memory_nonequivalent] TARGET" << endl << target_bad << endl << endl;
  cout << "[debug_memory_nonequivalent] REWRITE" << endl << rewrite_bad << endl << endl;
}


std::shared_ptr<MemoryEqualityInvariant> InvariantLearner::learn_memory_equality(
    const std::vector<CpuState>& target_states,
    const std::vector<CpuState>& rewrite_states,
    x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs) const {

  // Memory equality
  auto memequ = make_shared<MemoryEqualityInvariant>();
  if(memequ->check(target_states, rewrite_states)) {
    cout << "[learn_simple] adding standard memory equality invariant" << endl;
    return memequ; 
  } else {
    auto vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
    for(auto var : vars) {
      vector<Variable> vs;
      vs.push_back(var);
      auto memequ = make_shared<MemoryEqualityInvariant>(vs);
      cout << "[learn_simple] ... attempting " << *memequ << endl;
      if(memequ->check(target_states, rewrite_states))  {
        cout << "[learn_simple] adding memory equality invariant excluding " << var << endl;
        return memequ;
      }
    }
  }

  debug_memory_nonequivalent(target_states, rewrite_states);
  cerr << "Could not find any invariant relating memory states... busted." << endl;
  return shared_ptr<MemoryEqualityInvariant>(nullptr);
}
 

std::shared_ptr<ConjunctionInvariant> InvariantLearner::learn(
  x64asm::RegSet target_regs,
  x64asm::RegSet rewrite_regs,
  const std::vector<CpuState>& states,
  const std::vector<CpuState>& states2,
  ImplicationGraph& graph,
  string target_cc,
  string rewrite_cc) {

  auto memequ = learn_memory_equality(states, states2, target_regs, rewrite_regs);

  if(memequ) {
    auto conj = learn_simple(target_regs, rewrite_regs, states, states2, graph);
    conj->add_invariant(memequ);
    return conj;
  } else {
    auto empty = make_shared<ConjunctionInvariant>();
    return empty;
  }

}


/** Learn constants over a set of columns,
  === AND === remove variables that are constants. */
vector<std::shared_ptr<Invariant>> InvariantLearner::learn_constants(
  vector<Variable>& columns,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());
  size_t tc_count = target_states.size();

  vector<std::shared_ptr<Invariant>> invariants;

  for (size_t i = 0; i < columns.size(); ++i) {

    auto value = columns[i].from_state(target_states[0], rewrite_states[0]);
    bool match = true;
    for (size_t k = 1; k < tc_count; ++k) {
      auto curr = columns[i].from_state(target_states[k], rewrite_states[k]);
      if (curr != value) {
        match = false;
        break;
      }
    }

    if (match) {
      vector<Variable> terms;
      terms.push_back(columns[i]);
      auto ei = std::make_shared<EqualityInvariant>(terms, value);
      invariants.push_back(ei);

      cout << "generating " << *ei << endl;
      columns.erase(columns.begin() + i);
      i--;
    }
  }

  return invariants;
}

void multiplication_update(uint64_t& col_i_value, uint64_t& col_j_value,
                           bool& i_bigger, bool& found_prod, uint64_t& prod, bool& prod_match) {
  if(prod_match == false)
    return;

  if(!found_prod) {
    if(col_i_value != 0 && col_j_value != 0) {
      auto tmp_diff = col_i_value / col_j_value;
      if(tmp_diff * col_j_value == col_i_value) {
        found_prod = true;
        prod = tmp_diff;
        i_bigger = true;
        return;
      } else {
        tmp_diff = col_j_value / col_i_value;
        if(tmp_diff*col_i_value == col_j_value) {
          found_prod = true;
          prod = tmp_diff;
          i_bigger = false;
          return;
        } else {
          prod_match = false;
          return;
        }
      }
    } else if (col_i_value == 0 && col_j_value != 0) {
      prod_match = false;
      return;
    } else if (col_j_value == 0 && col_i_value != 0) {
      prod_match = false;
      return;
    }
  } else {
    if(i_bigger) {
      if(prod*col_j_value != col_i_value) {
        prod_match = false;
        return;
      }
    } else {
      if(prod*col_i_value != col_j_value) {
        prod_match = false;
        return;
      }
    }
  }

}


/** Learn constants over a set of columns,
  === AND === remove variables that are constants. */
vector<std::shared_ptr<Invariant>> InvariantLearner::learn_easy_equalities(
  vector<Variable>& columns,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());
  size_t tc_count = target_states.size();

  vector<std::shared_ptr<Invariant>> invariants;

  vector<size_t> columns_to_erase;
  for (size_t i = 0; i < columns.size(); ++i) {
    for (size_t j = i+1; j < columns.size(); ++j) {

      // check if column i matches column j
      //DEBUG_LEARNER(cout << " - Checking if column " << columns[i] << " matches " << columns[j] << endl;)
      bool diff_match = true;
      bool prod_match = true;
      bool found_prod = false;
      bool i_bigger = false;
      uint64_t prod; 

      uint64_t diff = 0;
      if(tc_count > 0) {
        uint64_t col_i_start_value = columns[i].from_state(target_states[0], rewrite_states[0]);
        uint64_t col_j_start_value = columns[j].from_state(target_states[0], rewrite_states[0]);
        diff = col_i_start_value - col_j_start_value;
        multiplication_update(col_i_start_value, col_j_start_value, i_bigger, found_prod, prod, prod_match);
      }

      for (size_t k = 1; k < tc_count; ++k) {
        auto col_i_value = columns[i].from_state(target_states[k], rewrite_states[k]);
        auto col_j_value = columns[j].from_state(target_states[k], rewrite_states[k]);

        if(col_i_value - col_j_value != diff) {
          diff_match = false;
        }

        multiplication_update(col_i_value, col_j_value, i_bigger, found_prod, prod, prod_match);
        
        if(!diff_match && !prod_match)
          break;
      }
      // add equality asserting column[i] matches column[j].
      if (diff_match) {
        vector<Variable> terms;
        columns[i].coefficient = 1;
        columns[j].coefficient = -1;
        terms.push_back(columns[i]);
        terms.push_back(columns[j]);

        auto ei = std::make_shared<EqualityInvariant>(terms, diff);
        invariants.push_back(ei);
        DEBUG_LEARNER(cout << "generating " << *ei << endl;)

        columns_to_erase.push_back(j);
      } else if (prod_match && found_prod) {
        vector<Variable> terms;
        columns[i].coefficient = i_bigger ? 1 : prod;
        columns[j].coefficient = i_bigger ? -prod : -1;
        terms.push_back(columns[i]);
        terms.push_back(columns[j]);

        auto ei = std::make_shared<EqualityInvariant>(terms, 0);
        invariants.push_back(ei);
        DEBUG_LEARNER(cout << "generating " << *ei << endl;)

        columns_to_erase.push_back(j);
      }
    }
  }

  sort(columns_to_erase.begin(), columns_to_erase.end(), greater<size_t>());
  size_t last = (size_t)(-1);
  for(auto col : columns_to_erase) {
    if(col == last)
      continue;
    last = col;

    columns.erase(columns.begin() + col);
  }

  return invariants;
}

IntMatrix InvariantLearner::states_to_matrix(
  const vector<Variable>& variables,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());

  size_t num_rows = target_states.size();
  size_t num_cols = variables.size()+1;
  uint64_t* matrix = new uint64_t[num_rows*num_cols];

  for (size_t i = 0; i < num_rows; ++i) {
    for (size_t j = 0; j < num_cols-1; ++j) {
      matrix[i*num_cols + j] = variables[j].from_state(target_states[i], rewrite_states[i]);
    }
    matrix[i*num_cols + num_cols - 1] = 1;
  }
  IntMatrix matrix2(num_rows, num_cols, matrix);

  delete[] matrix;
  return matrix2;
}

std::shared_ptr<ConjunctionInvariant> InvariantLearner::matrix_to_invariant(
  const vector<Variable>& variables,
  const IntMatrix& matrix
) {

  size_t dim = matrix.rows();
  size_t num_columns = matrix.cols();
  cout << "Got matrix with " << dim << " rows and " << num_columns << " cols" << endl;
  std::shared_ptr<ConjunctionInvariant> conj = std::make_shared<ConjunctionInvariant>();

  for (size_t i = 0; i < dim; ++i) {
    vector<Variable> terms;

    for (size_t j = 0; j < num_columns - 1; ++j) {
      auto column = variables[j];

      if (matrix[i][j]) {
        column.coefficient = matrix[i][j];
        terms.push_back(column);
      }
    }

    auto ei = std::make_shared<EqualityInvariant>(terms, -matrix[i][num_columns-1]);
    conj->add_invariant(ei);
  }

  return conj;
}


vector<std::shared_ptr<Invariant>> InvariantLearner::learn_equalities(
  vector<Variable> columns,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  size_t num_columns = columns.size() + 1;
  size_t tc_count = target_states.size();

  vector<std::shared_ptr<Invariant>> invariants;

  /** First do some checks to make things faster. */
  /** (A) check for constant columns. */
  auto constant_invs = learn_constants(columns, target_states, rewrite_states);
  invariants.insert(invariants.begin(), constant_invs.begin(), constant_invs.end());

  /*
  cout << "CONSTANT INVARIANTS" << endl;
  constant_inv->write_pretty(std::cout);
  cout << endl;*/

  /** (B) check for some equalities */
  auto equal_invs = learn_easy_equalities(columns, target_states, rewrite_states);
  invariants.insert(invariants.begin(), equal_invs.begin(), equal_invs.end());

  /*
  cout << "EASY EQUALITIES" << endl;
  equal_inv->write_pretty(std::cout);
  cout << endl;
  */

  cout << "REMAINING COLS" << endl;
  for (size_t i = 0; i < columns.size(); ++i) {
    cout << columns[i] << endl;
  }

  /** (C) sample rows; perform check; try again. */
  auto tc_pairs = choose_tcs(target_states, rewrite_states);
  auto target_learn = tc_pairs.first;
  auto rewrite_learn = tc_pairs.second;

  bool done = false;
  std::shared_ptr<ConjunctionInvariant> equalities;
  while (!done) {
    auto matrix = states_to_matrix(columns, target_learn, rewrite_learn);
    cout << "COMPUTING KERNEL OF THIS MATRIX " << matrix.rows() << " x " << matrix.cols() << endl;
    matrix.print();

    /*cout << "NULLSPACE" << endl; */
    auto nullspace = matrix.nullspace64();

    cout << "INVARIANTS FROM KERNEL" << endl;
    equalities = matrix_to_invariant(columns, nullspace);
    equalities->write_pretty(std::cout);

    size_t new_states = 0;
    bool all_work = true;
    vector<CpuState> target_bad;
    vector<CpuState> rewrite_bad;

    vector<bool> invariant_ceg_found(equalities->size(), false);

    for (size_t i = 0; i < target_states.size(); ++i) {

      if(new_states >= sample_tcs_)
        break;

      auto target_state = target_states[i];
      auto rewrite_state = rewrite_states[i];

      bool added = false;
      for (size_t j = 0; j < equalities->size(); ++j) {
        if(invariant_ceg_found[j])
          continue;

        if (!(*equalities)[j]->check(target_state, rewrite_state)) {
          cout << "GOT A BAD INVARIANT j=" << j << endl;
          cout << *(*equalities)[j] << endl;
          invariant_ceg_found[j] = true;
          if(!added) {
            target_learn.push_back(target_state);
            rewrite_learn.push_back(rewrite_state);
            added = true;
          }
          new_states++;
          all_work = false;
        }
      }
    }

    if (all_work) {
      cout << "All these invariants worked!" << endl;
      done = true;
    } else {
      cout << "Got bad invariants!" << endl;
    }
  }
  for(size_t i = 0; i < equalities->size(); ++i)
    invariants.push_back((*equalities)[i]);

  // Extract the data from the nullspace
  DEBUG_LEARNER(cout << "Column count: " << dec << num_columns << endl;)

  return invariants;

}


std::shared_ptr<ConjunctionInvariant> InvariantLearner::learn_simple(x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const vector<CpuState>& target_states,
    const vector<CpuState>& rewrite_states,
    ImplicationGraph& graph) {

  assert(target_states.size() == rewrite_states.size());

  std::shared_ptr<NoSignalsInvariant> no_sigs = std::make_shared<NoSignalsInvariant>();
  std::shared_ptr<ConjunctionInvariant> conj = std::make_shared<ConjunctionInvariant>();
  conj->add_invariant(no_sigs);

  if (target_states.size() == 0 || rewrite_states.size() == 0) {
    conj->add_invariant(std::make_shared<FalseInvariant>());
    return conj;
  }

 // NonZero invariants
  auto class_nonzero = graph.new_class();
  for (size_t k = 0; k < 2; ++k) {
    auto& states = k ? rewrite_states : target_states;
    auto& regs = k ? rewrite_regs : target_regs;

    for (auto it = regs.gp_begin(); it != regs.gp_end(); ++it) {
      bool all_nonzero = true;

      for (auto state : states) {
        if (state.gp[*it].get_fixed_quad(0) == 0) {
          all_nonzero = false;
        }
      }

      if (all_nonzero) {
        Variable v(r64s[*it], k);
        auto nz = std::make_shared<NonzeroInvariant>(v);
        if (nz->check(target_states, rewrite_states)) {
          conj->add_invariant(nz);
          graph.add_invariant(nz);
        } else {
          DEBUG_LEARNER(cout << "GOT BAD INVARIANT " << *nz << endl;)
        }
      }
    }
  }

  // mod2^n invariants (handled by more general mod invariant)
  /*
  if (enable_nonlinear_) {
    auto potential_mod2n = build_mod2n_invariants(target_regs, rewrite_regs);
    for (auto modulo : potential_mod2n) {
      if (modulo->check(target_states, rewrite_states)) {
        conj->add_invariant(modulo);
      } 
    }
  }
  */

  if(!enable_vector_vars_) {
    for(size_t k = 0; k < 2; ++k) {
      for(auto r : r64s) {
        auto candidate = std::make_shared<TopZeroInvariant>(r, k);
        if(candidate->check(target_states, rewrite_states)) {
          conj->add_invariant(candidate);
        } 
      }
    }
  }

  // sign invariants
  auto class_sign = graph.new_class();
  auto potential_sign = build_sign_invariants(target_regs, rewrite_regs);
  for (auto sign : potential_sign) {
    if (sign->check(target_states, rewrite_states)) {
      conj->add_invariant(sign);
      graph.add_invariant(sign);
    } 
  }

  // Memory-Register equalities
  cout << "Learning Memory-Register Equalities" << endl;
  auto class_memreg_equ = graph.new_class();
  auto potential_equalities = build_memory_register_equalities(target_regs, rewrite_regs);
  for (auto ineq : potential_equalities) {
    if (ineq->check(target_states, rewrite_states)) {
      cout << "Using " << *ineq << endl;
      conj->add_invariant(ineq);
      graph.add_invariant(ineq);
    } else {
      cout << "Discarding " << *ineq << endl;
    }
  }
  size_t memreg_equ_count = graph.compute(class_memreg_equ, class_memreg_equ);
  cout << "FOUND " << memreg_equ_count << " IMPLICATIONS AMONG THE REGISTER-MEMORY EQUALITIES" << endl;

  // Inequality invariants
  /*
  auto class_reg_reg_ineq = graph.new_class();
  auto potential_inequalities = build_inequality_invariants(target_regs, rewrite_regs, graph);
  for (auto ineq : potential_inequalities) {
    if (ineq->check(target_states, rewrite_states)) {
      conj->add_invariant(ineq);
      graph.add_invariant(ineq);
    } 
  }
  */

  // Inequality invariants with constant
  auto inequalities_with_constants = build_inequality_with_constant_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
  auto class_ineq_const = graph.new_class();
  for (auto ineq : inequalities_with_constants) {
    if(ineq->check(target_states, rewrite_states)) {
      conj->add_invariant(ineq);
      graph.add_invariant(ineq);
    }
  }

  // Modulo invariants
  auto class_modulo = graph.new_class();
  auto modulos = build_modulo_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
  for(auto it : modulos) {
    conj->add_invariant(it);
    graph.add_invariant(it);
  }

  // Range invariants
  auto class_bound = graph.new_class();
  auto ranges = build_range_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
  for(auto it : ranges) {
    conj->add_invariant(it);
    graph.add_invariant(it);
  }



  // flag invariants
  // no need to add these to graph
  auto potential_flags = build_flag_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
  for (auto it : potential_flags)
    conj->add_invariant(it);

  auto class_mem_null = graph.new_class();
  if(enable_memory_) {

    auto potential_memory_nulls = build_memory_null_invariants(target_regs, rewrite_regs);
    for (auto mem_null : potential_memory_nulls) {
      cout << "[learner] Testing " << *mem_null << endl;
      if (mem_null->check(target_states, rewrite_states) &&
          mem_null->is_valid(target_states, rewrite_states)) {
        cout << " * pass" << endl;
        conj->add_invariant(mem_null);
        graph.add_invariant(mem_null);
      } else {
        cout << " * fail" << endl;
      }
    }

    size_t mem_null_count = graph.compute(class_mem_null, class_mem_null);
    cout << "FOUND " << mem_null_count << " IMPLICATIONS AMONG THE MEMORY-NULL EQUALITIES" << endl;
  }

  if(enable_shadow_) {
    for (auto ghost : ghosts_) {
      auto pointer_null = std::make_shared<PointerNullInvariant>(ghost, 1);
      DEBUG_LEARNER(cout << "testing ptr " << *pointer_null << endl;)
      if (pointer_null->check(target_states, rewrite_states)) {
        conj->add_invariant(pointer_null);
        DEBUG_LEARNER(cout << "  * accepted" << endl;)
      } else {
        DEBUG_LEARNER(cout << "  * rejected" << endl;)
      }
    }
  }


  // Learn easy equalities over a really huge set of (sub) registers
  cout << "enable_vector_vars_ = " << enable_vector_vars_ << endl;

  size_t easy_equalities_class = graph.new_class();
  if(enable_vector_vars_) {
    vector<Variable> vector_columns;
    auto vector_vars_target = sub_registers_for_regset(target_regs, false);
    auto vector_vars_rewrite = sub_registers_for_regset(rewrite_regs, true);
    vector_columns.insert(vector_columns.begin(), vector_vars_target.begin(), vector_vars_target.end());
    vector_columns.insert(vector_columns.begin(), vector_vars_rewrite.begin(), vector_vars_rewrite.end());
    auto easy_constants = learn_constants(vector_columns, target_states, rewrite_states);
    auto easy_equalities = learn_easy_equalities(vector_columns, target_states, rewrite_states);

    conj->add_invariants(easy_equalities);
    conj->add_invariants(easy_constants);

    graph.add_invariant(easy_equalities);
    graph.compute(easy_equalities_class, easy_equalities_class);

    size_t constants_class = graph.new_class();
    graph.add_invariant(easy_constants);
    graph.compute(constants_class, constants_class);
  }


  // Define columns that will be used to learn equalities
  vector<Variable> columns;

  DEBUG_LEARNER(cout << "[learner] enable_shadow_ = " << enable_shadow_ << endl;)
  if(enable_shadow_) {
    /** get all shadow registers from target/rewrite states. */
    for(size_t k = 0; k < 2; ++k) {
      auto& states = k ? rewrite_states : target_states;
      set<string> names;

      DEBUG_LEARNER(cout << "[learner] getting shadow variables from " << states.size() << " states." << endl;)
      for(auto& s : states) {
        for(auto pair : s.shadow) {
          names.insert(pair.first);
        }
      }

      for(auto name : names) {
        Variable v(name, k);
        columns.push_back(v);
      }
    }
  }

  /** get variables corresponding to registers */
  for (size_t k = 0; k < 2; ++k) {
    auto& def_ins = k ? rewrite_regs : target_regs;
    for (auto r = def_ins.gp_begin(); r != def_ins.gp_end(); ++r) {
      if ((*r).size() == 64) {
        Variable c(*r, k);
        columns.push_back(c);
      }
    }
    for (auto r = def_ins.sse_begin(); r != def_ins.sse_end(); ++r) {
      for (size_t i = 0; i < (*r).size()/64; ++i) {
        Variable c(*r,k,8,i*8);
        columns.push_back(c);
      }
      for (size_t i = 0; i < (*r).size()/32; ++i) {
        Variable c(*r,k,4,i*4);
        columns.push_back(c);
      }

    }
  }

  /** get variables corresponding to stack locations */
  {
    auto mem_vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
    for(auto var : mem_vars) {
      if(var.is_stack())
        columns.push_back(var);
    }
  }
  /*
  vector<Variable> mem_vars;
  if (enable_memory_) {
    mem_vars = get_memory_variables(target_, rewrite_);

    // add variable to columns
    for (auto var : mem_vars) {
      DEBUG_LEARNER(cout << "Checking mem var: " << var << endl;)
      if (var.size <= 8) {
        DEBUG_LEARNER(cout << " * size <= 8 :)" << endl;)
        columns.push_back(var);
      } else {
        DEBUG_LEARNER(cout << " * size " << var.size << endl;)
      }
    }
  }
  */

  // check if memory is always non-zero?
  /*
  for (auto var : mem_vars) {
    auto inv = new NonzeroInvariant(var);
    DEBUG_LEARNER(cout << "Checking if " << *inv << " holds..." << endl;)
    add_or_delete_inv(conj, inv, target_states, rewrite_states);
  }
  */

  DEBUG_LEARNER(
    cout << "Columns" << endl;
  for (auto it : columns) {
  cout << it << endl;
}
);
  auto equality_class = graph.new_class();
  auto equality_invs = learn_equalities(columns, target_states, rewrite_states);
  for(auto inv : equality_invs) {
    conj->add_invariant(inv);
    graph.add_invariant(inv);
  }
  graph.compute(equality_class, equality_class);
  graph.compute(equality_class, easy_equalities_class);


  /*
  auto test = [&](string s, size_t class1, size_t class2) {
    cout << "TESTING IMPLICATIONS: " << s << endl;
    auto start = chrono::system_clock::now();
    size_t count = graph.compute(class1, class2);
    auto end = chrono::system_clock::now();
    auto diff = chrono::duration_cast<chrono::milliseconds>(end - start).count();
    cout << "GOT " << count << " IN " << diff << " MS" << endl;
  };
  */

  //test("ineqconst-regineq", class_ineq_const, class_reg_reg_ineq);
  /*
  test("memreg-memreg", class_memreg_equ, class_memreg_equ);      //good
  test("memnull-memnull", class_mem_null, class_mem_null);        // good
  test("bound-nonzero", class_bound, class_nonzero);              // ok...
  test("regineq-nonzero",class_reg_reg_ineq, class_nonzero);      // better than previous one...
  test("ineqconst-bound", class_ineq_const, class_bound);          // totally useless
  test("ineqconst-nonzero", class_ineq_const, class_nonzero);      // also totally useless
  test("regregineq-regregineq", class_reg_reg_ineq, class_reg_reg_ineq);  //best to automate this
  */

  // LESSON OF THE DAY
  // - good to check for implications within classes
  // - pretty useless beyond that

  /*
  class_sign
  class_memreg_equ
  class_modulo 

  class_nonzero
  class_bound
  class_reg_reg_ineq
  class_ineq_const
  */

  /** Have implication graph do its thing */
  graph.print();
  vector<size_t> to_delete;
  for(size_t i = 0; i < conj->size(); ++i) {
    if(graph.is_superseded((*conj)[i]))
      to_delete.insert(to_delete.begin(), i);
  }
  for(auto it : to_delete) {
    cout << "Removing conjunct " << *(*conj)[it] << endl;
    conj->remove(it);
  }



  return conj;
}


std::vector<Variable> InvariantLearner::sub_registers_for_regset(x64asm::RegSet rs, bool is_rewrite) const {
  vector<Variable> outputs;
  for (auto r = rs.sse_begin(); r != rs.sse_end(); ++r) {
    size_t bytes = (*r).size()/8;
    // add each 1,2,4,8-byte subregister
    for(size_t k = 0; k < 4; ++k) {
      size_t pow2 = (1 << k);
      for(size_t i = 0; i < bytes; i += pow2) {
        Variable sub(*r, is_rewrite, pow2, i);
        cout << "Adding subregister " << *r << " is_rewrite=" << is_rewrite << " pow2=" << pow2 << " i=" << i << endl;
        cout << sub << endl;
        outputs.push_back(sub);
      }
    }
  }

  for (auto r = rs.gp_begin(); r != rs.gp_end(); ++r) {
    size_t bytes = (*r).size()/8;
    switch(bytes) {
      case 8: {
        // add register as output
        Variable full_reg(*r, is_rewrite);
        outputs.push_back(full_reg);
      }
      case 4: {
        // add each quadword as an output
        for(size_t i = 0; i < bytes; i+=4) {
          Variable quad(*r, is_rewrite, 4, i);
          outputs.push_back(quad);
        }
      }
      case 2: {
        // add each word as an output
        for(size_t i = 0; i < bytes; i+=2) {
          Variable word(*r, is_rewrite, 2, i);
          outputs.push_back(word);
        }
      }
      case 1: {
        // add each byte as an output
        for(size_t i = 0; i < bytes; i++) {
          Variable abyte(*r, is_rewrite, 1, i);
          outputs.push_back(abyte);
        }
        break;
      }
    }
  }

  return outputs;

}

