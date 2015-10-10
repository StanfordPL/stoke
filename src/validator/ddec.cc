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

#include "src/validator/ddec.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/equality.h"
#include "src/validator/invariants/top_zero.h"

#include "gmp.h"
#include "iml.h"

using namespace std;
using namespace stoke;
using namespace x64asm;

bool DdecValidator::verify(const Cfg& target, const Cfg& rewrite) {

  cutpoints_ = new Cutpoints(target, rewrite, *sandbox_);

  auto target_cuts_ = cutpoints_->target_count();
  auto rewrite_cuts_ = cutpoints_->rewrite_count();

  for(size_t i = 0; i < target_cuts_; ++i) {
    auto data = cutpoints_->data_at(i, false);
    std::cout << "Target cutpoint " << i << " has " << data.size() << " states." << std::endl;
  }
  for(size_t i = 0; i < rewrite_cuts_; ++i) {
    auto data = cutpoints_->data_at(i, true);
    std::cout << "Rewrite cutpoint " << i << " has " << data.size() << " states." << std::endl;
  }

  for(size_t i = 0; i < target_cuts_; ++i) {
    auto inv = learn_invariant(cutpoints_->data_at(i, false), cutpoints_->data_at(i, true));
    cout << "Learned invariant @ i=" << i << endl;
    cout << *inv << endl;
  }

  return false;

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
  for(size_t k = 0; k < 2; ++k) {
    auto& states = k ? rewrite_states : target_states;

    for(size_t i = 0; i < r64s.size(); ++i) {
      bool all_zero = true;
      for(auto state : states) {
        if(state.gp[i].get_fixed_double(1) != 0) {
          all_zero = false;
          break;
        }
      }

      if(all_zero) {
        auto tzi = new TopZeroInvariant(r64s[i], k);
        conj->add_invariant(tzi);
      }
    }
  }

  // For each live register, we need its column, its 32-bit subcolumn zero-extended
  // We need a 'constant' column with the value '1'.
  vector<pair<R,bool>> columns;
  /*
  for(size_t i = 0; i < r64s.size(); ++i) {
    columns.push_back(pair<R,bool>(r64s[i], false));
    columns.push_back(pair<R,bool>(r32s[i], false));
    columns.push_back(pair<R,bool>(r64s[i], true));
    columns.push_back(pair<R,bool>(r32s[i], true));
  }
  */
  vector<R> v = {esi, edi, rax, r15};
  for(auto r : v) {
    columns.push_back(pair<R,bool>(r, false));
    columns.push_back(pair<R,bool>(r, true));
  }

  size_t num_columns = columns.size() + 1;
  size_t tc_count = target_states.size();

  // Build the nullspace matrix
  long matrix[tc_count*num_columns];
  for(size_t i = 0; i < tc_count; ++i) {
    auto target_state = target_states[i];
    auto rewrite_state = rewrite_states[i];
    for(size_t j = 0; j < columns.size(); ++j) {
      auto column = columns[j];
      auto reg = column.first;
      auto is_rewrite = column.second;
      long value;
      if(is_rewrite) {
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
  for(size_t i = 0; i < dim; ++i) {
    mpz_t gcd;
    mpz_init_set(gcd, mp_result[0*dim+i]);
    for(size_t j = 1; j < num_columns; ++j) {
      mpz_gcd(gcd, gcd, mp_result[j*dim+i]);
    }

    mpz_t val;
    mpz_init(val);
    for(size_t j = 0; j < num_columns; ++j) {
      mpz_divexact(val, mp_result[j*dim+i], gcd);
      mpz_set(mp_result[j*dim+i], val);
    }
  }

  // Extract the data from the nullspace
  for(size_t i = 0; i < dim; ++i) {
    bool ok = true;
    map<R, long> target_map;
    map<R, long> rewrite_map;
    for(size_t j = 0; j < num_columns - 1; ++j) {
      auto column = columns[j];
      if(!mpz_fits_slong_p(mp_result[j*dim + i])) {
        ok = false;
        break;
      }

      if(column.second) {
        //cout << "rewrite " << column.first << endl;
        rewrite_map[column.first] = mpz_get_si(mp_result[j*dim + i]);
        //cout << "  " << rewrite_map[column.first] << endl;
      } else {
        //cout << "target " << column.first << endl;
        //target_map[column.first] = mpz_to_long(mp_result[j*dim + i]);
        target_map[column.first] = mpz_get_si(mp_result[j*dim + i]);
        //cout << "  " << target_map[column.first] << endl;
      }
      //gmp_fprintf(stdout, "  %Zd\n", mp_result[j*dim + i]);
    }
    //cout << "Constant" << endl;
    //gmp_fprintf(stdout , "  %Zd\n", mp_result[(num_columns-1)*dim + i]);
    //cout << endl;

    if(ok) {
      EqualityInvariant ei(target_map, rewrite_map, -mpz_get_si(mp_result[(num_columns-1)*dim + i]));
      cout << ei << endl;
    } else {
      cout << "(bad)" << endl;
    }
  }

  cout << "Nullspace dimension:" << dec << dim << endl;
  cout << "Column count: " << dec << num_columns << endl;
  cout << "sizeof(long): " << sizeof(long) << endl;



  return conj;
}
