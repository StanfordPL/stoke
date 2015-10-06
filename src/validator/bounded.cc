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

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/bounded.h"
#include "src/validator/invariants/true.h"

#define BOUNDED_DEBUG(X) { X }
#define ALIAS_DEBUG(X) { }
#define ALIAS_CASE_DEBUG(X) { }
#define ALIAS_STRING_DEBUG(X) { }

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace std;
using namespace stoke;
using namespace x64asm;

vector<BoundedValidator::CellArrangement>
BoundedValidator::find_arrangements(
  vector<BoundedValidator::OverlapDescriptor*>& start,
  vector<BoundedValidator::OverlapDescriptor>& available_cells, size_t max_size) {

  vector<CellArrangement> results;
  // Check for termination.
  size_t size_so_far = 0;
  for (auto& descr : start) {
    assert(descr->size > 0);
    size_so_far += descr->size;
  }
  if (size_so_far >= max_size) {
    CellArrangement a;
    for (auto it : start)
      a.push_back(*it);
    results.push_back(a);
    return results;
  }

  // Option 1: pad the cell with an empty space
  OverlapDescriptor od;
  start.push_back(&od);
  od.is_empty = true;
  od.size = 1;
  od.cell = (size_t)(-1);
  {
    auto rec_results = find_arrangements(start, available_cells, max_size);
    results.insert(results.begin(), rec_results.begin(), rec_results.end());
  }

  // Option 2: add an available cell
  od.is_empty = false;
  for (size_t i = 0; i < available_cells.size(); ++i) {
    auto descr = available_cells[i];
    od.cell = descr.cell;
    if (size_so_far == 0) {
      // we can place this cell with any size we like
      // this way, 'j' bytes are not overlapping before the overlapping region
      for (size_t j = 1; j < descr.size; ++j) {
        od.size = j;
        available_cells.erase(available_cells.begin() + i);
        auto rec_results = find_arrangements(start, available_cells, max_size);
        results.insert(results.begin(), rec_results.begin(), rec_results.end());
        available_cells.insert(available_cells.begin() + i, descr);
      }
    }
    od.size = descr.size;
    available_cells.erase(available_cells.begin() + i);
    auto rec_results = find_arrangements(start, available_cells, max_size);
    results.insert(results.begin(), rec_results.begin(), rec_results.end());
    available_cells.insert(available_cells.begin() + i, descr);
  }

  start.erase(start.end() - 1);
  return results;

}

bool vectors_have_common(std::vector<size_t> left, std::vector<size_t> right, size_t& value) {

  size_t j = 0;
  for (size_t i : left) {
    while (j < right.size() && right[j] < i) {
      j++;
    }
    if (j < right.size() && right[j] == i) {
      // we're done!
      value = i;
      return true;
    }
  }

  return false;
}

vector<size_t> enumerate_accesses(const Cfg& cfg) {
  vector<size_t> result;
  for (size_t i = 0, ie = cfg.get_code().size(); i < ie; ++i) {
    auto instr = cfg.get_code()[i];
    if (instr.is_memory_dereference() && !instr.is_ret()) {
      result.push_back(i);
    }
  }
  return result;
}

/** Takes vector of symbolic accesses, builds a map, and allocates a CellMemory to use. */
CellMemory* make_cell_memory(const vector<CellMemory::SymbolicAccess>& vector) {
  map<size_t, CellMemory::SymbolicAccess> map;
  for (auto sa : vector) {
    map[sa.line] = sa;
    ALIAS_DEBUG(
      cout << sa.line << " --> " << sa.cell << " (offset " << sa.cell_offset << " / size " << sa.size << " / cell size " << sa.cell_size << ")";
      if (sa.unconstrained)
      cout << " (UNCONSTRAINED)";
      cout << endl;
    )
    }
  return new CellMemory(map);
}

/** Filter a list of symbolic accesses to find the ones that are for target/rewrite. */
vector<CellMemory::SymbolicAccess> split_sym_accesses(const vector<CellMemory::SymbolicAccess>& big_list, bool rewrite) {
  vector<CellMemory::SymbolicAccess> v;
  for (auto& sa : big_list) {
    if (sa.is_rewrite == rewrite)
      v.push_back(sa);
  }
  return v;
}

/** Check if it's possible for there to be a testcase where target/rewrite
  take given paths with given aliasing relationships. */
bool BoundedValidator::check_feasibility(const Cfg& target, const Cfg& rewrite,
    const Cfg& target_unroll, const Cfg& rewrite_unroll,
    const CfgPath& P, const CfgPath& Q,
    const vector<CellMemory::SymbolicAccess>& sym_list) {

  ALIAS_DEBUG(cout << "~~~~~~~~~~~~~ ALIASING FEASIBILITY CHECKER ~~~~~~~~~~~~~~~~" << endl;)

  auto target_sym = split_sym_accesses(sym_list, false);
  auto rewrite_sym = split_sym_accesses(sym_list, true);

  {
    ALIAS_DEBUG(cout << "-> ORIGINAL target map" << endl;
                const auto target_mem = make_cell_memory(target_sym);
                delete target_mem;)
    ALIAS_DEBUG(cout << "-> ORIGINAL rewrite map" << endl;
                const auto rewrite_mem = make_cell_memory(rewrite_sym);
                delete rewrite_mem;)
  }

  // create unconstrainted cells for the rest of memory accesses
  size_t top_cell = 0;
  for (auto it : sym_list) {
    if (it.cell > top_cell)
      top_cell = it.cell;
  }
  top_cell++;

  for (size_t k = 0; k < 2; ++k) {
    auto& cfg = k ? rewrite_unroll : target_unroll;
    auto& path = k ? Q : P;
    auto& symb = k ? rewrite_sym : target_sym;

    auto accesses = enumerate_accesses(cfg);
    map<size_t, bool> found_access;
    for (auto it : sym_list) {
      if (it.is_rewrite == k ) {
        found_access[it.line] = true;
      }
    }

    for (auto line : accesses) {
      if (found_access[line])
        continue;

      CellMemory::SymbolicAccess sa;
      sa.line = line;
      sa.size = cfg.get_code()[sa.line].mem_dereference_size()/8;
      sa.cell = top_cell++;
      sa.cell_size = sa.size;
      sa.cell_offset = 0;
      sa.is_rewrite = k;
      sa.unconstrained = true;
      symb.push_back(sa);
    }
  }

  // Now build the memories and make the constraints
  ALIAS_DEBUG(cout << "-> target map" << endl;)
  const auto target_mem = make_cell_memory(target_sym);
  ALIAS_DEBUG(cout << "-> rewrite map" << endl;)
  const auto rewrite_mem = make_cell_memory(rewrite_sym);

  vector<SymBool> constraints;

  SymState init("");

  SymState state_t("1_INIT");
  state_t.memory = target_mem;
  target_mem->set_parent(&state_t);

  SymState state_r("2_INIT");
  state_r.memory = rewrite_mem;
  rewrite_mem->set_parent(&state_r);

  for (auto it : state_t.equality_constraints(init, target.def_ins()))
    constraints.push_back(it);
  for (auto it : state_r.equality_constraints(init, rewrite.def_ins()))
    constraints.push_back(it);

  auto mem_const = target_mem->equality_constraint(*rewrite_mem);
  constraints.push_back(mem_const);

  size_t line_no = 0;
  for (size_t i = 0; i < P.size(); ++i)
    build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no);
  line_no = 0;
  for (size_t i = 0; i < Q.size(); ++i)
    build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no);
  constraints.push_back(target_mem->aliasing_formula(*rewrite_mem));


  constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
  constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

  ALIAS_DEBUG(
    cout << endl << "CONSTRAINTS" << endl << endl;;
  for (auto it : constraints) {
  cout << it << endl;
})

  // Step 4: Invoke the solver
  uint64_t old_timeout = solver_.get_timeout();
  solver_.set_timeout(60000); // 1 minute max for this
  bool is_sat = solver_.is_sat(constraints);
  solver_.set_timeout(old_timeout);

  delete target_mem;
  delete rewrite_mem;

  if (solver_.has_error()) {
    //throw VALIDATOR_ERROR("solver: " + solver_.get_error());
    ALIAS_DEBUG(cout << "SMT Solver had error: " << solver_.get_error();)
    return true; // it's possible that we timed out, but there's still a solution here.  keep looking.
  }

  ALIAS_DEBUG(cout << "FEASIBLE: " << is_sat << endl;);
  /*
  if(is_sat) {
    cout << "HERE'S A CEG:" << endl;
    auto ceg = Validator::state_from_model(solver_, "_");
    bool ok = am.build_testcase_memory(ceg, solver_, *target_mem, *rewrite_mem, target, rewrite);

    cout << "ok=" << ok << endl;
    cout << ceg << endl;
  }
  */

  return is_sat;

}



vector<vector<CellMemory::SymbolicAccess>> BoundedValidator::enumerate_aliasing_helper(
    const Cfg& target, const Cfg& rewrite,
    const Cfg& target_unroll, const Cfg& rewrite_unroll,
    const CfgPath& P, const CfgPath& Q,
    const vector<CellMemory::SymbolicAccess>& todo,
    const vector<CellMemory::SymbolicAccess>& done,
size_t accesses_done) {

  ALIAS_DEBUG(cout << "===================== RECURSIVE STEP ==============================" << endl;)

  vector<vector<CellMemory::SymbolicAccess>> result;
  // Step 0: check for feasibility.  if not, stop here.
  if (!check_feasibility(target, rewrite, target_unroll, rewrite_unroll, P, Q, done))
    return result;

  // Step 1: if we've processed all the concrete accesses, we're done.  Generate CellMemories and return.
  if (todo.size() == accesses_done) {
    ALIAS_DEBUG(cout << " REACHED BASE CASE :D" << endl;)

    result.push_back(done);
    return result;
  }

  // Step 2: choose a memory access to add
  // whether we're taking an access from the target or the rewrite

  CellMemory::SymbolicAccess sa = todo[accesses_done];
  sa.unconstrained = false;

  // find the size of each cell
  map<size_t, size_t> cell_size_map;
  int tmp_cell_max = -1;
  for (auto it : done) {
    cell_size_map[it.cell] = it.cell_size;
    tmp_cell_max = tmp_cell_max > (int)it.cell ? tmp_cell_max : it.cell;
  }
  assert(tmp_cell_max >= 0);
  size_t cell_max = (size_t)tmp_cell_max;

  // Build list of available cells
  vector<OverlapDescriptor> available_cells;
  for (auto p : cell_size_map) {
    OverlapDescriptor od;
    od.cell = p.first;
    od.size = p.second;
    od.is_empty = false;
    available_cells.push_back(od);
  }
  vector<OverlapDescriptor*> start;
  auto overlap_options = find_arrangements(start, available_cells, sa.size);
  ALIAS_CASE_DEBUG(cout << "Overlap options for size " << sa.size << ":" << endl;
  for (auto& option : overlap_options) {
  for (auto& it : option) {
      if (it.is_empty)
        cout << "(E) ";
      else
        cout << "(" << it.cell << " sz. " << it.size << ") ";
    }
    cout << endl;
  })

  // For each overlap option, rewrite the cell map and recurse
  for (auto& option : overlap_options) {

    // first compute the total size of the new cell
    size_t new_cell_size = 0;
    for (auto descr : option)
      new_cell_size += descr.size;

    size_t offset_from_cell_start = 0;

    // check if the first cell in the option is shorter than the
    // actual cell; if so, that means that our offset from the
    // start of the cell is actually non-zero.
    if (!option[0].is_empty && (option[0].size < cell_size_map[option[0].cell])) {
      offset_from_cell_start = cell_size_map[option[0].cell] - option[0].size;
      new_cell_size += offset_from_cell_start;
    }

    sa.cell = cell_max+1;
    sa.cell_size = new_cell_size;
    sa.cell_offset = offset_from_cell_start;

    auto recursive_accesses = done;
    for (size_t i = 0; i < option.size(); ++i) {
      if (option[i].is_empty) {
        offset_from_cell_start += option[i].size;
        continue;
      }

      // Go through the map and rewrite every occurrence of cell[i] as
      // with the new cell.
      for (auto& it : recursive_accesses) {
        if (it.cell == option[i].cell) {
          it.cell = sa.cell;

          // when i is 0, we keep the cell offset the same, because this is the
          // first part of the new cell.  if we were to remove the
          // if-statement, offset_from_cell_start would be the wrong value
          // because it's already counting the "hangover" of this new
          if (i != 0)
            it.cell_offset = it.cell_offset + offset_from_cell_start;
          it.cell_size = new_cell_size;
        }
      }

      offset_from_cell_start += option[i].size;
    }
    recursive_accesses.push_back(sa);

    auto new_results = enumerate_aliasing_helper(target, rewrite, target_unroll, rewrite_unroll,
                       P, Q, todo, recursive_accesses, accesses_done+1);
    result.insert(result.begin(), new_results.begin(), new_results.end());
  }


  return result;
}

vector<pair<CellMemory*, CellMemory*>> BoundedValidator::enumerate_aliasing(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {
  switch (alias_strategy_) {
  case AliasStrategy::BASIC:
    return enumerate_aliasing_basic(target, rewrite, P, Q);
  case AliasStrategy::STRING:
  case AliasStrategy::STRING_NO_ALIAS:
    return enumerate_aliasing_string(target, rewrite, P, Q);
  default:
    assert(false);
    return enumerate_aliasing_basic(target, rewrite, P, Q);
  }
}

// At this point we have mega-cells 0...max_cell-1
// mega-cell i has size given by cell_sizes[i]
// Also, we have accesses sym_accesses[0]...sym_accesses[total_accesses-1]
//   these each have a cell[i], offset[i].

// What we need to do is find every way these mega-cells could possibly
// overlap.  Essentially, each of these mega-cells will have a certain fixed
// offset into a big symbolic memory.  An "offset vector" will specify the
// offsets for each mega-cell into this memory.  We need a function to
// compute all possible offset vectors.

// Hence, a function 'compute_offset_vectors'.  It takes as input:
// - an array of all the cell sizes
// - the number of cells to work on
// and it returns
// - a vector of vectors of offsets; begins with two extra values: the 'min' and 'max' indexes.
vector<vector<int>> compute_offset_vectors(size_t* cell_sizes, size_t cell_count, size_t debug_size = 0) {

  stringstream spaces;
  for (size_t i = 0; i < debug_size*2; ++i)
    spaces << " ";
  string ss = spaces.str();

  //cout << ss << "***********************************" << endl;
  //cout << ss << "** compute_offset_vectors() *******" << endl;
  //cout << ss << "***********************************" << endl << ss;
  //for(size_t i = 0; i < cell_count; ++i)
  //  cout << "  " << cell_sizes[i];
  //cout << "  (count=" << cell_count << ")" << endl;

  assert(cell_count > 0);

  if (cell_count == 1) {
    // If there's only one cell, there's only one offset it can exist at (0)
    vector<int> single_cell;
    single_cell.push_back(0); //minimum index;
    single_cell.push_back(cell_sizes[0]-1); //maximum index;
    single_cell.push_back(0); //index of cell 0.

    vector<vector<int>> results;
    results.push_back(single_cell);
    return results;
  }

  // Do the recursive call
  auto old_results = compute_offset_vectors(cell_sizes, cell_count - 1, debug_size+1);
  vector<vector<int>> new_results;

  for (auto old_result : old_results) {
    // get the min/max indexes.
    int min_index = old_result[0];
    int max_index = old_result[1];

    // we're going to 'schedule' cell 'cell_count-1'.
    size_t cell_size = cell_sizes[cell_count-1];
    assert(cell_size > 0);

    // We can schedule it anywhere between "totally before" the existing cells
    // and "totally after" the existing cells.  In the loop below, 'i' is the
    // starting index.
    //cout << ss << "answers!" << endl;
    old_result.push_back(0);
    for (int i = min_index - (int)cell_size; i <= max_index; ++i) {
      old_result.erase(old_result.end() - 1);
      old_result[0] = MIN(i, min_index);
      old_result[1] = MAX(i + (int)cell_size - 1, max_index);
      old_result.push_back(i);
      new_results.push_back(old_result);

      //cout << ss;
      //for(auto it : old_result) {
      //  cout << "  " << it;
      //i}
      //cout << endl;
    }
  }

  return new_results;
}



vector<pair<CellMemory*, CellMemory*>> BoundedValidator::enumerate_aliasing_string(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {

  auto target_unroll = CfgPaths::rewrite_cfg_with_path(target, P);
  auto rewrite_unroll = CfgPaths::rewrite_cfg_with_path(rewrite, Q);

  auto target_concrete_accesses = enumerate_accesses(target_unroll);
  auto rewrite_concrete_accesses = enumerate_accesses(rewrite_unroll);

  if (target_concrete_accesses.size() == 0 && rewrite_concrete_accesses.size() == 0) {
    auto null_pair = pair<CellMemory*, CellMemory*>(NULL, NULL);
    auto v = vector<pair<CellMemory*, CellMemory*>>();
    v.push_back(null_pair);
    return v;
  }


  // Symbolically execute target/rewrite to get memory accesses
  init_mm();

  TrivialMemory target_mem;
  TrivialMemory rewrite_mem;

  SymState target_state("1");
  target_state.memory = &target_mem;
  SymState rewrite_state("2");
  rewrite_state.memory = &rewrite_mem;

  auto constraints = target_state.equality_constraints(rewrite_state, target.def_ins());

  size_t line_no = 0;
  for (size_t i = 0; i < P.size(); ++i)
    build_circuit(target, P[i], JumpType::NONE, target_state, line_no);
  line_no = 0;
  for (size_t i = 0; i < Q.size(); ++i)
    build_circuit(rewrite, Q[i], JumpType::NONE, rewrite_state, line_no);

  for (auto& it : target_state.constraints)
    constraints.push_back(it);
  for (auto& it : rewrite_state.constraints)
    constraints.push_back(it);

  vector<TrivialMemory::SymbolicAccess> sym_accesses;
  for (size_t k = 0; k < 2; ++k) {
    auto& mem = k ? rewrite_mem : target_mem;
    size_t line = -1;
    for (auto it : mem.get_all()) {
      if (line == it.line)
        continue; //avoid duplicates from read+write operations, like add
      line = it.line;
      it.is_rewrite = k;
      sym_accesses.push_back(it);
    }
  }

  size_t total_accesses = sym_accesses.size();

  ALIAS_STRING_DEBUG(
    cout << "TARGET: " << endl << target_unroll.get_code() << endl;
    cout << "REWRITE: " << endl << rewrite_unroll.get_code() << endl;
    cout << "Total accesses: " << total_accesses << endl;);

  bool same_address[total_accesses][total_accesses];
  bool next_address[total_accesses][total_accesses];

  //We're going to use the same constraints vector for all the queries.
  // Can be much more performant if stoke #716 is done.
  for (size_t i = 0; i < total_accesses; ++i) {
    for (size_t j = 0; j < total_accesses; ++j) {
      if (i == j)
        continue;

      // (i) Are these two accesses to the same memory locations?
      SymBool equal_addrs;
      if (nacl_) {
        equal_addrs = sym_accesses[i].address[31][0] == sym_accesses[j].address[31][0];
      } else {
        equal_addrs = sym_accesses[i].address == sym_accesses[j].address;
      }
      constraints.push_back(!equal_addrs);
      same_address[i][j] = !solver_.is_sat(constraints);
      constraints.erase(--constraints.end());

      if (same_address[i][j]) {
        next_address[i][j] = false;
        continue;
      }

      // (ii) Are these two accesses in sequence?
      SymBool next_addrs;
      if (nacl_) {
        next_addrs = sym_accesses[i].address[31][0] + SymBitVector::constant(32, sym_accesses[i].size) ==
                     sym_accesses[j].address[31][0];
      } else {
        next_addrs = sym_accesses[i].address + SymBitVector::constant(64, sym_accesses[i].size) ==
                     sym_accesses[j].address;

      }
      constraints.push_back(!next_addrs);
      next_address[i][j] = !solver_.is_sat(constraints);
      constraints.erase(--constraints.end());
    }
  }

  ALIAS_STRING_DEBUG(
    cout << "SAME MAP" << endl;
    cout << "     ";
  for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << " ";
}
cout << endl << "------------------" << endl;
for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << (i < 10 ? " " : "") << " | ";
    for (size_t j = 0; j < total_accesses; ++j) {
      if (j <= i) {
        cout << "  ";
      } else {
        cout << same_address[i][j] << " ";
      }
    }
    cout << endl;
  }
  cout << endl;

       cout << "NEXT MAP" << endl;
       cout << "     ";
  for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << " ";
}
cout << endl << "------------------" << endl;
for (size_t i = 0; i < total_accesses; ++i) {
  cout << i << (i < 10 ? " " : "") << " | ";
    for (size_t j = 0; j < total_accesses; ++j) {
      if (j <= i) {
        cout << "  ";
      } else {
        cout << next_address[i][j] << " ";
      }
    }
    cout << endl;
  }
  cout << endl;);




  stop_mm();

  int cell[total_accesses];
  size_t offset[total_accesses];
  size_t max_cell = 0;
  size_t cell_sizes[total_accesses];

  for (size_t i = 0; i < total_accesses; ++i) {
    cell[i] = -1;
  }

  for (size_t i = 0; i < total_accesses; ++i) {
    if (cell[i] == -1) {
      cell_sizes[max_cell] = sym_accesses[i].size;
      cell[i] = max_cell++;
      offset[i] = 0;
    }

    for (size_t j = i+1; j < total_accesses; ++j) {
      if (same_address[i][j]) {
        cell[j] = cell[i];
        offset[j] = offset[i];
        cell_sizes[cell[i]] = MAX(offset[j] + sym_accesses[j].size, cell_sizes[cell[j]]);
      } else if (next_address[i][j]) {
        cell[j] = cell[i];
        offset[j] = offset[i] + sym_accesses[i].size;
        cell_sizes[cell[i]] = MAX(offset[j] + sym_accesses[j].size, cell_sizes[cell[j]]);
      } else if (next_address[j][i]) {
        cell[j] = cell[i];
        if (offset[i] < sym_accesses[j].size) {
          size_t difference = sym_accesses[j].size - offset[i];
          // go through every sym_access whose cell is set to i, and add the difference to the offset
          for (size_t k = 0; k < total_accesses; ++k) {
            if (k == j)
              continue;
            if (cell[k] == cell[i]) {
              offset[k] += difference;
            }
          }
          cell_sizes[cell[i]] += difference;
          offset[j] = 0;
        } else {
          offset[j] = offset[i] - sym_accesses[j].size;
        }

        cell_sizes[cell[i]] = MAX(cell_sizes[cell[j]], offset[j] + sym_accesses[j].size);
        cell_sizes[cell[i]] = MAX(cell_sizes[cell[j]], offset[i] + sym_accesses[i].size);
      }
    }
  }

  ALIAS_STRING_DEBUG(
    cout << "TOTAL CELLS: " << max_cell << endl;
  for (size_t i = 0; i < total_accesses; ++i) {
  cout << "Access " << i << " cell " << cell[i] << " offset " << offset[i]
         << " size " << sym_accesses[i].size
         << " (cell size " << cell_sizes[cell[i]] << ")" << endl;
  });

  assert(max_cell > 0);

  vector<pair<CellMemory*, CellMemory*>> result;

  if (max_cell > 1 && alias_strategy_ == AliasStrategy::STRING) {

    auto target_unroll = CfgPaths::rewrite_cfg_with_path(target, P);
    auto rewrite_unroll = CfgPaths::rewrite_cfg_with_path(rewrite, Q);

    // We'll use the helper to compute all overlaps of the mega-cells we found.
    // Typically, you give it a list of SymbolicAccesses, one per memory
    // access.  Here, we're giving it "fake" accesses, one per mega-cell we've
    // created.  The "line-number" will represent this "mega-cell".
    vector<CellMemory::SymbolicAccess> cell_list;
    for (size_t i = 0; i < max_cell; ++i) {
      CellMemory::SymbolicAccess sa;
      sa.line = i;
      sa.size = cell_sizes[i];
      sa.is_rewrite = false;
      cell_list.push_back(sa);
    }

    vector<CellMemory::SymbolicAccess> done;
    auto sa = cell_list[0];
    sa.cell = 0;
    sa.cell_offset = 0;
    sa.cell_size = cell_sizes[0];
    sa.unconstrained = false;
    done.push_back(sa);

    auto options = enumerate_aliasing_helper(target, rewrite, target_unroll, rewrite_unroll, P, Q, cell_list, done, 1);

    for (auto option : options) {
      map<size_t, CellMemory::SymbolicAccess> target_map;
      map<size_t, CellMemory::SymbolicAccess> rewrite_map;

      for (size_t i = 0; i < total_accesses; ++i) {
        size_t my_cell = cell[i];
        assert(option[my_cell].line == my_cell);

        CellMemory::SymbolicAccess sa;
        sa.line = sym_accesses[i].line;
        sa.size = sym_accesses[i].size;
        sa.cell = option[my_cell].cell;
        sa.cell_offset = offset[i] + option[my_cell].cell_offset;
        sa.cell_size = option[my_cell].cell_size;
        sa.is_rewrite = sym_accesses[i].is_rewrite;
        sa.unconstrained = false;

        assert(sa.cell_offset + sa.size <= sa.cell_size);

        if (sym_accesses[i].is_rewrite) {
          rewrite_map[sa.line] = sa;
        } else {
          target_map[sa.line] = sa;
        }
      }

      auto target_mem = new CellMemory(target_map);
      auto rewrite_mem = new CellMemory(rewrite_map);
      result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
    }

    return result;
  }

  // EASY CASE!  The mega-cells don't overlap.
  {
    map<size_t, CellMemory::SymbolicAccess> target_map;
    map<size_t, CellMemory::SymbolicAccess> rewrite_map;

    for (size_t i = 0; i < total_accesses; ++i) {
      CellMemory::SymbolicAccess sa;
      sa.line = sym_accesses[i].line;
      sa.size = sym_accesses[i].size;
      sa.cell = cell[i];
      sa.cell_offset = offset[i];
      sa.cell_size = cell_sizes[cell[i]];
      sa.unconstrained = false;

      if (sym_accesses[i].is_rewrite) {
        rewrite_map[sa.line] = sa;
      } else {
        target_map[sa.line] = sa;
      }
    }

    auto target_mem = new CellMemory(target_map);
    auto rewrite_mem = new CellMemory(rewrite_map);
    result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
  }

  /*
  if (max_cell == 2 && alias_strategy_ != AliasStrategy::STRING_NO_ALIAS) {

    {
      // Case 1: the two mega-cells overlap exactly
      map<size_t, CellMemory::SymbolicAccess> target_map;
      map<size_t, CellMemory::SymbolicAccess> rewrite_map;

      for (size_t i = 0; i < total_accesses; ++i) {
        CellMemory::SymbolicAccess sa;
        sa.line = sym_accesses[i].line;
        sa.size = sym_accesses[i].size;
        sa.cell = 0;
        sa.cell_offset = offset[i];
        sa.cell_size = MAX(cell_sizes[0], cell_sizes[1]);
        sa.unconstrained = false;

        if (sym_accesses[i].is_rewrite) {
          rewrite_map[sa.line] = sa;
        } else {
          target_map[sa.line] = sa;
        }
      }

      auto target_mem = new CellMemory(target_map);
      auto rewrite_mem = new CellMemory(rewrite_map);
      result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
    }

    for (size_t k = 1; k < cell_sizes[0]; ++k) {
      // Case 2: cell 0 comes first by k, 1 <= k < cell_sizes[0]
      map<size_t, CellMemory::SymbolicAccess> target_map;
      map<size_t, CellMemory::SymbolicAccess> rewrite_map;

      for (size_t i = 0; i < total_accesses; ++i) {
        CellMemory::SymbolicAccess sa;
        sa.line = sym_accesses[i].line;
        sa.size = sym_accesses[i].size;
        sa.cell = 0;
        sa.cell_offset = cell[i] == 0 ? offset[i] : offset[i] + k;
        sa.cell_size = MAX(k+cell_sizes[1], cell_sizes[0]);
        sa.unconstrained = false;

        if (sym_accesses[i].is_rewrite) {
          rewrite_map[sa.line] = sa;
        } else {
          target_map[sa.line] = sa;
        }
      }

      auto target_mem = new CellMemory(target_map);
      auto rewrite_mem = new CellMemory(rewrite_map);
      result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
    }

    for (size_t k = 1; k < cell_sizes[1]; ++k) {
      // Case 2: cell 1 comes first by k, 1 <= k < cell_sizes[1]
      map<size_t, CellMemory::SymbolicAccess> target_map;
      map<size_t, CellMemory::SymbolicAccess> rewrite_map;

      for (size_t i = 0; i < total_accesses; ++i) {
        CellMemory::SymbolicAccess sa;
        sa.line = sym_accesses[i].line;
        sa.size = sym_accesses[i].size;
        sa.cell = 0;
        sa.cell_offset = cell[i] == 0 ? offset[i] + k : offset[i];
        sa.cell_size = MAX(k+cell_sizes[0], cell_sizes[1]);
        sa.unconstrained = false;

        if (sym_accesses[i].is_rewrite) {
          rewrite_map[sa.line] = sa;
        } else {
          target_map[sa.line] = sa;
        }
      }

      auto target_mem = new CellMemory(target_map);
      auto rewrite_mem = new CellMemory(rewrite_map);
      result.push_back(pair<CellMemory*, CellMemory*>(target_mem, rewrite_mem));
    }
  }
  */

  ALIAS_STRING_DEBUG(cout << "ALIASING CASES: " << result.size() << endl;)
  return result;

}

// ASSUMPTION: the target and rewrite both use memory
vector<pair<CellMemory*, CellMemory*>> BoundedValidator::enumerate_aliasing_basic(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {


  auto target_unroll = CfgPaths::rewrite_cfg_with_path(target, P);
  auto rewrite_unroll = CfgPaths::rewrite_cfg_with_path(rewrite, Q);

  ALIAS_DEBUG(cout << "********************* NEW TASK ******************************" << endl;
              cout << "TARGET:" << endl;
              cout << target.get_code() << endl;
              cout << "REWRITE:" << endl;
              cout << rewrite.get_code() << endl;)


  auto target_concrete_accesses = enumerate_accesses(target_unroll);
  auto rewrite_concrete_accesses = enumerate_accesses(rewrite_unroll);

  if (target_concrete_accesses.size() == 0 && rewrite_concrete_accesses.size() == 0) {
    auto null_pair = pair<CellMemory*, CellMemory*>(NULL, NULL);
    auto v = vector<pair<CellMemory*, CellMemory*>>();
    v.push_back(null_pair);
    return v;
  }

  // Build the list of all memory accesses

  vector<CellMemory::SymbolicAccess> todo;

  for (auto line : target_concrete_accesses) {
    CellMemory::SymbolicAccess sa;
    sa.line = line;
    sa.size = target_unroll.get_code()[line].mem_dereference_size()/8;
    sa.is_rewrite = false;
    todo.push_back(sa);
  }
  for (auto line : rewrite_concrete_accesses) {
    CellMemory::SymbolicAccess sa;
    sa.line = line;
    sa.size = rewrite_unroll.get_code()[line].mem_dereference_size()/8;
    sa.is_rewrite = true;
    todo.push_back(sa);
  }

  // Place the first memory access.
  vector<CellMemory::SymbolicAccess> done;
  auto first = todo[0];
  first.cell = 0;
  first.cell_offset = 0;
  first.cell_size = first.size;
  first.unconstrained = false;
  done.push_back(first);


  auto options =  enumerate_aliasing_helper(target, rewrite, target_unroll, rewrite_unroll, P, Q,
                  todo, done, 1);

  vector<pair<CellMemory*, CellMemory*>> result;

  for (auto& option : options) {
    ALIAS_DEBUG(cout << "  target map: " << endl;)
    auto target_accesses = split_sym_accesses(option, false);
    auto t = make_cell_memory(target_accesses);
    ALIAS_DEBUG(cout << "  rewrite map: " << endl;)
    auto rewrite_accesses = split_sym_accesses(option, true);
    auto r = make_cell_memory(rewrite_accesses);
    result.push_back(pair<CellMemory*, CellMemory*>(t, r));
  }

  return result;
}




void BoundedValidator::build_circuit(const Cfg& cfg, Cfg::id_type bb, JumpType jump,
                                     SymState& state, size_t& line_no) {

  if (cfg.num_instrs(bb) == 0)
    return;

  size_t start_index = cfg.get_index(std::pair<Cfg::id_type, size_t>(bb, 0));
  size_t end_index = start_index + cfg.num_instrs(bb);

  for (size_t i = start_index; i < end_index; ++i) {
    line_no++;
    auto instr = cfg.get_code()[i];

    if (instr.is_jcc()) {
      // get the name of the condition
      string name = opcode_write_att(instr.get_opcode());
      string condition = name.substr(1);
      auto constraint = ConditionalHandler::condition_predicate(condition, state);

      // figure out if its this condition (jump case) or negation (fallthrough)
      //cout << "INSTR: " << instr << endl;
      switch (jump) {
      case JumpType::JUMP:
        //cout << "Assuming jump for " << instr << endl;
        state.constraints.push_back(constraint);
        break;
      case JumpType::FALL_THROUGH:
        //cout << "Assuming fall-through for " << instr << endl;
        constraint = !constraint;
        state.constraints.push_back(constraint);
        break;
      case JumpType::NONE:
        break;
      default:
        assert(false);
      }

    } else if (instr.is_label_defn() || instr.is_nop() || instr.is_any_jump()) {
      continue;
    } else if (instr.is_ret()) {
      return;
    } else {
      // Build the handler for the instruction
      state.set_lineno(line_no-1);
      //cout << "LINE=" << line_no-1 << ": " << instr << endl;
      handler_.build_circuit(instr, state);

      if (handler_.has_error()) {
        stringstream ss;
        ss << "Error building circuit for: " << instr << ".";
        ss << "Handler says: " << handler_.error();
        throw VALIDATOR_ERROR(ss.str());
      }
    }
  }
}

BoundedValidator::JumpType BoundedValidator::is_jump(const Cfg& cfg, const CfgPath& P, size_t i) {

  if (i == P.size() - 1)
    return JumpType::NONE;

  auto block = P[i];

  auto itr = cfg.succ_begin(block);
  if (itr == cfg.succ_end(block)) {
    // there are no successors
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  itr++;
  if (itr == cfg.succ_end(block)) {
    // there is only only successor
    //cout << "is_jump " << block << " NONE" << endl;
    return JumpType::NONE;
  }

  // ok, there are at least 2 successors
  auto next_block = P[i+1];
  if (next_block == block + 1) {
    //cout << "is_jump " << block << " FALL" << endl;
    return JumpType::FALL_THROUGH;
  }
  else {
    //cout << "is_jump " << block << " JUMP" << endl;
    return JumpType::JUMP;
  }
}

void delete_memories(std::vector<std::pair<CellMemory*, CellMemory*>>& memories) {
  for (auto p : memories) {
    delete p.first;
    delete p.second;
  }
}

bool BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q) {
  return verify_pair(target, rewrite, P, Q, TrueInvariant(), TrueInvariant(), true);
}

bool BoundedValidator::verify_pair(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove, bool check_equality) {

  BOUNDED_DEBUG(cout << "===========================================" << endl;)
  BOUNDED_DEBUG(cout << "Working on pair / P: " << print(P) << " Q: " << print(Q) << endl;)
  init_mm();

  // Get a list of all aliasing cases.
  auto memory_list =  enumerate_aliasing(target, rewrite, P, Q);

  BOUNDED_DEBUG(cout << memory_list.size() << " Aliasing cases.  Yay." << endl;);

  for (auto memories : memory_list) {
    BOUNDED_DEBUG(cout << "------ NEXT ALIASING CASE -----" << endl;)
    BOUNDED_DEBUG(
    if (memories.first) {
    cout << "TARGET MAP:" << endl;
    for (auto q : memories.first->get_line_cell_map()) {
        auto p = q.second;
        cout << p.line << " -> " << p.cell << " (size " << p.size << " / cell size " << p.cell_size << " / offset " << p.cell_offset << endl;
      }
      cout << "REWRITE MAP:" << endl;
      for (auto q : memories.second->get_line_cell_map()) {
        auto p = q.second;
        cout << p.line << " -> " << p.cell << " (size " << p.size << " / cell size " << p.cell_size << " / offset " << p.cell_offset << endl;
      }
    }
    )
    // Step 3: Build circuits

    vector<SymBool> constraints;

    SymState init("");
    SymState state_t("1_INIT");
    SymState state_r("2_INIT");

    // Force equality of initial states
    for (auto it : state_t.equality_constraints(init, target.def_ins()))
      constraints.push_back(it);
    for (auto it : state_r.equality_constraints(init, rewrite.def_ins()))
      constraints.push_back(it);

    if (memories.first) {
      state_t.memory = memories.first;
      state_t.memory->set_parent(&state_t);
      state_r.memory = memories.second;
      state_r.memory->set_parent(&state_r);

      auto mem_const = memories.first->equality_constraint(*memories.second);
      BOUNDED_DEBUG(cout << "Start memory constraint: " << mem_const << endl;)
      constraints.push_back(mem_const);
    }

    // Add given assumptions
    constraints.push_back(assume(state_t, state_r));

    // Build the circuits
    size_t line_no = 0;
    for (size_t i = 0; i < P.size(); ++i)
      build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no);
    line_no = 0;
    for (size_t i = 0; i < Q.size(); ++i)
      build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no);

    if (memories.first)
      constraints.push_back(memories.first->aliasing_formula(*memories.second));

    constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
    constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

    BOUNDED_DEBUG(
      cout << endl << "CONSTRAINTS" << endl << endl;;
    for (auto it : constraints) {
    cout << it << endl;
  })

    // Build inequality constraint
    SymBool inequality = SymBool::_false();

    if (check_equality) {
      for (auto it : state_t.equality_constraints(state_r, target.live_outs())) {
        inequality = inequality | !it;
        BOUNDED_DEBUG(cout << "INEQUALITY: " << it << endl;)
      }
    }

    if (memories.first) {
      auto mem_const = memories.first->equality_constraint(*memories.second);
      mem_const = !mem_const;
      inequality = inequality | mem_const;
      BOUNDED_DEBUG(cout << "End memory constraint: " << mem_const << endl;)
    }

    auto prove_constraint = !prove(state_t, state_r);
    BOUNDED_DEBUG(cout << "Proof inequality: " << prove_constraint << endl;)
    inequality = inequality | prove_constraint;

    constraints.push_back(inequality);

    // Step 4: Invoke the solver
    bool is_sat = solver_.is_sat(constraints);
    if (solver_.has_error()) {
      throw VALIDATOR_ERROR("solver: " + solver_.get_error());
    }

    if (is_sat) {
      auto ceg = Validator::state_from_model(solver_, "_");
      if (memories.first) {
        bool ok = am.build_testcase_memory(ceg, solver_,
                                           *static_cast<CellMemory*>(state_t.memory),
                                           *static_cast<CellMemory*>(state_r.memory),
                                           target, rewrite);
        if (ok) {
          counterexamples_.push_back(ceg);
        } else {
          delete_memories(memory_list);
          //throw VALIDATOR_ERROR("Couldn't build counterexample!  This is a BOUNDED VALIDATOR BUG.");
          cout << "Couldn't build counterexample!  This is probably a bug!" << endl;
          return false;
        }
      } else {
        counterexamples_.push_back(ceg);
      }
      BOUNDED_DEBUG(cout << "  (Got counterexample)" << endl;)
      BOUNDED_DEBUG(cout << ceg << endl;)

      delete_memories(memory_list);
      stop_mm();
      return false;
    } else {
      BOUNDED_DEBUG(cout << "  (This case verified)" << endl;)
    }

  }

  delete_memories(memory_list);
  stop_mm();
  return true;

}

bool BoundedValidator::verify(const Cfg& init_target, const Cfg& init_rewrite) {


#ifdef DEBUG_VALIDATOR
  std::cout << "Enter the dragon!" << std::endl;
#endif
  // State
  counterexamples_.clear();
  paths_[false].clear();
  paths_[true].clear();
  has_error_ = false;
  init_mm();

  auto target = inline_functions(init_target);
  auto rewrite = inline_functions(init_rewrite);
  am.set_sandbox(sandbox_);

  try {

    // Step 0: Background checks
    sanity_checks(target, rewrite);

    // Step 1: get all the paths from the enumerator
    for (auto path : CfgPaths::enumerate_paths(target, bound_)) {
      //cout << "adding TP: " << print(path) << endl;
      paths_[false].push_back(path);
    }
    //cout << "REWRITE: " << endl << rewrite.get_code() << endl;
    for (auto path : CfgPaths::enumerate_paths(rewrite, bound_)) {
      //cout << "adding RP: " << print(path) << endl;
      paths_[true].push_back(path);
    }

    // Handle the shorter paths first, please
    // [helps find counterexamples sooner]
    auto by_length = [](const CfgPath& lhs, const CfgPath& rhs) {
      return lhs.size() < rhs.size();
    };
    sort(paths_[false].begin(), paths_[false].end(), by_length);
    sort(paths_[true].begin(), paths_[true].end(), by_length);

    // Step 2: check each pair of paths
    bool ok = true;
    size_t total = paths_[false].size() * paths_[true].size();
    size_t count = 0;
    for (auto target_path : paths_[false]) {
      for (auto rewrite_path : paths_[true]) {
        count++;
        ok &= verify_pair(target, rewrite, target_path, rewrite_path);

        // Case 1: verify failed and we have ceg; return false
        // Case 2: verify failed and no counterexampe: keep going
        // Case 3: verify worked: keep going

        if (!ok && counterexamples_.size() > 0)
          break;
      }
      if (!ok && counterexamples_.size() > 0)
        break;
    }

    reset_mm();
    return ok;

  } catch (validator_error e) {
    has_error_ = true;
    error_ = e.get_message();
    error_file_ = e.get_file();
    error_line_ = e.get_line();

    reset_mm();
    return false;
  }

  reset_mm();

  has_error_ = true;
  error_ = "Internal error!  Unexpected control flow.";
  return false;

}


