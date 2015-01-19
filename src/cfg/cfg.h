// Copyright 2013-2015 Eric Schkufza, Rahul Sharma, Berkeley Churchill, Stefan Heule
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

#ifndef STOKE_SRC_CFG_CFG_H
#define STOKE_SRC_CFG_CFG_H

#include <cassert>
#include <stdint.h>

#include <map>
#include <stack>
#include <sstream>
#include <unordered_map>
#include <vector>

#include "src/ext/cpputil/include/container/bit_vector.h"
#include "src/ext/cpputil/include/container/maputil.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

class Cfg {
public:
  /** Basic block id type. */
  typedef size_t id_type;
  /** Location type; block and index within block. */
  typedef std::pair<id_type, size_t> loc_type;
  /** Edge type; points from source to target. */
  typedef std::pair<id_type, id_type> edge_type;
  /** Loop type: a set of basic blocks. */
  typedef cpputil::BitVector loop_type;

  /** Iterator over a basic block's instructions. */
  typedef x64asm::Code::const_iterator instr_iterator;
  /** Iterator over a basic block's successors. */
  typedef std::vector<id_type>::const_iterator pred_iterator;
  /** Iterator over a basic block's predecssors. */
  typedef std::vector<id_type>::const_iterator succ_iterator;
  /** Iterator over the basic blocks in a loop. */
  typedef loop_type::const_set_bit_index_iterator loop_iterator;
  /** Iterator over back edges. */
  typedef cpputil::CppUtilMap<std::map<edge_type, loop_type>>::const_key_iterator back_edge_iterator;
  /** Iterator over reachable blocks. */
  typedef cpputil::BitVector::const_set_bit_index_iterator reachable_iterator;

  /** A simple struct to store dataflow information. */
  struct DataflowSummary {
    x64asm::RegSet must_read_set;
    x64asm::RegSet must_write_set;
    x64asm::RegSet must_undef_set;
    x64asm::RegSet maybe_read_set;
    x64asm::RegSet maybe_write_set;
    x64asm::RegSet maybe_undef_set;
  };

  /** A map from labels to the dataflow summary of that function. */
  std::unordered_map<x64asm::Label, DataflowSummary> fncs_summary;

  /** Creates a new control flow graph with valid internal state. */
  Cfg(const x64asm::Code& code, const x64asm::RegSet& def_ins, const x64asm::RegSet& live_outs) :
    code_(code), fxn_def_ins_(def_ins), fxn_live_outs_(live_outs) {
    recompute();
  }

  /** Recompute internal state; recomputes basic block structure and data flow values. */
  void recompute() {
    recompute_structure();
    recompute_loops();
    recompute_defs();
    recompute_liveness();
  }
  /** Recompute graph structure; modifying control flow will invalidate this state, calling this
    method will restore it. */
  void recompute_structure() {
    recompute_blocks();
    recompute_labels();
    recompute_succs();
    recompute_preds();
    recompute_reachable();
  }
  /** Recompute loops; modifying control flow will invalidate this state, calling this method
    will restore it. Undefined if graph structure is not up to date. */
  void recompute_loops() {
    recompute_dominators();
    recompute_back_edges();
    recompute_loop_blocks();
    recompute_nesting_depth();
  }
  /** Recomputes the defined-in relation for instructions; modifying an instruction will invalidate
    this relation, calling this method will restore it. Undefined if graph structure is not up to
    date. */
  void recompute_defs() {
    if (!is_loop_free()) {
      recompute_defs_loops();
    } else {
      recompute_defs_loop_free();
    }
  }

  /** Return a reference to the code underlying this graph. */
  x64asm::Code& get_code() {
    return code_;
  }
  /** Return a const reference to the code underlying this graph. */
  const x64asm::Code& get_code() const {
    return code_;
  }

  /** Returns the number of basic blocks in this graph; includes entry and exit. */
  size_t num_blocks() const {
    return blocks_.size() - 1;
  }
  /** Returns the number of instructions in this basic block. */
  size_t num_instrs(id_type id) const {
    assert(id < num_blocks());
    return blocks_[id + 1] - blocks_[id];
  }

  /** Returns the index in the underlying code that a location corresponds to. */
  size_t get_index(const loc_type& loc) const {
    assert(loc.first < num_blocks());
    assert(loc.second < num_instrs(loc.first));
    return blocks_[loc.first] + loc.second;
  }
  /** Returns the location in this graph that an index in the underlying code corresponds to. */
  loc_type get_loc(size_t idx) const;

  /** Returns the id of the entry block. */
  id_type get_entry() const {
    return 0;
  }
  /** Returns the id of the exit block. */
  id_type get_exit() const {
    return num_blocks() - 1;
  }

  /** Returns true if this is the entry block. */
  bool is_entry(id_type id) const {
    return id == get_entry();
  }
  /** Returns true if this is the exit block. */
  bool is_exit(id_type id) const {
    return id == get_exit();
  }

  /** Returns a reference to the instruction in the underlying code at this location. */
  x64asm::Instruction& get_instr(const loc_type& loc) {
    assert(get_index(loc) < code_.size());
    return code_[get_index(loc)];
  }
  /** Returns a const reference to the instruction in the underlying code at this location. */
  const x64asm::Instruction& get_instr(const loc_type& loc) const {
    assert(get_index(loc) < code_.size());
    return code_[get_index(loc)];
  }

  /** Returns an iterator that points to the beginning of this basic block. */
  instr_iterator instr_begin(id_type id) const {
    assert(id < num_blocks());
    return code_.begin() + blocks_[id];
  }
  /** Returns an iterator that points to the end of this basic block. */
  instr_iterator instr_end(id_type id) const {
    assert(id < num_blocks());
    return code_.begin() + blocks_[id + 1];
  }

  /** Returns an iterator that points to the beginning of this block's predecessor list. */
  pred_iterator pred_begin(id_type id) const {
    assert(id < num_blocks());
    return preds_[id].begin();
  }
  /** Returns an iterator that points to the end of this block's predecessor list. */
  pred_iterator pred_end(id_type id) const {
    assert(id < num_blocks());
    return preds_[id].end();
  }

  /** Returns an iterator that points to the beginning of this block's successor list. */
  succ_iterator succ_begin(id_type id) const {
    assert(id < num_blocks());
    return succs_[id].begin();
  }
  /** Returns an iterator that points to the end of this block's successor list. */
  succ_iterator succ_end(id_type id) const {
    assert(id < num_blocks());
    return succs_[id].end();
  }

  /** Returns true if control can pass from this basic block to another either because it is
    not terminated by a jump instruction or it is terminated by a conditional jump instruction
    that can fail. */
  bool has_fallthrough_target(id_type id) const {
    assert(id < num_blocks());
    return !succs_[id].empty();
  }
  /** Returns the fallthrough target for this basic block; undefined if has_fallthrough_target()
    is false. */
  id_type fallthrough_target(id_type id) const {
    assert(has_fallthrough_target(id));
    return succs_[id][0];
  }

  /** Returns true if the final instruction of this basic block is a conditional jump. */
  bool has_conditional_target(id_type id) const {
    assert(id < num_blocks());
    return succs_[id].size() == 2;
  }
  /** Returns the id of the basic block that a successful conditional jump will proceed to;
    undefined if has_conditional_target() is false. */
  id_type conditional_target(id_type id) const {
    assert(has_conditional_target(id));
    return succs_[id][1];
  }

  /** Returns true if the first basic block dominates the second; undefined for unreachable blocks. */
  bool dom(id_type x, id_type y) const {
    assert(is_reachable(x));
    assert(is_reachable(y));
    return doms_[y][x];
  }

  /** Returns an iterator that points to the beginning of this graph's back edge list. */
  back_edge_iterator back_edge_begin() const {
    return loops_.key_begin();
  }
  /** Returns an iterator that points to the end of this graph's back edge list. */
  back_edge_iterator back_edge_end() const {
    return loops_.key_end();
  }

  /** Returns true if this edge is a back edge. */
  bool is_back_edge(const edge_type& e) const {
    return loops_.find(e) != loops_.end();
  }

  /** Returns an iterator that points to the beginning of the list of basic blocks in this
    back edge's loop; undefined if this isn't a back edge. */
  loop_iterator loop_begin(const edge_type& be) const {
    const auto itr = loops_.find(be);
    assert(itr != loops_.end());
    return itr->second.set_bit_index_begin();
  }
  /** Returns an iterator that points to the end of the list of basic blocks in this
    back edge's loop; undefined if this isn't a backedge. */
  loop_iterator loop_end(const edge_type& be) const {
    const auto itr = loops_.find(be);
    assert(itr != loops_.end());
    return itr->second.set_bit_index_end();
  }

  /** Returns true if this graph contains no loops. */
  bool is_loop_free() const {
    return loops_.empty();
  }

  /** Returns the number of loops that this basic block is contained in. */
  size_t nesting_depth(id_type id) const {
    assert(id < num_blocks());
    return nesting_depth_[id];
  }

  /** Returns the number of reachable blocks in this graph. */
  size_t num_reachable() const {
    return work_list_.size();
  }
  /** Returns an iterator that points to the beginning of this graph's reachable block list. */
  reachable_iterator reachable_begin() const {
    return reachable_.set_bit_index_begin();
  }
  /** Returns an iterator that points to the end of this graph's reachable block list. */
  reachable_iterator reachable_end() const {
    return reachable_.set_bit_index_end();
  }

  /** Returns true if control can proceed normally from the entry block to this block. */
  bool is_reachable(id_type id) const {
    assert(id < num_blocks());
    return reachable_[id];
  }

  /** Returns the set of registers that are defined on entry to this graph. */
  x64asm::RegSet def_ins() const {
    return fxn_def_ins_;
  }
  /** Returns the set of registers that are defined on entry to a basic block; undefined for unreachable
    blocks. */
  x64asm::RegSet def_ins(id_type id) const {
    assert(is_reachable(id));
    return def_ins_[get_index({id, 0})];
  }
  /** Returns the set of registers that are defined on entry to an instruction; undefined for unreachable
    blocks. */
  x64asm::RegSet def_ins(const loc_type& loc) const {
    assert(is_reachable(loc.first));
    return def_ins_[get_index(loc)];
  }
  /** Returns the set of registers that are defined on exit from this graph. */
  x64asm::RegSet def_outs() const {
    // Careful... this structure is organized by instruction index. The exit block is a special case.
    return def_ins_.back();
  }
  /** Returns the set of registers that are live-out on exit to an instruction; undefined for unrachable
    blocks */
  x64asm::RegSet live_outs(const loc_type& loc) const {
    assert(is_reachable(loc.first));
    return live_outs_[get_index(loc)];
  }

  /** Returns the set of registers that are live on exit from this graph. */
  x64asm::RegSet live_outs() const {
    return fxn_live_outs_;
  }

  /** Returns the set of registers that are live-in for this graph. */
  x64asm::RegSet live_ins(const loc_type& loc) const {
    assert(is_reachable(loc.first));
    return live_ins_[get_index(loc)];
  }

  /** Returns true if performs_undef_reach() returns true. */
  bool is_sound() const {
    return !performs_undef_read();
  }
  /** Returns true if an instruction performs a read from a register with an undefined value. */
  bool performs_undef_read() const;

  /** Explains what undefined value is read. */
  std::string which_undef_read() const;

  /** Adds summary information about a call target to increase precision of the
    dataflow analysis.  The information is about function (callable by the given
    label), and is not meant to change over the lifetime of the Cfg. */
  void add_summary(x64asm::Label label,
                   x64asm::RegSet must_read_set,
                   x64asm::RegSet must_write_set,
                   x64asm::RegSet must_undef_set,
                   x64asm::RegSet maybe_read_set,
                   x64asm::RegSet maybe_write_set,
                   x64asm::RegSet maybe_undef_set) {
    fncs_summary[label] = {
      must_read_set,
      must_write_set,
      must_undef_set,
      maybe_read_set,
      maybe_write_set,
      maybe_undef_set,
    };
  }

private:
  /** User-specified underlying code. */
  x64asm::Code code_;
  /** User-specified registers that are defined on entry to this graph. */
  x64asm::RegSet fxn_def_ins_;
  /** User-specified registers that are defined on exit from this graph. */
  x64asm::RegSet fxn_live_outs_;

  // This temporary state is maintained to reduce the overhead of repeated allocations

  /** A set of indices that correspond to the beginning of basic blocks. */
  cpputil::BitVector boundaries_;
  /** A stack of basic block ids. */
  std::stack<size_t, std::vector<size_t>> block_stack_;
  /** A list of remaining predecessors for each block. */
  std::vector<size_t> remaining_preds_;
  /** A sorted list of basic block ids. */
  std::vector<size_t> block_sort_;
  /** A map from labels to the basic blocks they mark the beginning of. */
  std::unordered_map<x64asm::Label, size_t> labels_;

  /** A list of the indices that correspond to the first instruction in each basic block. */
  std::vector<size_t> blocks_;
  /** Basic block predecessor lists. */
  std::vector<std::vector<id_type>> preds_;
  /** Basic block successor lists. */
  std::vector<std::vector<id_type>> succs_;
  /** The set of reachable basic blocks. */
  cpputil::BitVector reachable_;
  /** Scratch space for computing reachability. */
  std::vector<id_type> work_list_;
  /** The dominated by relation. */
  std::vector<cpputil::BitVector> doms_;
  /** A map from back edges to the set of basic blocks in the corresponding natural loop. */
  cpputil::CppUtilMap<std::map<edge_type, loop_type>> loops_;
  /** The number of loops that each basic block is contained in. */
  std::vector<size_t> nesting_depth_;

  /** The set of registers defined in for every instruction. The final element refers to the exit block. */
  std::vector<x64asm::RegSet> def_ins_;
  /** The set of registers defined out of every block. */
  std::vector<x64asm::RegSet> def_outs_;
  /** The gen set for each block. */
  std::vector<x64asm::RegSet> gen_;
  /** The kill set for each block. */
  std::vector<x64asm::RegSet> kill_;

  /** The set of registers live out for every instruction. The final element refers to the exit block. */
  std::vector<x64asm::RegSet> live_outs_;
  /** The set of registers live in at each instruction */
  std::vector<x64asm::RegSet> live_ins_;
  /** The use set for each block. */
  std::vector<x64asm::RegSet> liveness_use_;
  /** The def set for each block. */
  std::vector<x64asm::RegSet> liveness_kill_;

  /** Dataflow information about an instruction (more precise for function calls
    that instr.must/maybe_read/write/undef_set). */
  x64asm::RegSet must_read_set(const x64asm::Instruction& instr) const {
    // do we have more precise information available?
    if (instr.get_opcode() == x64asm::CALL_LABEL) {
      auto lbl = instr.get_operand<x64asm::Label>(0);
      auto found = fncs_summary.find(lbl);
      if (found != fncs_summary.end()) {
        // we do: use it, instead of linux calling convention
        return found->second.must_read_set;
      }
    }
    return instr.must_read_set();
  }
  /** Dataflow information about an instruction (more precise for function calls
    that instr.must/maybe_read/write/undef_set). */
  x64asm::RegSet must_write_set(const x64asm::Instruction& instr) const {
    // do we have more precise information available?
    if (instr.get_opcode() == x64asm::CALL_LABEL) {
      auto lbl = instr.get_operand<x64asm::Label>(0);
      auto found = fncs_summary.find(lbl);
      if (found != fncs_summary.end()) {
        // we do: use it, instead of linux calling convention
        return found->second.must_write_set;
      }
    }
    return instr.must_write_set();
  }
  /** Dataflow information about an instruction (more precise for function calls
    that instr.must/maybe_read/write/undef_set). */
  x64asm::RegSet must_undef_set(const x64asm::Instruction& instr) const {
    // do we have more precise information available?
    if (instr.get_opcode() == x64asm::CALL_LABEL) {
      auto lbl = instr.get_operand<x64asm::Label>(0);
      auto found = fncs_summary.find(lbl);
      if (found != fncs_summary.end()) {
        // we do: use it, instead of linux calling convention
        return found->second.must_undef_set;
      }
    }
    return instr.must_undef_set();
  }
  /** Dataflow information about an instruction (more precise for function calls
    that instr.must/maybe_read/write/undef_set). */
  x64asm::RegSet maybe_read_set(const x64asm::Instruction& instr) const {
    // do we have more precise information available?
    if (instr.get_opcode() == x64asm::CALL_LABEL) {
      auto lbl = instr.get_operand<x64asm::Label>(0);
      auto found = fncs_summary.find(lbl);
      if (found != fncs_summary.end()) {
        // we do: use it, instead of linux calling convention
        return found->second.maybe_read_set;
      }
    }
    return instr.maybe_read_set();
  }
  /** Dataflow information about an instruction (more precise for function calls
    that instr.must/maybe_read/write/undef_set). */
  x64asm::RegSet maybe_write_set(const x64asm::Instruction& instr) const {
    // do we have more precise information available?
    if (instr.get_opcode() == x64asm::CALL_LABEL) {
      auto lbl = instr.get_operand<x64asm::Label>(0);
      auto found = fncs_summary.find(lbl);
      if (found != fncs_summary.end()) {
        // we do: use it, instead of linux calling convention
        return found->second.maybe_write_set;
      }
    }
    return instr.maybe_write_set();
  }
  /** Dataflow information about an instruction (more precise for function calls
    that instr.must/maybe_read/write/undef_set). */
  x64asm::RegSet maybe_undef_set(const x64asm::Instruction& instr) const {
    // do we have more precise information available?
    if (instr.get_opcode() == x64asm::CALL_LABEL) {
      auto lbl = instr.get_operand<x64asm::Label>(0);
      auto found = fncs_summary.find(lbl);
      if (found != fncs_summary.end()) {
        // we do: use it, instead of linux calling convention
        return found->second.maybe_undef_set;
      }
    }
    return instr.maybe_undef_set();
  }

  /** Performs a forward topological sort of reachable blocks and places the result in block_sort_ */
  void forward_topo_sort();

  /** Recompute the indices in blocks_. */
  void recompute_blocks();

  /** Recompute the label-index pairs in labels_; assumes blocks_ is up to date. */
  void recompute_labels();
  /** Recompute the contents of succs_; assumes blocks_ and labels_ are up to date. */
  void recompute_succs();
  /** Recompute the contents of preds_; assumes blocks_ and succs_ are up to date. */
  void recompute_preds();
  /** Recompute the contents of reachable_; assumes blocks_ and succs_ are up to date. */
  void recompute_reachable();

  /** Recomputes dominators using the generic least fixed point dataflow algorithm. */
  void recompute_dominators();

  /** Recompute the keys in loops_; assumes blocks_ succs_ and reachable_ are up to date. */
  void recompute_back_edges();
  /** Recompute the values in loops_; assumes blocks_ preds_ and reachable_ are up to date. */
  void recompute_loop_blocks();
  /** Recompute nesting_depth_; assumes loops_ is up to date. */
  void recompute_nesting_depth();

  /** Recomputes the gen and kill sets used by recompute_defs_loops(). */
  void recompute_defs_gen_kill();
  /** Recomputes the use and defs set used for liveness */
  void recompute_liveness_use_kill();
  /** Recomputes def_ins_ using the generic least fixed point dataflow algorithm. */
  void recompute_defs_loops();
  /** Faster recomputation of def_ins_; valid only for loop-free graphs. */
  void recompute_defs_loop_free();
  /** Recomputes live_outs_ using the generic LFP dataflow algorithm */
  void recompute_liveness();
};

} // namespace stoke

#endif
