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

#include "src/cfg/cfg.h"
#include "src/cfg/paths.h"
#include "src/symstate/memory/trivial.h"
#include "src/validator/obligation_checker.h"
#include "src/validator/invariants/conjunction.h"
#include "src/validator/invariants/memory_equality.h"
#include "src/validator/invariants/state_equality.h"
#include "src/validator/invariants/true.h"


#define OBLIG_DEBUG(X) { }
#define CONSTRAINT_DEBUG(X) { }
#define BUILD_TC_DEBUG(X) { }
#define ALIAS_DEBUG(X) { }
#define ALIAS_CASE_DEBUG(X) { }
#define ALIAS_STRING_DEBUG(X) { }
#define CEG_DEBUG(X) { }

#define MAX(X,Y) ( (X) > (Y) ? (X) : (Y) )
#define MIN(X,Y) ( (X) < (Y) ? (X) : (Y) )

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace std::chrono;

#ifdef DEBUG_CHECKER_PERFORMANCE
uint64_t ObligationChecker::number_queries_ = 0;
uint64_t ObligationChecker::number_cases_ = 0;
uint64_t ObligationChecker::constraint_gen_time_ = 0;
uint64_t ObligationChecker::solver_time_ = 0;
uint64_t ObligationChecker::aliasing_time_ = 0;
uint64_t ObligationChecker::ceg_time_ = 0;
#endif

template <typename K, typename V>
map<K,V> append_maps(vector<map<K,V>> maps) {

  map<K,V> output;

  for (auto m : maps) {
    for (auto p : m) {
      output[p.first] = p.second;
    }
  }

  return output;
}

bool ObligationChecker::build_testcase_flat_memory(CpuState& ceg, FlatMemory& memory, const map<const SymBitVectorAbstract*, uint64_t>& others) const {

  auto var = memory.get_variable();
  auto symvar = static_cast<const SymArrayVar* const>(var.ptr);
  auto str = symvar->name_;

  auto mem_map = solver_.get_model_array(str, 64, 8);

  for (auto p : others) {
    auto abs_var = p.first;
    uint64_t size = p.second;

    auto var = static_cast<const SymBitVectorVar*>(abs_var);
    auto var_name = var->get_name();
    auto var_size = var->get_size();
    assert(var_size == 64);
    auto address_bv = solver_.get_model_bv(var_name, var_size);
    auto addr = address_bv.get_fixed_quad(0);

    for (uint64_t i = addr; i < addr + size; ++i) {
      BitVector zero(8);
      zero.get_fixed_byte(0) = 0;
      if (!mem_map.count(i)) {
        mem_map[i] = zero;
      }
    }
  }

  BUILD_TC_DEBUG(
    cout << "[build tc] map:" << endl;
  for (auto it : mem_map) {
  cout << "  " << it.first << " -> " << (uint64_t)it.second.get_fixed_byte(0) << endl;
  }
  );

  if (Validator::memory_map_to_testcase(mem_map, ceg))
    return true;

  return false;


}

bool ObligationChecker::build_testcase_cell_memory(CpuState& ceg, const CellMemory* target_memory, const CellMemory* rewrite_memory, const Cfg& target, const Cfg& rewrite) const {

  if (!target_memory || !rewrite_memory) {
    BUILD_TC_DEBUG(cout << "[build tc] no memory found" << endl;)
    return false;
  }

  std::map<uint64_t, BitVector> addr_value_pairs;

  // Allocate a tiny bit of stack memory
  auto rsp_val = ceg[rsp];
  BitVector zeros(64);
  zeros.get_fixed_quad(0) = 0;
  addr_value_pairs[rsp_val-8] = zeros;

  for (size_t k = 0; k < 2; ++k) {
    auto& memory = k ? *rewrite_memory : *target_memory;
    auto access_map = memory.get_line_cell_map();

    for (auto pair : access_map) {
      auto access = pair.second;
      auto cell = access.cell;

      stringstream ss;
      ss << "CELL_" << cell << "_ADDR";

      auto addr_bv = solver_.get_model_bv(ss.str(), 64);
      auto address = addr_bv.get_fixed_quad(0);

      assert(memory.init_cells_.count(cell));
      const SymBitVector* v = &memory.init_cells_.at(cell);
      auto value_var = dynamic_cast<const SymBitVectorVar*>(v->ptr);
      auto value_bv = solver_.get_model_bv(value_var->get_name(), value_var->get_size());

      BUILD_TC_DEBUG(cout << "[build tc] Cell " << cell << " address = " << hex << address
                     << "; has " << value_bv.num_fixed_bytes() << " bytes" << endl;)

      addr_value_pairs[address] = value_bv;
    }
  }

  BUILD_TC_DEBUG(
    cout << "[build tc] map:" << endl;
  for (auto it : addr_value_pairs) {
  cout << "  " << it.first << " -> ";
  for (size_t j = 0; j < it.second.num_fixed_bytes(); ++j) {
      cout << (uint64_t)it.second.get_fixed_byte(j);
    }
    cout << endl;
  }
  );
  if (Validator::memory_map_to_testcase(addr_value_pairs, ceg))
    return true;

  return false;
}

CpuState ObligationChecker::run_sandbox_on_path(const Cfg& cfg, const CfgPath& P, const CpuState& state) {

  Sandbox sb(*sandbox_);
  sb.reset(); // if we ever want to call helper functions, this will break.

  auto new_cfg = CfgPaths::rewrite_cfg_with_path(cfg, P);
  auto new_f = new_cfg.get_function();
  new_f.push_back(x64asm::Instruction(x64asm::RET));
  new_cfg = Cfg(new_f, new_cfg.def_ins(), new_cfg.live_outs());

  sb.insert_input(state);
  sb.insert_function(new_cfg);
  sb.set_entrypoint(new_cfg.get_code()[0].get_operand<x64asm::Label>(0));
  sb.run();

  CpuState output = *(sb.get_output(0));
  return output;

}

bool ObligationChecker::check_counterexample(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove, const CpuState& ceg, const CpuState& ceg2) {

  // We can't do anything without a sandbox
  if (!sandbox_) {
    CEG_DEBUG(cout << "  (No sandbox available; not checking counterexample.)" << endl;);
    return true;
  }

  // First, the counterexample has to pass the invariant.
  if (!assume.check(ceg, ceg2)) {
    CEG_DEBUG(cout << "  (Counterexample does not meet assumed invariant.)" << endl;);
    return false;
  }

  // Next, we run only the relevant blocks of the target/rewrite.
  CpuState target_output = run_sandbox_on_path(target, P, ceg);
  CpuState rewrite_output = run_sandbox_on_path(rewrite, Q, ceg);

  // Lastly, we check that the final states do not satisfy the invariant
  if (prove.check(target_output, rewrite_output)) {
    CEG_DEBUG(cout << "  TARGET (actual) END state:" << endl << target_output << endl;)
    CEG_DEBUG(cout << "  REWRITE (actual) END state:" << endl << rewrite_output << endl;)
    CEG_DEBUG(cout << "  (Counterexample satisifes desired invariant; it shouldn't)" << endl;);
    return false;
  }

  return true;
}

vector<ObligationChecker::CellArrangement>
ObligationChecker::find_arrangements(
  vector<ObligationChecker::OverlapDescriptor*>& start,
  vector<ObligationChecker::OverlapDescriptor>& available_cells, size_t max_size) {

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

bool ObligationChecker::vectors_have_common(const std::vector<size_t>& left, const std::vector<size_t>& right, size_t& value) {

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

vector<size_t> ObligationChecker::enumerate_accesses(const Cfg& cfg) {
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
CellMemory* ObligationChecker::make_cell_memory(const vector<CellMemory::SymbolicAccess>& vector) {
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
vector<CellMemory::SymbolicAccess> ObligationChecker::split_sym_accesses(const vector<CellMemory::SymbolicAccess>& big_list, bool rewrite) {
  vector<CellMemory::SymbolicAccess> v;
  for (auto& sa : big_list) {
    if (sa.is_rewrite == rewrite)
      v.push_back(sa);
  }
  return v;
}

/** Check if it's possible for there to be a testcase where target/rewrite
  take given paths with given aliasing relationships. */
bool ObligationChecker::check_feasibility(const Cfg& target, const Cfg& rewrite,
    const Cfg& target_unroll, const Cfg& rewrite_unroll,
    const CfgPath& P, const CfgPath& Q,
    const vector<CellMemory::SymbolicAccess>& sym_list,
    const Invariant& assume) {

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

  constraints.push_back(assume(state_t, state_r));

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

  return is_sat;

}



vector<vector<CellMemory::SymbolicAccess>> ObligationChecker::enumerate_aliasing_helper(
    const Cfg& target, const Cfg& rewrite,
    const Cfg& target_unroll, const Cfg& rewrite_unroll,
    const CfgPath& P, const CfgPath& Q,
    const vector<CellMemory::SymbolicAccess>& todo,
    const vector<CellMemory::SymbolicAccess>& done,
    size_t accesses_done,
    const Invariant& assume,
bool check_feasible) {

  ALIAS_DEBUG(cout << "===================== RECURSIVE STEP ==============================" << endl;)

  vector<vector<CellMemory::SymbolicAccess>> result;
  // Step 0: check for feasibility.  if not, stop here.
  if (check_feasible && !check_feasibility(target, rewrite, target_unroll, rewrite_unroll, P, Q, done, assume))
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
                       P, Q, todo, recursive_accesses, accesses_done+1, assume, check_feasible);
    result.insert(result.begin(), new_results.begin(), new_results.end());
  }


  return result;
}

vector<pair<CellMemory*, CellMemory*>> ObligationChecker::enumerate_aliasing(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume) {
  switch (alias_strategy_) {
  case AliasStrategy::BASIC:
    return enumerate_aliasing_basic(target, rewrite, P, Q, assume);
  case AliasStrategy::STRING:
  case AliasStrategy::STRING_NO_ALIAS:
    return enumerate_aliasing_string(target, rewrite, P, Q, assume);
  case AliasStrategy::FLAT: {
    auto res = vector<pair<CellMemory*, CellMemory*>>();
    res.push_back(pair<CellMemory*,CellMemory*>(NULL, NULL));
    return res;
  }
  default:
    assert(false);
    return enumerate_aliasing_basic(target, rewrite, P, Q, assume);
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
vector<vector<int>> ObligationChecker::compute_offset_vectors(size_t* cell_sizes, size_t cell_count, size_t debug_size = 0) {

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



vector<pair<CellMemory*, CellMemory*>> ObligationChecker::enumerate_aliasing_string(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume) {

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

  vector<SymBool> constraints;
  constraints.push_back(assume(target_state, rewrite_state));

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
    for (size_t j = i+1; j < total_accesses; ++j) {

      // (i) Are these two accesses to the same memory locations?
      SymBool equal_addrs;
      equal_addrs = sym_accesses[i].address == sym_accesses[j].address;
      constraints.push_back(!equal_addrs);
      same_address[i][j] = !solver_.is_sat(constraints);
      constraints.erase(--constraints.end());

      if (same_address[i][j]) {
        next_address[i][j] = false;
        continue;
      }

      // (ii) Are these two accesses in sequence?
      SymBool next_addrs;
      next_addrs = sym_accesses[i].address + SymBitVector::constant(64, sym_accesses[i].size) ==
                   sym_accesses[j].address;
      constraints.push_back(!next_addrs);
      next_address[i][j] = !solver_.is_sat(constraints);
      constraints.erase(--constraints.end());
    }
  }

  for (size_t i = 0; i < total_accesses; ++i) {
    for (size_t j = 0; j < i; ++j) {
      same_address[i][j] = same_address[j][i];

      if (same_address[i][j]) {
        next_address[i][j] = false;
        continue;
      }

      // (ii) Are these two accesses in sequence?
      SymBool next_addrs;
      next_addrs = sym_accesses[i].address + SymBitVector::constant(64, sym_accesses[i].size) ==
                   sym_accesses[j].address;

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
    ALIAS_STRING_DEBUG(cout << "Alias Strategy STRING" << std::endl;)

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

    auto options = enumerate_aliasing_helper(target, rewrite, target_unroll, rewrite_unroll, P, Q, cell_list, done, 1, assume, false);

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
vector<pair<CellMemory*, CellMemory*>> ObligationChecker::enumerate_aliasing_basic(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume) {


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
                  todo, done, 1, assume, true);

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

  cout << "Found " << result.size() << " basic aliasing cases" << endl;

  return result;
}




void ObligationChecker::build_circuit(const Cfg& cfg, Cfg::id_type bb, JumpType jump,
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

      if (nacl_) {
        // We need to add constraints keeping the index register (if present)
        // away from the edges of the ddress space.
        if (instr.is_explicit_memory_dereference()) {
          auto mem = instr.get_operand<M8>(instr.mem_index());
          if (mem.contains_index()) {
            R64 index = mem.get_index();
            auto address = state[index];
            state.constraints.push_back(address >= SymBitVector::constant(64, 0x10));
            state.constraints.push_back(address <= SymBitVector::constant(64, 0xfffffff0));
          }
        }
      }

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

ObligationChecker::JumpType ObligationChecker::is_jump(const Cfg& cfg, const CfgPath& P, size_t i) {

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

void ObligationChecker::delete_memories(std::vector<std::pair<CellMemory*, CellMemory*>>& memories) {
  for (auto p : memories) {
    delete p.first;
    delete p.second;
  }
}

bool ObligationChecker::check(const Cfg& target, const Cfg& rewrite, const CfgPath& P, const CfgPath& Q, const Invariant& assume, const Invariant& prove) {

#ifdef DEBUG_CHECKER_PERFORMANCE
  number_queries_++;
  microseconds perf_start = duration_cast<microseconds>(system_clock::now().time_since_epoch());
#endif

  OBLIG_DEBUG(cout << "===========================================" << endl;)
  OBLIG_DEBUG(cout << "Obligation Check." << endl;)
  OBLIG_DEBUG(cout << "Paths P: " << P << " Q: " << Q << endl;)
  OBLIG_DEBUG(cout << "Assuming: " << assume << endl;)
  OBLIG_DEBUG(cout << "Proving: " << prove << endl;)
  OBLIG_DEBUG(cout << "----" << endl;)
  init_mm();
  have_ceg_ = false;

  // Get a list of all aliasing cases.
  auto memory_list =  enumerate_aliasing(target, rewrite, P, Q, assume);
  bool flat_model = alias_strategy_ == AliasStrategy::FLAT;

  OBLIG_DEBUG(cout << memory_list.size() << " Aliasing cases.  Yay." << endl;);

#ifdef DEBUG_CHECKER_PERFORMANCE
  microseconds perf_alias = duration_cast<microseconds>(system_clock::now().time_since_epoch());
  aliasing_time_ += (perf_alias - perf_start).count();
#endif


  for (auto memories : memory_list) {

#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_constr_start = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    number_cases_++;
#endif


    OBLIG_DEBUG(cout << "------ NEXT ALIASING CASE -----" << endl;)
    ALIAS_DEBUG(
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

    SymState state_t("1_INIT");
    SymState state_r("2_INIT");

    FlatMemory initial_target_flat_memory;
    FlatMemory initial_rewrite_flat_memory;

    if (memories.first) {
      state_t.memory = memories.first;
      state_t.memory->set_parent(&state_t);
      state_r.memory = memories.second;
      state_r.memory->set_parent(&state_r);
    } else if (flat_model) {
      state_t.memory = new FlatMemory();
      initial_target_flat_memory = *static_cast<FlatMemory*>(state_t.memory);
      state_r.memory = new FlatMemory();
      initial_rewrite_flat_memory = *static_cast<FlatMemory*>(state_r.memory);
    }

    // Add given assumptions
    auto assumption = assume(state_t, state_r);
    CONSTRAINT_DEBUG(cout << "Assuming " << assumption << endl;);
    constraints.push_back(assumption);

    // Build the circuits
    size_t line_no = 0;
    for (size_t i = 0; i < P.size(); ++i)
      build_circuit(target, P[i], is_jump(target,P,i), state_t, line_no);
    line_no = 0;
    for (size_t i = 0; i < Q.size(); ++i)
      build_circuit(rewrite, Q[i], is_jump(rewrite,Q,i), state_r, line_no);

    if (memories.first)
      constraints.push_back(memories.first->aliasing_formula(*memories.second));
    else {
      auto target_flat = dynamic_cast<FlatMemory*>(state_t.memory);
      auto rewrite_flat = dynamic_cast<FlatMemory*>(state_r.memory);
      if (target_flat && rewrite_flat) {
        auto target_con = target_flat->get_constraints();
        constraints.insert(constraints.begin(),
                           target_con.begin(),
                           target_con.end());
        auto rewrite_con = rewrite_flat->get_constraints();
        constraints.insert(constraints.begin(),
                           rewrite_con.begin(),
                           rewrite_con.end());
      }
    }

    constraints.insert(constraints.begin(), state_t.constraints.begin(), state_t.constraints.end());
    constraints.insert(constraints.begin(), state_r.constraints.begin(), state_r.constraints.end());

    CONSTRAINT_DEBUG(
      cout << endl << "CONSTRAINTS" << endl << endl;;
    for (auto it : constraints) {
    cout << it << endl;
  })

    // Build inequality constraint
    auto prove_constraint = !prove(state_t, state_r);
    CONSTRAINT_DEBUG(cout << "Proof inequality: " << prove_constraint << endl;)

    constraints.push_back(prove_constraint);

    // Extract the final states of target/rewrite
    SymState state_t_final("1_FINAL");
    SymState state_r_final("2_FINAL");

    for (auto it : state_t.equality_constraints(state_t_final, RegSet::universe()))
      constraints.push_back(it);
    for (auto it : state_r.equality_constraints(state_r_final, RegSet::universe()))
      constraints.push_back(it);

    // Step 4: Invoke the solver
#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_constr_end = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    constraint_gen_time_ += (perf_constr_end - perf_constr_start).count();
#endif


    bool is_sat = solver_.is_sat(constraints);
    if (solver_.has_error()) {
      throw VALIDATOR_ERROR("solver: " + solver_.get_error());
    }

#ifdef DEBUG_CHECKER_PERFORMANCE
    microseconds perf_solve = duration_cast<microseconds>(system_clock::now().time_since_epoch());
    solver_time_ += (perf_solve - perf_constr_end).count();
#endif

    if (is_sat) {
      ceg_t_ = Validator::state_from_model(solver_, "_1_INIT");
      ceg_r_ = Validator::state_from_model(solver_, "_2_INIT");
      ceg_tf_ = Validator::state_from_model(solver_, "_1_FINAL");
      ceg_rf_ = Validator::state_from_model(solver_, "_2_FINAL");

      bool ok = true;
      if (flat_model) {
        vector<map<const SymBitVectorAbstract*, uint64_t>> other_maps;
        other_maps.push_back(initial_target_flat_memory.get_access_list());
        other_maps.push_back(initial_rewrite_flat_memory.get_access_list());
        other_maps.push_back(static_cast<FlatMemory*>(state_t.memory)->get_access_list());
        other_maps.push_back(static_cast<FlatMemory*>(state_r.memory)->get_access_list());
        auto other_map = append_maps(other_maps);

        ok &= build_testcase_flat_memory(ceg_t_, initial_target_flat_memory, other_map);
        ok &= build_testcase_flat_memory(ceg_r_, initial_rewrite_flat_memory, other_map);
        ok &= build_testcase_flat_memory(ceg_tf_, *static_cast<FlatMemory*>(state_t.memory), other_map);
        ok &= build_testcase_flat_memory(ceg_rf_, *static_cast<FlatMemory*>(state_r.memory), other_map);
      } else {
        ok &= build_testcase_cell_memory(ceg_t_,
                                         dynamic_cast<CellMemory*>(state_t.memory),
                                         dynamic_cast<CellMemory*>(state_r.memory),
                                         target, rewrite);

        ok &= build_testcase_cell_memory(ceg_r_,
                                         dynamic_cast<CellMemory*>(state_t.memory),
                                         dynamic_cast<CellMemory*>(state_r.memory),
                                         target, rewrite);

        ok &= build_testcase_cell_memory(ceg_tf_,
                                         dynamic_cast<CellMemory*>(state_t.memory),
                                         dynamic_cast<CellMemory*>(state_r.memory),
                                         target, rewrite);

        ok &= build_testcase_cell_memory(ceg_rf_,
                                         dynamic_cast<CellMemory*>(state_t.memory),
                                         dynamic_cast<CellMemory*>(state_r.memory),
                                         target, rewrite);
      }

      if (!ok) {
        // We don't have memory accurate in our counterexample.  Just leave.
        have_ceg_ = false;
        CEG_DEBUG(cout << "(  Counterexample does not have accurate memory)" << endl;)
      }

      CEG_DEBUG(cout << "  (Got counterexample)" << endl;)
      CEG_DEBUG(cout << "TARGET START STATE" << endl;)
      CEG_DEBUG(cout << ceg_t_ << endl;)
      CEG_DEBUG(cout << "REWRITE START STATE" << endl;)
      CEG_DEBUG(cout << ceg_r_ << endl;)
      CEG_DEBUG(cout << "TARGET (expected) END STATE" << endl;)
      CEG_DEBUG(cout << ceg_tf_ << endl;)
      CEG_DEBUG(cout << "REWRITE (expected) END STATE" << endl;)
      CEG_DEBUG(cout << ceg_rf_ << endl;)


      if (check_counterexample(target, rewrite, P, Q, assume, prove, ceg_t_, ceg_r_)) {
        have_ceg_ = true;
        CEG_DEBUG(cout << "  (Counterexample verified in sandbox)" << endl;)
      } else {
        CEG_DEBUG(cout << "  (Spurious counterexample detected)" << endl;)
      }

      if (flat_model) {
        delete state_t.memory;
        delete state_r.memory;
      }

      delete_memories(memory_list);
      stop_mm();

#ifdef DEBUG_CHECKER_PERFORMANCE
      microseconds perf_ceg = duration_cast<microseconds>(system_clock::now().time_since_epoch());
      ceg_time_ += (perf_ceg - perf_solve).count();
      print_performance();
#endif


      return false;
    } else {

      if (flat_model) {
        delete state_t.memory;
        delete state_r.memory;
      }

      CEG_DEBUG(cout << "  (This case verified)" << endl;)

#ifdef DEBUG_CHECKER_PERFORMANCE
      microseconds perf_ceg = duration_cast<microseconds>(system_clock::now().time_since_epoch());
      ceg_time_ += (perf_ceg - perf_solve).count();
#endif
    }

  }

#ifdef DEBUG_CHECKER_PERFORMANCE
  print_performance();
#endif

  delete_memories(memory_list);
  stop_mm();
  return true;

}


