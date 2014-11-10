// Copyright 2014 eric schkufza
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

#ifndef STOKE_SRC_CFG_DOT_WRITER_H
#define STOKE_SRC_CFG_DOT_WRITER_H

#include <iostream>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"

namespace stoke {

class DotWriter {
 public:
  /** Creates a new dot writer. By default, all extended printing is disabled. */
  DotWriter() {
    set_def_in(false, false);
    set_live_out(false);
    set_dom(false);
  }

  /** Toggle whether to display the defined-in relation for blocks and instructions. */
  DotWriter& set_def_in(bool block, bool instr) {
    def_in_block_ = block;
    def_in_instr_ = instr;
    return *this;
  }
  /** Toggle whether to display the live-out relation for blocks. */
  DotWriter& set_live_out(bool block) {
    live_out_block_ = block;
    return *this;
  }
  /** Toggle whether to display the dom relation for blocks. */
  DotWriter& set_dom(bool dom) {
    dom_ = dom;
    return *this;
  }

  /** Emits a control flow graph in .dot format. */
  void operator()(std::ostream& os, const Cfg& cfg) const {
    os << "digraph g {" << std::endl;
    os << "colorscheme = blues6" << std::endl;

    write_entry(os, cfg);
    write_exit(os, cfg);
    write_blocks(os, cfg);
    write_edges(os, cfg);

    os << "}";
  }

 private:
  /** Write the entry block for this graph. */
  void write_entry(std::ostream& os, const Cfg& cfg) const;
  /** Write the exit block for this graph. */
  void write_exit(std::ostream& os, const Cfg& cfg) const;
  /** Write a block. */
  void write_block(std::ostream& os, const Cfg& cfg, Cfg::id_type id) const;
  /** Write the basic blocks in this graph. */
  void write_blocks(std::ostream& os, const Cfg& cfg) const;
  /** Write the set of blocks that this block dominates. */
  void write_dominators(std::ostream& os, const Cfg& cfg, Cfg::id_type id) const;
  /** Write the edges in this graph. */
  void write_edges(std::ostream& os, const Cfg& cfg) const;
  /** Write the contents of a register set. */
  void write_reg_set(std::ostream& os, const x64asm::RegSet& rs) const;

  /** Write the defined-in relation for blocks? */
  bool def_in_block_;
  /** Write the defined-in relation for instructions? */
  bool def_in_instr_;
  /** Write the live-out relation for blocks? */
  bool live_out_block_;
  /** Write the dom relation for blocks? */
  bool dom_;
};

} // namespace stoke

#endif
