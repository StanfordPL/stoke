#ifndef STOKE_SRC_CFG_DOT_WRITER_H
#define STOKE_SRC_CFG_DOT_WRITER_H

#include <iostream>

#include "src/ext/x64asm/include/x64asm.h"

#include "src/cfg/cfg.h"

namespace stoke {

class DotWriter {
 public:
  DotWriter() {
    set_def_in(false, false);
    set_live_out(false, false);
    set_dom(false);
  }

  DotWriter& set_def_in(bool block, bool instr) {
    def_in_block_ = block;
    def_in_instr_ = instr;
    return *this;
  }
  DotWriter& set_live_out(bool block, bool instr) {
    live_out_block_ = block;
    live_out_instr_ = instr;
    return *this;
  }
  DotWriter& set_dom(bool dom) {
    dom_ = dom;
    return *this;
  }

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

  bool def_in_block_;
  bool def_in_instr_;

  bool live_out_block_;
  bool live_out_instr_;

  bool dom_;
};

} // namespace stoke

namespace std {

/** Convenience overload for ostreams; supresses debugging output. */
inline std::ostream& operator<<(std::ostream& os, const stoke::Cfg& cfg) {
  stoke::DotWriter()(os, cfg);
  return os;
}

} // namespace std

#endif
