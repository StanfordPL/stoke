
#include "src/validator/dual_builder.h"
#include "src/validator/optional.h"
#include <fstream>
#include <sstream>

using namespace stoke;
using namespace std;

void DualBuilder::init() {
  first_ = true;

  auto zero_vector = control_learner_.pair_vector({0}, {0});
  state_exit_data_map_[template_.start_state()].insert(zero_vector);
}

/** Build the next possible automata. */
DualAutomata* DualBuilder::generate_pod(const EquivalenceClassMap& ecm) {
  /** if it's the first call to next, just generate what we have. */
  cout << "[next] generating initial POD" << endl;
  while (!frontiers_complete()) {
    next_frontier(ecm);
  }
  first_ = false;
  return generate_current_pod();
}

DualAutomata* DualBuilder::generate_current_pod() {
  DualAutomata* copy = new DualAutomata(template_);
  for (auto frontier : frontiers_) {
    for (auto e : frontier.edges) {
      copy->add_edge(e);
    }
  }

  return copy;
}

bool DualBuilder::exit_works(DualAutomata::Edge& e, const set<IntVector>& start_vectors) {
  /** get counts from frontier. */
  auto edge_vector = control_learner_.pair_vector(e.te, e.re);
  auto goal_vector = control_learner_.goal_vector();
  cout << "[exit_works] for " << e << "  vector=" << edge_vector << endl;
  cout << "             goal is " << goal_vector << endl;

  for(auto sv : start_vectors) {
    cout << "[exit_works] start vector=" << sv << endl;
    auto test = sv + edge_vector;
    cout << "             test        =" << test << endl;
    bool works = (test == goal_vector*(-1));
    cout << "      - does it work? " << works << endl;
    if(works)
      return true;
  }

  return false;

}

uint64_t DualBuilder::get_invariant_class(EqualityInvariant* equ, DualAutomata::Edge& e) {
  /** get counts from frontier. */
  map<size_t, size_t> target_block_counts;
  map<size_t, size_t> rewrite_block_counts;
  if (frontiers_.size()) {
    auto frontier = frontiers_.back();
    target_block_counts = frontier.get_block_counts(false);
    rewrite_block_counts = frontier.get_block_counts(true);
  }

  /** add counts for this edge. */
  for (auto blk : e.te) {
    target_block_counts[blk]++;
  }
  for (auto blk : e.re) {
    rewrite_block_counts[blk]++;
  }

  /** add up all the relevant variables. */
  uint64_t sum = 0;

  auto variables = equ->get_variables();
  for (auto var : variables) {
    if (var.is_ghost) {
      auto name = var.name.c_str();
      if (name[0] != 'n')
        continue;
      name++;
      size_t number = strtoul(name, NULL, 10);
      size_t count = var.is_rewrite ? rewrite_block_counts[number] : target_block_counts[number];
      sum += count*var.coefficient;
    }
  }

  return sum;
}

std::vector<uint64_t> DualBuilder::get_invariant_class(ConjunctionInvariant* conj, DualAutomata::Edge& e) {
  std::vector<uint64_t> equiv_class;
  for (size_t i = 0; i < conj->size(); ++i) {
    auto equ = static_cast<EqualityInvariant*>((*conj)[i]);
    auto value = get_invariant_class(equ, e);
    equiv_class.push_back(value);
  }
  return equiv_class;
}

std::vector<uint64_t> DualBuilder::get_invariant_class(DualAutomata::State& s, DualAutomata::Edge& e) {
  auto conj = template_.get_invariant(s);
  return get_invariant_class(conj, e);
}

DualBuilder::EquivalenceClassMap DualBuilder::get_handhold_class() {
  DualBuilder::EquivalenceClassMap handhold_class;
  ifstream handhold("handhold.txt");
  string handhold_line;
  while(getline(handhold, handhold_line)) {
    istringstream iss(handhold_line);
    Cfg::id_type target_state;
    Cfg::id_type rewrite_state;
    iss >> target_state >> rewrite_state;
    vector<optional<uint64_t>> values;
    while(iss.good()) {
      iss >> ws;
      char next = iss.peek();
      if(next == '*') {
        string s_tmp;
        iss >> s_tmp;
        values.push_back(optional<uint64_t>());
        continue;
      } else {
        uint64_t v;
        iss >> v;
        if(!iss.good())
          break;
        values.push_back(optional<uint64_t>(v));
      }
      iss >> ws;
    }
    auto state = DualAutomata::State(target_state, rewrite_state);
    handhold_class[state] = values;
    cout << "handhold for " << state << ":";
    for(auto it : values)
      if(it.has_value())
        cout << " " << *it;
      else
        cout << " *";
    cout << endl;
  }
  return handhold_class;
}

/** Find the next frontier and all the possible equivalence classes. */
void DualBuilder::next_frontier(const EquivalenceClassMap& handhold_class) {
  assert(!frontiers_complete());

  cout << "==== Next Frontier ==== " << frontiers_.size() << endl;

  const auto& topo_sort = template_.get_topological_sort();
  size_t frontier_count = topo_sort.size();

  /** Add a new frontier to the list and get a reference to it. */
  Frontier new_f;
  new_f.frontier_index = frontiers_.size();;
  frontiers_.push_back(new_f);
  Frontier& f = frontiers_.back();
  f.parent = this;

  /** Get the next node in the topological sort. */
  assert(f.frontier_index < topo_sort.size());
  f.head = topo_sort[f.frontier_index];
  auto my_exit_data = state_exit_data_map_[f.head];
  cout << "   [my_exit_data] at " << f.head << endl;
  for(auto it : my_exit_data) {
    cout << "     - " << it << endl;
  }

  /** Find all paths up to bound from current node to all others. */
  for (size_t i = f.frontier_index+1; i < frontier_count; ++i) {
    cout << "Looking for paths from " << f.head << " to " << topo_sort[i] << " bound=" << target_bound_ << "/" << rewrite_bound_ << endl;

    // the node we're looking for paths to
    auto current = topo_sort[i];
    auto target_dest = current.ts;
    auto rewrite_dest = current.rs;

    auto tmp_target_bound = target_bound_;
    if (f.head.ts == target_dest)
      tmp_target_bound++;

    auto tmp_rewrite_bound = rewrite_bound_;
    if (f.head.rs == rewrite_dest)
      tmp_rewrite_bound++;

    auto tps = CfgPaths::enumerate_paths(target_, tmp_target_bound, f.head.ts, target_dest);
    auto rps = CfgPaths::enumerate_paths(rewrite_, tmp_rewrite_bound, f.head.rs, rewrite_dest);

    for (auto tp : tps) {
      assert(tp.size() > 0);
      tp.erase(tp.begin());

      for (auto rp : rps) {
        assert(rp.size() > 0);
        rp.erase(rp.begin());


        DualAutomata::Edge e(f.head, tp, rp);

        cout << "Processing pair " << tp << " / " << rp << endl;

        if (current == template_.exit_state()) {
          if (exit_works(e, my_exit_data)) {
            cout << "   - this exit edge looks okay" << endl;
            f.edges.push_back(e);
          } else {
            cout << "   - this exit edge won't work; skipping" << endl;
          }
        } else {

          /** Classify each path into an equivalence class to the destination
           * node. */
          /** If a path disagrees with the equivalence class for
            a node, then we throw it out. */

          /** If a path goes to a new node without any equvialence class, then we
            have to treat that as a new equivalence class for this frontier. */
          auto classification = get_invariant_class(current, e);
          cout << "  classification of this edge pair: " << classification << endl;

          auto handhold_classification = handhold_class.at(current);
          assert(handhold_classification.size() == classification.size());
          bool matches = true;
          for(size_t i = 0; i < handhold_classification.size(); ++i) {
            auto entry = handhold_classification[i];
            if(entry.has_value()) {
              matches &= (*handhold_classification[i] == classification[i]);
            }
          }

          if(matches) {
            // add this option to a new map used for classes
            cout << "   - this edge works" << endl;
            f.edges.push_back(e);

            /** Update state_exit_data_map */
            auto exit_vector_incr = control_learner_.pair_vector(e.te, e.re);
            for(auto exit_vector : my_exit_data) {
              state_exit_data_map_[e.to].insert(exit_vector + exit_vector_incr);
            }

          } else {
            cout << "   - skipping this edge (handhold)" << endl;
          }
        }
      }
    }
  }

  cout << "Adding frontier..." << endl;
  f.debug();
}

/** Remove the last frontier -- nothing left to try. */
void DualBuilder::remove_frontier() {
  frontiers_.erase(frontiers_.end()-1);
}

/** Are the frontiers complete? */
bool DualBuilder::frontiers_complete() const {
  cout << "frontiers? " << frontiers_.size() << " and " << template_.get_topological_sort().size() << endl;
  return template_.get_topological_sort().size() <= frontiers_.size();
}

map<size_t, size_t> DualBuilder::Frontier::get_block_counts(bool is_rewrite) {
  /** see if we can recurse to any previous frontier. */
  for (size_t i = 0; i < frontier_index; ++i) {
    auto frontier = parent->frontiers_[i];
    for (auto e : frontier.edges) {
      if (e.to == head) {
        cout << "[get_block_counts]        recursing! " << e << endl;
        auto prior_map = frontier.get_block_counts(is_rewrite);
        auto& path = is_rewrite ? e.re : e.te;
        for (auto block : path) {
          prior_map[block]++;
        }
        return prior_map;
      }
    }
  }

  /** always, one encounter of the 0 block is possible :) */
  map<size_t, size_t> block_counts;
  block_counts[0] = 1;
  return block_counts;
}


