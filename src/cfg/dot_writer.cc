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

#include "src/cfg/dot_writer.h"

using namespace std;
using namespace x64asm;

namespace stoke {

void DotWriter::write_entry(ostream& os, const Cfg& cfg) const {
  os << "bb" << dec << cfg.get_entry() << " [";
  os << "shape=record  ";
  os << "label=\"{ENTRY";
  if (def_in_block_) {
    os << "|def-in: ";
    write_reg_set(os, cfg.def_ins());
  }
  os << "}\"];" << endl;
}

void DotWriter::write_exit(ostream& os, const Cfg& cfg) const {
  const auto id = cfg.get_exit();
  os << "bb" << dec << id << " [";
  os << "shape=record ";
  os << "label=\"{EXIT";
  if (def_in_block_) {
    os << "|def-in: ";
    write_reg_set(os, cfg.def_outs());
  }
  if (live_out_block_) {
    os << "|live-out: ";
    write_reg_set(os, cfg.live_outs());
  }
  os << "}\"];" << endl;
}

void DotWriter::write_block(ostream& os, const Cfg& cfg, Cfg::id_type id) const {
  os << "bb" << dec << id << "[";
  os << "shape=record, style=filled, fillcolor=white, ";
  if (!cfg.is_reachable(id)) {
    os << "color = grey, ";
  }
  os << "label=\"{";
  os << "#" << id;
  if (dom_ && cfg.is_reachable(id)) {
    os << "|dominates: ";
    write_dominators(os, cfg, id);
  }
  if (def_in_block_ && cfg.is_reachable(id)) {
    os << "|def-in: ";
    write_reg_set(os, cfg.def_ins(id));
  }
  for (size_t j = 0, je = cfg.num_instrs(id); j < je; ++j) {
    if (def_in_instr_ && cfg.is_reachable(id)) {
      os << "|def-in: ";
      write_reg_set(os, cfg.def_ins({id, j}));
    }

    os << "|";
    os << cfg.get_instr({id, j});
    os << "\\l";
  }
  os << "}\"];" << endl;
}

void DotWriter::write_blocks(ostream& os, const Cfg& cfg) const {
  map<size_t, vector<Cfg::id_type>> nestings;
  for (size_t i = cfg.get_entry() + 1, ie = cfg.get_exit(); i < ie; ++i) {
    nestings[cfg.nesting_depth(i)].push_back(i);
  }

  for (const auto& n : nestings) {
    os << "subgraph cluster_" << n.first << " {" << endl;
    os << "style = filled" << endl;
    os << "color = " << (n.first + 1) << endl;

    for (const auto id : n.second) {
      write_block(os, cfg, id);
    }
  }

  for (size_t i = 0, ie = nestings.size(); i < ie; ++i) {
    os << "}" << endl;
  }
}

void DotWriter::write_dominators(ostream& os, const Cfg& cfg, Cfg::id_type bb) const {
  os << "\\{";
  for (auto i = cfg.reachable_begin(), ie = cfg.reachable_end(); i != ie; ++i) {
    if (cfg.dom(bb, *i)) {
      os << " #" << *i;
    }
  }
  os << " \\}";
}

void DotWriter::write_edges(ostream& os, const Cfg& cfg) const {
  for (size_t i = cfg.get_entry(), ie = cfg.get_exit(); i < ie; ++i)
    for (auto s = cfg.succ_begin(i), se = cfg.succ_end(i); s != se; ++s) {
      os << "bb" << dec << i << "->bb" << dec << *s << " [";
      os << "style=";
      if (cfg.has_fallthrough_target(i) && cfg.fallthrough_target(i) == *s) {
        os << "bold";
      } else {
        os << "dashed";
      }
      os << " color=";
      if (cfg.is_back_edge({i, *s})) {
        os << "red";
      } else if (cfg.is_reachable(i) || cfg.is_entry(i)) {
        os << "black";
      } else {
        os << "grey";
      }
      os << "];" << endl;
    }
}

void DotWriter::write_reg_set(ostream& os, const RegSet& rs) const {
  os << "\\{";
  for (auto i = 0; i < 16; ++i) {
    if (rs.contains(r64s[i])) {
      os << " " << r64s[i];
    } else if (rs.contains(r32s[i])) {
      os << " " << r32s[i];
    } else if (rs.contains(r16s[i])) {
      os << " " << r16s[i];
    } else if (i < 4) {
      if (rs.contains(rls[i])) {
        os << " " << rls[i];
      } else if (rs.contains(rhs[i])) {
        os << " " << rhs[i];
      }
    } else if (rs.contains(rbs[i - 4])) {
      os << " " << rbs[i - 4];
    }
  }

  for (auto i = 0; i < 16; ++i)
    if (rs.contains(ymms[i])) {
      os << " " << ymms[i];
    } else if (rs.contains(xmms[i])) {
      os << " " << xmms[i];
    }

  os << " \\}";
}

} // namespace stoke
