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
#include "src/validator/invariants/true.h"

#include "src/validator/learner.h"
#include "src/validator/null.h"

#define LEARNER_DEBUG(X) { X }

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

  set<x64asm::Mem> memory_operands;
  for (auto& prog : {
         target, rewrite
       }) {
    for (auto instr : prog.get_code()) {
      if (instr.is_explicit_memory_dereference()) {
        auto mem = instr.get_operand<x64asm::Mem>((size_t)instr.mem_index());
        //cout << "Considering operand " << mem << endl;
        memory_operands.insert(mem);
      }
    }
  }

  for(size_t k = 0; k < 2; ++k) {

    auto& cfg = k ? target : rewrite;
    auto regs = k ? target_regs : rewrite_regs;

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

      if(mem.size() == 64) { 
        for (size_t offset : {
               0,8,-8
             }) {

          // Make everything an M64
          M64 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
        }
      }

      if(mem.size() == 32) {
        for (size_t offset : {
               0,4,-4
             }) {

          M32 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
        }
      }

      if(mem.size() == 16) {
        for (size_t offset : {
               0,2,-2
             }) {

          M16 mem_fixed(mem.get_seg(),
                        mem.get_base(),
                        mem.get_index(),
                        mem.get_scale(),
                        mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
        }
      }

      if(mem.size() == 8) {
        for (size_t offset : {
               0,1,-1
             }) {

          M8 mem_fixed(mem.get_seg(),
                       mem.get_base(),
                       mem.get_index(),
                       mem.get_scale(),
                       mem.get_disp() + offset);

          Variable v(mem_fixed, k);
          results.insert(v);
        }
      }
    }
  }

  vector<Variable> condensed;
  condensed.insert(condensed.begin(), results.begin(), results.end());

  return condensed;
}


/** Return a set of possible memory null invariants */
vector<NonzeroInvariant*> InvariantLearner::build_memory_null_invariants(RegSet target_regs, RegSet rewrite_regs) const {
  vector<NonzeroInvariant*> invariants;

  auto memory_vars = get_memory_variables(target_, rewrite_, target_regs, rewrite_regs);
  for (auto v : memory_vars) {
    auto mni = new NonzeroInvariant(v, false);
    invariants.push_back(mni);  

    mni = new NonzeroInvariant(v, true);
    invariants.push_back(mni);
  }


  cout << "[learner][memory_null] Considering these invariants!" << endl;
  for (auto it : invariants) {
    cout << *it << endl;
  }

  return invariants;
}

/** Return a set of possible inequality invariants. */
vector<InequalityInvariant*> InvariantLearner::build_inequality_invariants(RegSet target_regs, RegSet rewrite_regs) const {

  vector<InequalityInvariant*> inequalities;

  // For now, let's look at unsigned target-target and rewrite-rewrite inequalities

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {

      if ((*i).size() == 64) {
        for (auto ghost : ghosts_) {
          Variable v(*i, k);
          inequalities.push_back(new InequalityInvariant(v, ghost, false, false));
          inequalities.push_back(new InequalityInvariant(v, ghost, true, false));
          inequalities.push_back(new InequalityInvariant(ghost, v, false, false));
          inequalities.push_back(new InequalityInvariant(ghost, v, true, false));
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

          inequalities.push_back(new InequalityInvariant(v1, v2, false, false));
          inequalities.push_back(new InequalityInvariant(v1, v2, true, false));
        } else if ((*i).size() == 64) {
          Variable v1(*i, k);
          Variable v2(*j, k);

          Variable v1_32(r32s[*i], k);
          Variable v2_32(r32s[*j], k);

          inequalities.push_back(new InequalityInvariant(v1, v2, false, false));
          inequalities.push_back(new InequalityInvariant(v1, v2, true, false));

          inequalities.push_back(new InequalityInvariant(v1_32, v2_32, false, false));
          inequalities.push_back(new InequalityInvariant(v1_32, v2_32, true, false));

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


vector<EqualityInvariant*> InvariantLearner::build_modulo_invariants(
    RegSet target_regs, 
    RegSet rewrite_regs, 
    const vector<CpuState>& target_states, 
    const vector<CpuState>& rewrite_states) const {

  vector<EqualityInvariant*> modulos;

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
        auto inv = new EqualityInvariant(terms, onereg_val % onereg_gcd, onereg_gcd);
        if(inv->check(target_states, rewrite_states))
          modulos.push_back(inv);
        else
          delete inv;
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
          auto inv = new EqualityInvariant(terms, some_diff, gcd);
          if(inv->check(target_states, rewrite_states)) {
            modulos.push_back(inv);
          } else {
            delete inv;
          }
        }

      }
    }
  }

  return modulos;
}

vector<InequalityInvariant*> InvariantLearner::build_inequality_with_constant_invariants(
    RegSet target_regs, 
    RegSet rewrite_regs, 
    const vector<CpuState>& target_states, 
    const vector<CpuState>& rewrite_states) const {

  assert(target_states.size() == rewrite_states.size());

  vector<InequalityInvariant*> outputs;
  vector<Variable> variables;

  for(size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;
    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      Variable v(*i, k);
      variables.push_back(v);
    }
  }

  for(auto& v1 : variables) {
    for(auto& v2 : variables) {
      if(v1 == v2)
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
      if(min_count > 2) {
        auto inv = new InequalityInvariant(v1, v2, false, false, min_difference);
        outputs.push_back(inv);
      }
      //cout << "  generating " << *inv << endl;

      // i + constant >= j   i.e.   j - constant <= i
      if(max_count > 2) {
        auto inv2 = new InequalityInvariant(v2, v1, false, false, -max_difference);
        outputs.push_back(inv2);
      }
      //cout << "  generating " << *inv2 << endl;
    }
  }

  return outputs;
}

/** Return invariants over the range of a variable. */
vector<RangeInvariant*> InvariantLearner::build_range_invariants(
    RegSet target_regs, 
    RegSet rewrite_regs, 
    const vector<CpuState>& target_states, 
    const vector<CpuState>& rewrite_states) const {

  vector<RangeInvariant*> ranges;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;
    const auto& states = k ? rewrite_states : target_states;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {

      uint64_t min = (uint64_t)(-1);
      uint64_t max = 0;
      uint64_t min_count = 0;
      uint64_t max_count = 0;
      for(auto& it : states) {
        auto value = it[*i];
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
        Variable v(*i, k);
        auto inv = new RangeInvariant(v, min, (uint64_t)(-1));
        assert(inv->check(target_states, rewrite_states));
        ranges.push_back(inv);
      }
      if(max_count > 2) {
        Variable v(*i, k);
        auto inv = new RangeInvariant(v, 0, max);
        assert(inv->check(target_states, rewrite_states));
        ranges.push_back(inv);
      }

    }
  }

  return ranges;
}

/** Return a set of possible lower-n bit invariants. */
vector<Mod2NInvariant*> build_mod2n_invariants(RegSet target_regs, RegSet rewrite_regs) {

  vector<Mod2NInvariant*> invariants;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      for (auto j = 1; j < 5; ++j) {
        Variable v(*i, k);
        invariants.push_back(new Mod2NInvariant(v, j));
      }
    }
  }

  return invariants;
}

/** Return a set of sign invariants. */
vector<SignInvariant*> build_sign_invariants(RegSet target_regs, RegSet rewrite_regs) {

  vector<SignInvariant*> invariants;

  for (size_t k = 0; k < 2; ++k) {
    auto regs = k ? rewrite_regs : target_regs;

    for (auto i = regs.gp_begin(); i != regs.gp_end(); ++i) {
      Variable v(*i, k);
      invariants.push_back(new SignInvariant(v, true));
      invariants.push_back(new SignInvariant(v, false));
    }
  }

  return invariants;
}

bool invariant_holds(Invariant* invariant, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states) {

  for (size_t i = 0; i < target_states.size(); ++i)
    if (!invariant->check(target_states[i], rewrite_states[i]))
      return false;

  return true;
}

bool add_or_delete_inv(vector<Invariant*>& invs, Invariant* inv, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states, bool verbose = false);

bool add_or_delete_inv(ConjunctionInvariant* conj, Invariant* inv, const vector<CpuState>& ts, const vector<CpuState>& rs, bool verbose = false) {
  vector<Invariant*> tmp;
  bool b = add_or_delete_inv(tmp, inv, ts, rs, verbose);
  for (auto it : tmp)
    conj->add_invariant(it);
  return b;
}

/** Returns true if the invariant is added. */
bool add_or_delete_inv(vector<Invariant*>& invs, Invariant* inv, const vector<CpuState>& target_states, const vector<CpuState>& rewrite_states, bool verbose) {
  if (invariant_holds(inv, target_states, rewrite_states)) {
    if (verbose)
      cout << "  Yes, " << *inv << " holds" << endl;
    invs.push_back(inv);
    return true;
  } else {
    if (verbose)
      cout << "  No, " << *inv << " does not hold" << endl;
    delete inv;
    return false;
  }
}

vector<Invariant*> build_flag_invariants(
  x64asm::RegSet target_regs,
  x64asm::RegSet rewrite_regs,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  LEARNER_DEBUG(cout << "target_regs: " << target_regs << endl;)
  LEARNER_DEBUG(cout << "rewrite_regs: " << rewrite_regs << endl;)

  vector<Invariant*> inv;

  for(size_t k = 0; k < 2; ++k) {
    auto& regs = k ? rewrite_regs : target_regs;
    for (auto flag = regs.flags_begin(); flag != regs.flags_end(); ++flag) {

      // Generate target flag true
      // these leak memory it unused
      Invariant* flag_true = new FlagSetInvariant(*flag, k, false);
      Invariant* flag_false = new FlagSetInvariant(*flag, k, true);
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

ConjunctionInvariant* InvariantLearner::learn(
  x64asm::RegSet target_regs,
  x64asm::RegSet rewrite_regs,
  const std::vector<CpuState>& states,
  const std::vector<CpuState>& states2,
  string target_cc,
  string rewrite_cc) {

  //auto pair = choose_tcs(states, states2);
  auto target_states = states;
  auto rewrite_states = states2;

  // idea: sort state pairs into one, two, or four groups, and learn invariant over them
  vector<Invariant*> condition_invariants;
  if (target_cc != "" && rewrite_cc != "") {
    auto inv_t = new FlagInvariant(target_cc, false, false);
    auto inv_r = new FlagInvariant(rewrite_cc, true, false);
    auto not_inv_t = new FlagInvariant(target_cc, false, true);
    auto not_inv_r = new FlagInvariant(rewrite_cc, true, true);
    condition_invariants.push_back(new ConjunctionInvariant({inv_t, inv_r}));
    condition_invariants.push_back(new ConjunctionInvariant({not_inv_t, inv_r}));
    condition_invariants.push_back(new ConjunctionInvariant({inv_t, not_inv_r}));
    condition_invariants.push_back(new ConjunctionInvariant({not_inv_t, not_inv_r}));
  } else if (target_cc != "") {
    auto inv = new FlagInvariant(target_cc, false, false);
    auto inv2 = new FlagInvariant(target_cc, false, true);
    condition_invariants.push_back(inv);
    condition_invariants.push_back(inv2);
  } else if (rewrite_cc != "") {
    auto inv = new FlagInvariant(rewrite_cc, true, false);
    auto inv2 = new FlagInvariant(rewrite_cc, true, true);
    condition_invariants.push_back(inv);
    condition_invariants.push_back(inv2);
  } else {
    return learn_simple(target_regs, rewrite_regs, target_states, rewrite_states);
  }

  // identify the flag invariants we care about
  std::vector<std::pair<std::vector<CpuState>, std::vector<CpuState>>> state_sets(condition_invariants.size());

  // classify states into buckets
  for (size_t i = 0; i < target_states.size(); ++i) {
    auto lhs = target_states[i];
    auto rhs = rewrite_states[i];

    /*
    cout << "==================== i = " << i << endl;
    if(lhs[eflags_zf]) {
      cout << "TARGET HAS ZF=1, i.e. !ne" << endl;
    }
    if(rhs[eflags_zf]) {
      cout << "REWRITE HAS ZF=1, i.e. !ne" << endl;
    } */

    for (size_t j = 0; j < condition_invariants.size(); ++j) {
      auto inv = condition_invariants[j];
      if (inv->check(lhs, rhs)) {
        /* cout << "INV " << *inv << " holds" << endl; */
        state_sets[j].first.push_back(lhs);
        state_sets[j].second.push_back(rhs);
      } else {
        /* cout << "INV " << *inv << " fails" << endl; */
      }
    }
  }

  // learn simple invariants and conjoin
  auto final_inv = new ConjunctionInvariant();

  for (size_t i = 0; i < condition_invariants.size(); ++i) {
    auto lhs_vector = state_sets[i].first;
    auto rhs_vector = state_sets[i].second;
    assert(lhs_vector.size() == rhs_vector.size());

    if (lhs_vector.size() == 0) {
      final_inv->add_invariant(new ImplicationInvariant(condition_invariants[i], new FalseInvariant()));
    } else {
      auto inv = learn_simple(target_regs, rewrite_regs, lhs_vector, rhs_vector);
      for (size_t j = 0; j < inv->size(); ++j) {
        auto curr = (*inv)[j];
        auto impl = new ImplicationInvariant(condition_invariants[i], curr);
        final_inv->add_invariant(impl);
      }
    }
  }

  return final_inv;

}


/** Learn constants over a set of columns,
  === AND === remove variables that are constants. */
ConjunctionInvariant* InvariantLearner::learn_constants(
  vector<Variable>& columns,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());
  size_t tc_count = target_states.size();

  ConjunctionInvariant* conj = new ConjunctionInvariant();

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
      auto ei = new EqualityInvariant(terms, value);
      conj->add_invariant(ei);

      cout << "generating " << *ei << endl;
      columns.erase(columns.begin() + i);
      i--;
    }
  }

  return conj;
}

/** Learn constants over a set of columns,
  === AND === remove variables that are constants. */
ConjunctionInvariant* InvariantLearner::learn_easy_equalities(
  vector<Variable>& columns,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());
  size_t tc_count = target_states.size();

  ConjunctionInvariant* conj = new ConjunctionInvariant();

  for (size_t i = 0; i < columns.size(); ++i) {
    for (size_t j = i+1; j < columns.size(); ++j) {

      // check if column i matches column j
      LEARNER_DEBUG(cout << " - Checking if column " << columns[i] << " matches " << columns[j] << endl;)
      bool match = true;
      for (size_t k = 0; k < tc_count; ++k) {
        if (columns[i].from_state(target_states[k], rewrite_states[k]) !=
            columns[j].from_state(target_states[k], rewrite_states[k])) {
          match = false;
          break;
        }
      }
      // add equality asserting column[i] matches column[j].
      if (match) {
        vector<Variable> terms;
        columns[i].coefficient = 1;
        columns[j].coefficient = -1;
        terms.push_back(columns[i]);
        terms.push_back(columns[j]);

        auto ei = new EqualityInvariant(terms, 0);
        conj->add_invariant(ei);
        LEARNER_DEBUG(cout << "generating " << *ei << endl;)

        columns.erase(columns.begin() + j);
        j--;
      }
    }
  }

  return conj;
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

ConjunctionInvariant* InvariantLearner::matrix_to_invariant(
  const vector<Variable>& variables,
  const IntMatrix& matrix
) {

  size_t dim = matrix.rows();
  size_t num_columns = matrix.cols();
  cout << "Got matrix with " << dim << " rows and " << num_columns << " cols" << endl;
  ConjunctionInvariant* conj = new ConjunctionInvariant();

  for (size_t i = 0; i < dim; ++i) {
    vector<Variable> terms;

    for (size_t j = 0; j < num_columns - 1; ++j) {
      auto column = variables[j];

      if (matrix[i][j]) {
        column.coefficient = matrix[i][j];
        terms.push_back(column);
      }
    }

    auto ei = new EqualityInvariant(terms, -matrix[i][num_columns-1]);
    conj->add_invariant(ei);
  }

  return conj;
}


ConjunctionInvariant* InvariantLearner::learn_equalities(
  vector<Variable> columns,
  const vector<CpuState>& target_states,
  const vector<CpuState>& rewrite_states) {

  size_t num_columns = columns.size() + 1;
  size_t tc_count = target_states.size();

  ConjunctionInvariant* conj = new ConjunctionInvariant();

  /** First do some checks to make things faster. */
  /** (A) check for constant columns. */
  auto constant_inv = learn_constants(columns, target_states, rewrite_states);
  conj->add_invariants(constant_inv);

  cout << "CONSTANT INVARIANTS" << endl;
  constant_inv->write_pretty(std::cout);
  cout << endl;

  /** (B) check for two identical columns. */
  auto equal_inv = learn_easy_equalities(columns, target_states, rewrite_states);
  conj->add_invariants(equal_inv);

  cout << "EQUAL INVARIANTS" << endl;
  equal_inv->write_pretty(std::cout);
  cout << endl;

  cout << "REMAINING COLS" << endl;
  for (size_t i = 0; i < columns.size(); ++i) {
    cout << columns[i] << endl;
  }

  /** (C) sample columns; perform check; try again. */
  auto tc_pairs = choose_tcs(target_states, rewrite_states);
  auto target_learn = tc_pairs.first;
  auto rewrite_learn = tc_pairs.second;

  bool done = false;
  ConjunctionInvariant* equalities;
  while (!done) {
    auto matrix = states_to_matrix(columns, target_learn, rewrite_learn);
    cout << "VERIFYING MATRIX" << endl;
    matrix.print();

    /*cout << "NULLSPACE" << endl; */
    auto nullspace = matrix.nullspace64();

    cout << "NULLSPACE" << endl;
    nullspace.print();

    cout << "INVARIANTS" << endl;
    equalities = matrix_to_invariant(columns, nullspace);
    equalities->write_pretty(std::cout);

    size_t new_states = 0;
    bool all_work = true;
    for (size_t i = 0; i < target_states.size(); ++i) {

      // don't add more than a fixed number of new states if the invariants don't work.
      if (new_states > sample_tcs_)
        break;

      auto target_state = target_states[i];
      auto rewrite_state = rewrite_states[i];

      for (size_t j = 0; j < equalities->size(); ++j) {
        if (!(*equalities)[j]->check(target_state, rewrite_state)) {
          cout << "GOT A BAD INVARIANT" << endl;
          cout << *(*equalities)[j] << endl;
          target_learn.push_back(target_state);
          rewrite_learn.push_back(rewrite_state);
          new_states++;
          all_work = false;
          break; // go to next state
        }
      }
    }

    if (all_work)
      done = true;
  }
  conj->add_invariants(equalities);

  // Extract the data from the nullspace
  LEARNER_DEBUG(cout << "Column count: " << dec << num_columns << endl;)

  return conj;

}


ConjunctionInvariant* InvariantLearner::learn_simple(x64asm::RegSet target_regs,
    x64asm::RegSet rewrite_regs,
    const vector<CpuState>& target_states,
    const vector<CpuState>& rewrite_states) {

  assert(target_states.size() == rewrite_states.size());

  //TODO leaks memory

  MemoryEqualityInvariant* mem_equ = new MemoryEqualityInvariant();

  NoSignalsInvariant* no_sigs = new NoSignalsInvariant();
  ConjunctionInvariant* conj = new ConjunctionInvariant();
  conj->add_invariant(no_sigs);
  conj->add_invariant(mem_equ);

  if (target_states.size() == 0 || rewrite_states.size() == 0) {
    conj->add_invariant(new FalseInvariant());
    return conj;
  }

  // NonZero invariants
  if (enable_nonlinear_) {
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
          auto nz = new NonzeroInvariant(v);
          if (nz->check(target_states, rewrite_states)) {
            conj->add_invariant(nz);
          } else {
            LEARNER_DEBUG(cout << "GOT BAD INVARIANT " << *nz << endl;)
            delete nz;
          }
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
      } else {
        delete modulo;
      }
    }
  }
  */

  // sign invariants
  if (enable_nonlinear_) {
    auto potential_sign = build_sign_invariants(target_regs, rewrite_regs);
    for (auto sign : potential_sign) {
      if (sign->check(target_states, rewrite_states)) {
        conj->add_invariant(sign);
      } else {
        delete sign;
      }
    }
  }

  // Inequality invariants
  if (enable_nonlinear_) {
    auto potential_inequalities = build_inequality_invariants(target_regs, rewrite_regs);
    for (auto ineq : potential_inequalities) {
      if (ineq->check(target_states, rewrite_states)) {
        conj->add_invariant(ineq);
      } else {
        delete ineq;
      }
    }
  }

  // Inequality invariants with constant
  if (enable_nonlinear_) {
    auto ineqs = build_inequality_with_constant_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
    for (auto ineq : ineqs) {
      conj->add_invariant(ineq);
    }
  }

  // Modulo invariants
  if (enable_nonlinear_) {
    auto modulos = build_modulo_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
    for(auto it : modulos)
      conj->add_invariant(it);
  }

  // Modulo invariants
  if (enable_nonlinear_) {
    auto ranges = build_range_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
    for(auto it : ranges)
      conj->add_invariant(it);
  }



  // flag invariants
  if (enable_nonlinear_) {
    auto potential_flags = build_flag_invariants(target_regs, rewrite_regs, target_states, rewrite_states);
    for (auto it : potential_flags)
      conj->add_invariant(it);

    if(enable_memory_) {
      auto potential_memory_nulls = build_memory_null_invariants(target_regs, rewrite_regs);
      for (auto mem_null : potential_memory_nulls) {
        cout << "[learner] Testing " << *mem_null << endl;
        if (mem_null->check(target_states, rewrite_states) &&
            mem_null->is_valid(target_states, rewrite_states)) {
          cout << " * pass" << endl;
          conj->add_invariant(mem_null);
        } else {
          cout << " * fail" << endl;
          delete mem_null;
        }
      }
    }
  }

  if (enable_nonlinear_) {
    for (auto ghost : ghosts_) {
      auto pointer_null = new PointerNullInvariant(ghost, 1);
      LEARNER_DEBUG(cout << "testing ptr " << *pointer_null << endl;)
      if (pointer_null->check(target_states, rewrite_states)) {
        conj->add_invariant(pointer_null);
        LEARNER_DEBUG(cout << "  * accepted" << endl;)
      } else {
        delete pointer_null;
        LEARNER_DEBUG(cout << "  * rejected" << endl;)
      }
    }
  }


  // Learn easy equalities over a really huge set of (sub) registers
  cout << "enable_vector_vars_ = " << enable_vector_vars_ << endl;
  if(enable_vector_vars_) {
    vector<Variable> vector_columns;
    auto vector_vars_target = sub_registers_for_regset(target_regs, false);
    auto vector_vars_rewrite = sub_registers_for_regset(rewrite_regs, true);
    vector_columns.insert(vector_columns.begin(), vector_vars_target.begin(), vector_vars_target.end());
    vector_columns.insert(vector_columns.begin(), vector_vars_rewrite.begin(), vector_vars_rewrite.end());
    auto easy_constants = learn_constants(vector_columns, target_states, rewrite_states);
    auto easy_equality = learn_easy_equalities(vector_columns, target_states, rewrite_states);
    conj->add_invariants(easy_equality);
  }


  // Define columns that will be used to learn equalities
  vector<Variable> columns;

  LEARNER_DEBUG(cout << "[learner] enable_shadow_ = " << enable_shadow_ << endl;)
  if(enable_shadow_) {
    /** get all shadow registers from target/rewrite states. */
    for(size_t k = 0; k < 2; ++k) {
      auto& states = k ? rewrite_states : target_states;
      set<string> names;

      LEARNER_DEBUG(cout << "[learner] getting shadow variables from " << states.size() << " states." << endl;)
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
    }
  }

  vector<Variable> mem_vars;
  /*
  if (enable_memory_) {
    mem_vars = get_memory_variables(target_, rewrite_);

    // add variable to columns
    for (auto var : mem_vars) {
      LEARNER_DEBUG(cout << "Checking mem var: " << var << endl;)
      if (var.size <= 8) {
        LEARNER_DEBUG(cout << " * size <= 8 :)" << endl;)
        columns.push_back(var);
      } else {
        LEARNER_DEBUG(cout << " * size " << var.size << endl;)
      }
    }
  }
  */

  // check if memory is always non-zero?
  /*
  for (auto var : mem_vars) {
    auto inv = new NonzeroInvariant(var);
    LEARNER_DEBUG(cout << "Checking if " << *inv << " holds..." << endl;)
    add_or_delete_inv(conj, inv, target_states, rewrite_states);
  }
  */

  LEARNER_DEBUG(
    cout << "Columns" << endl;
  for (auto it : columns) {
  cout << it << endl;
}
);
  auto equality_conj = learn_equalities(columns, target_states, rewrite_states);
  conj->add_invariants(equality_conj);

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

