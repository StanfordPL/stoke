// Copyright 2013-2015 Stanford University
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

#include "src/cfg/paths.h"
#include "src/validator/bounded.h"
#include "src/validator/ddec.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/false.h"
#include "src/validator/invariants/flag.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/top_zero.h"

#include "gmp.h"
#include "iml.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

/** Returns an invariant representing the fact that the first state transition in the path is taken. */
Invariant* get_jump_inv(const Cfg& cfg, const CfgPath& p, bool is_rewrite) {
  auto jump_type = BoundedValidator::is_jump(cfg, p, 0);
  auto start_block = p[0];
  auto start_bs = cfg.num_instrs(start_block);
  assert(start_bs > 0);
  auto jump_instr = cfg.get_code()[cfg.get_index(Cfg::loc_type(start_block, start_bs - 1))];
  bool is_fallthrough = jump_type == BoundedValidator::JumpType::FALL_THROUGH ||
                        jump_type == BoundedValidator::JumpType::NONE;
  auto jump_inv = new FlagInvariant(jump_instr, is_rewrite, is_fallthrough);
  return jump_inv;
}

bool DdecValidator::verify(const Cfg& target, const Cfg& rewrite) {

  BoundedValidator bv(solver_);
  bv.set_alias_strategy(BoundedValidator::AliasStrategy::STRING_NO_ALIAS);

  cutpoints_ = new Cutpoints(target, rewrite, *sandbox_);
  if (cutpoints_->has_error()) {
    return false;
  }

  auto target_cuts_ = cutpoints_->target_cutpoint_locations();
  auto rewrite_cuts_ = cutpoints_->rewrite_cutpoint_locations();

  for (size_t i = 0; i < target_cuts_.size(); ++i) {
    auto data = cutpoints_->data_at(i, false);
    std::cout << "Target cutpoint " << i << " has " << data.size() << " states." << std::endl;
  }
  for (size_t i = 0; i < rewrite_cuts_.size(); ++i) {
    auto data = cutpoints_->data_at(i, true);
    std::cout << "Rewrite cutpoint " << i << " has " << data.size() << " states." << std::endl;
  }

  vector<Invariant*> invariants_;
  for (size_t i = 0; i < target_cuts_.size(); ++i) {

    if(i == 0) {
      // Entry
      auto inv = new StateEqualityInvariant(target.def_ins());
      invariants_.push_back(inv);
    } else {
      auto inv = learn_invariant(cutpoints_->data_at(i, false), cutpoints_->data_at(i, true));
      invariants_.push_back(inv);
      cout << "Learned invariant @ i=" << i << endl;
      cout << *inv << endl;
    }
  }

  for (size_t i = 0; i < target_cuts_.size(); ++i) {
    for (size_t j = 0; j < rewrite_cuts_.size(); ++j) {
      // For each pair of cutpoints i, j, we need to do the following three checks:
      // 1. Paths_T(i, j) finite, Paths_R(i,j) finite
      // 2. P \in Paths_T(i, j), Q \in Paths_R(i, j) =>
      //    inv(i) { P ; Q } inv(j)
      // 3. P \in Paths_T(i, j), Q \in Paths_R(i, k) =>
      //    inv(i) { P ; Q } false

      auto target_paths_ij =
        CfgPaths::enumerate_paths(target, 1, target_cuts_[i], target_cuts_[j], &target_cuts_);
      auto rewrite_paths_ij =
        CfgPaths::enumerate_paths(rewrite, 1, rewrite_cuts_[i], rewrite_cuts_[j], &rewrite_cuts_);

      // 1. Paths_T(i, j) finite, Paths_R(i,j) finite
      auto target_paths_ij_more =
        CfgPaths::enumerate_paths(target, 2, target_cuts_[i], target_cuts_[j], &target_cuts_);
      auto rewrite_paths_ij_more =
        CfgPaths::enumerate_paths(rewrite, 2, rewrite_cuts_[i], rewrite_cuts_[j], &rewrite_cuts_);

      cout << "i=" << i << ", j=" << j
           << " " << target_paths_ij.size() << " / " << target_paths_ij_more.size() << endl;
      if (target_paths_ij.size() != target_paths_ij_more.size()) {
        cout << "Infinitely many paths found between target cutpoints " << i << " and " << j << endl;
        //return false;
      }
      cout << "i=" << i << ", j=" << j
           << " " << rewrite_paths_ij.size() << " / " << rewrite_paths_ij_more.size() << endl;
      if (rewrite_paths_ij.size() != rewrite_paths_ij_more.size()) {
        cout << "Infinitely many paths found between rewrite cutpoints " << i << " and " << j << endl;
        //return false;
      }

      cout << "cutpoint blocks: " << target_cuts_[i] << "  (and)  " << rewrite_cuts_[j] << endl;

      // 2. P in Paths_T(i, j), Q in Paths_R(i, j) => inv(i) { P; Q } inv(j)
      for (auto p : target_paths_ij) {
        if(target.num_instrs(target_cuts_[i]))
          p.erase(p.begin());

        for (auto q : rewrite_paths_ij) {
          if(rewrite.num_instrs(rewrite_cuts_[i]))
            q.erase(q.begin());
          cout << "Checking " << (*invariants_[i]) << " { " << BoundedValidator::print(p)
               << " ; " << BoundedValidator::print(q) << " } " << (*invariants_[j]) << endl;

          auto end_inv = static_cast<ConjunctionInvariant*>(invariants_[j]);
          /*
          for(size_t k = 0; k < end_inv->size(); ++k) {
            auto my_inv = (*end_inv)[k];
            cout << endl << endl << "WORKING ON " << *my_inv << endl << endl;
            bool ok = bv.verify_pair(target, rewrite, p, q, *invariants_[i], *my_inv);
            if(!ok)
              return false;
          }
          */
          cout << endl << endl << "WORKING ON " << *end_inv << endl << endl;
          bool ok = bv.verify_pair(target, rewrite, p, q, *invariants_[i], *end_inv);
          if (!ok)
            return false;

        }
      }

      // 3. P \in Paths_T(i, j), Q \in Paths_R(i, k) => inv(i) { P ; Q } false
      for (size_t k = 0; k < rewrite_cuts_.size(); ++k) {
        if (j == k)
          continue;

        auto rewrite_paths_ik =
          CfgPaths::enumerate_paths(target, 1, rewrite_cuts_[i], rewrite_cuts_[k], &target_cuts_);

        for (auto p : target_paths_ij) {
          auto target_jump_inv = get_jump_inv(target, p, false);
          if(target.num_instrs(target_cuts_[i]))
            p.erase(p.begin());


          for (auto q : rewrite_paths_ik) {
            auto rewrite_jump_inv = get_jump_inv(rewrite, p, true);
            if(rewrite.num_instrs(rewrite_cuts_[i]))
              q.erase(q.begin());

            auto copy = *static_cast<ConjunctionInvariant*>(invariants_[i]);
            copy.add_invariant(target_jump_inv);
            copy.add_invariant(rewrite_jump_inv);

            cout << "Checking " << copy << " { " << BoundedValidator::print(p)
                 << " ; " << BoundedValidator::print(q) << " } false " << endl;
            FalseInvariant fi;
            bool ok = bv.verify_pair(target, rewrite, p, q, copy, fi);
            if (!ok)
              return false;
          }
        }
      }
    }
  }

  return true;

}



long mpz_to_long(mpz_t z)
{
  long result = 0;
  mpz_export(&result, 0, -1, sizeof result, 0, 0, z);
  return result;
}

Invariant* DdecValidator::learn_invariant(std::vector<CpuState> target_states, std::vector<CpuState> rewrite_states) {

  //TODO leaks memory
  ConjunctionInvariant* conj = new ConjunctionInvariant();

  // TopZero invariants
  for (size_t k = 0; k < 2; ++k) {
    auto& states = k ? rewrite_states : target_states;

    for (size_t i = 0; i < r64s.size(); ++i) {
      bool all_zero = true;
      for (auto state : states) {
        if (state.gp[i].get_fixed_double(1) != 0) {
          all_zero = false;
          break;
        }
      }

      if (all_zero) {
        auto tzi = new TopZeroInvariant(r64s[i], k);
        if (tzi->check(target_states, rewrite_states)) {
          conj->add_invariant(tzi);
        } else {
          cout << "GOT BAD INVARIANT " << *tzi << endl;
        }
      }
    }
  }

  struct Column {
    R reg;
    bool is_rewrite;
    bool zero_extend;

    Column() : reg(rax), is_rewrite(false), zero_extend(false) { }
  };

  // For each live register, we need its column, its 32-bit subcolumn zero-extended
  // We need a 'constant' column with the value '1'.
  vector<Column> columns;
  /*
  for(size_t i = 0; i < r64s.size(); ++i) {
    columns.push_back(pair<R,bool>(r64s[i], false));
    columns.push_back(pair<R,bool>(r32s[i], false));
    columns.push_back(pair<R,bool>(r64s[i], true));
    columns.push_back(pair<R,bool>(r32s[i], true));
  }
  */
  vector<R> v = {esi, edi, rax, r15};
  for (auto r : v) {
    for (size_t k = 0; k < 2; ++k) {
      Column c;
      c.reg = r;
      c.is_rewrite = k;
      //if(r.width() == 64) {
      columns.push_back(c);
      /*} else {
        c.zero_extend = true;
        columns.push_back(c);
        c.zero_extend = false;
        columns.push_back(c);
      }*/
    }
  }

  size_t num_columns = columns.size() + 1;
  size_t tc_count = target_states.size();

  // Build the nullspace matrix
  long matrix[tc_count*num_columns];
  for (size_t i = 0; i < tc_count; ++i) {
    auto target_state = target_states[i];
    auto rewrite_state = rewrite_states[i];
    for (size_t j = 0; j < columns.size(); ++j) {
      auto column = columns[j];
      auto reg = column.reg;
      auto is_rewrite = column.is_rewrite;
      long value;
      if (is_rewrite) {
        value = rewrite_state[reg];
      } else {
        value = target_state[reg];
      }
      matrix[i*num_columns + j] = value;
    }
    matrix[i*num_columns + num_columns - 1] = 1;
  }

  /*
  for(size_t i = 0; i < tc_count; ++i) {
    for(size_t j = 0; j < num_columns; ++j) {
      cout << dec << matrix[i*num_columns + j] << " ";
    }
    cout << endl;
  }
  */

  mpz_t *mp_result;
  size_t dim = nullspaceLong(tc_count, num_columns, matrix, &mp_result);

  // For each row of the nullspace, find the gcd and divide by it.
  for (size_t i = 0; i < dim; ++i) {
    mpz_t gcd;
    mpz_init_set(gcd, mp_result[0*dim+i]);
    for (size_t j = 1; j < num_columns; ++j) {
      mpz_gcd(gcd, gcd, mp_result[j*dim+i]);
    }

    mpz_t val;
    mpz_init(val);
    for (size_t j = 0; j < num_columns; ++j) {
      mpz_divexact(val, mp_result[j*dim+i], gcd);
      mpz_set(mp_result[j*dim+i], val);
    }
  }

  // Extract the data from the nullspace
  for (size_t i = 0; i < dim; ++i) {
    bool ok = true;
    map<R, long> target_map;
    map<R, long> rewrite_map;
    for (size_t j = 0; j < num_columns - 1; ++j) {
      auto column = columns[j];
      if (!mpz_fits_slong_p(mp_result[j*dim + i])) {
        ok = false;
        break;
      }

      if (column.is_rewrite) {
        //cout << "rewrite " << column.first << endl;
        rewrite_map[column.reg] = mpz_get_si(mp_result[j*dim + i]);
        //cout << "  " << rewrite_map[column.first] << endl;
      } else {
        //cout << "target " << column.first << endl;
        //target_map[column.first] = mpz_to_long(mp_result[j*dim + i]);
        target_map[column.reg] = mpz_get_si(mp_result[j*dim + i]);
        //cout << "  " << target_map[column.first] << endl;
      }
      //gmp_fprintf(stdout, "  %Zd\n", mp_result[j*dim + i]);
    }
    //cout << "Constant" << endl;
    //gmp_fprintf(stdout , "  %Zd\n", mp_result[(num_columns-1)*dim + i]);
    //cout << endl;

    if (ok) {
      auto ei = new EqualityInvariant(target_map, rewrite_map, -mpz_get_si(mp_result[(num_columns-1)*dim + i]));
      if (ei->check(target_states, rewrite_states)) {
        conj->add_invariant(ei);
        cout << *ei << endl;
      } else {
        cout << "GOT BAD INVARIANT " << *ei << endl;
      }
    } else {
      cout << "(bad)" << endl;
    }
  }

  cout << "Nullspace dimension:" << dec << dim << endl;
  cout << "Column count: " << dec << num_columns << endl;
  cout << "sizeof(long): " << sizeof(long) << endl;



  return conj;
}
