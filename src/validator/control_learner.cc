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

#include "src/cfg/paths.h"
#include "src/cfg/sccs.h"
#include "src/solver/z3solver.h"
#include "src/symstate/bitvector.h"
#include "src/validator/control_learner.h"
#include <fstream>

#define MAX(a,b) ((a) > (b) ? (a) : (b))

#define DEBUG_CUTPOINTS(X) { }


using namespace std;
using namespace stoke;
using namespace x64asm;


template <typename T>
vector<vector<T>> remove_duplicate_rows(vector<vector<T>> matrix) {
  /** Remove duplicate rows */
  vector<vector<T>> final_matrix;
  for (size_t i = 0; i < matrix.size(); ++i) {
    bool ok = true;
    for (size_t j = 0; j < final_matrix.size(); ++j) {
      if (final_matrix[j] == matrix[i]) {
        ok = false;
        break;
      }
    }
    if (ok)
      final_matrix.push_back(matrix[i]);
  }
  return final_matrix;
}


/** Remove all constant columns, except the first one. */
ControlLearner::Matrix ControlLearner::remove_constant_cols(Matrix matrix) {
  vector<size_t> constant_columns;
  for (size_t i = 1; i < matrix[0].size(); ++i) {
    bool col_constant = true;
    int64_t starting_value = matrix[0][i];
    for (size_t j = 1; j < matrix.size(); ++j) {
      if (matrix[j][i] != starting_value) {
        col_constant = false;
        break;
      }
    }
    if (col_constant)
      constant_columns.push_back(i);
  }
  Matrix output_matrix;
  for (size_t i = 0; i < matrix.size(); ++i) {
    Vector new_row;
    for (size_t j = 0; j < matrix[i].size(); ++j) {
      if (find(constant_columns.begin(), constant_columns.end(), -1) != constant_columns.end()) {
        new_row.push_back(matrix[i][j]);
      } else {
        new_row.push_back(0);
      }
    }
    output_matrix.push_back(new_row);
  }
  return output_matrix;
}

ControlLearner::Vector ControlLearner::matrix_vector_mult(Matrix matrix, Vector vect, bool ignore_first) {
  assert(matrix[0].size == vect.size());
  size_t start = ignore_first ? 1 : 0;
  Vector results;
  for (size_t i = 0; i < matrix.size(); ++i) {
    int64_t sum = 0;
    for (size_t j = start; j < vect.size(); ++j) {
      sum += matrix[i][j]*vect[j];
    }
    results.push_back(sum);
  }
  return results;
}

bool ControlLearner::in_nullspace(Matrix matrix, Vector vect, bool ignore_first) {
  assert(matrix[0].size == vect.size());
  size_t start = ignore_first ? 1 : 0;
  for (size_t i = 0; i < matrix.size(); ++i) {
    int64_t sum = 0;
    for (size_t j = 1; j < vect.size(); ++j) {
      sum += matrix[i][j]*vect[j];
    }
    if (sum != 0)
      return false;
  }
  return true;
}

ControlLearner::Matrix ControlLearner::solve_diophantine(Matrix matrix) {
  cout << "Writing out sage code" << endl;
  ofstream of("in.sage");
  of << "rows=" << matrix.size() << endl;
  of << "cols=" << matrix[0].size() << endl;
  of << "ZZ=IntegerRing()" << endl;
  of << "A = MatrixSpace(ZZ, rows, cols)([";
  for (size_t i = 0; i < matrix.size(); ++i) {
    for (size_t j = 0; j < matrix[i].size(); ++j) {
      of << matrix[i][j];
      if (i < matrix.size() - 1 || j < matrix[i].size() - 1)
        of << ", ";
    }
  }
  of << "])" << endl;
  of << "D,U,V=A.smith_form()" << endl;
  of << "min_dim = min(rows,cols)" << endl;
  of << "diagonals = [ D[i][i] for i in range(0,min_dim) if D[i][i] != 0]" << endl;
  of << "nz_diag = len(diagonals)" << endl;
  of << "basis = [ [0]*nz_diag + [0]*i + [1] + [0]*(min_dim-nz_diag-i-1) for i in range(0,min_dim-nz_diag)]" << endl;
  of << "dim = len(basis)" << endl;
  of << "outputs = [ V*vector(b) for b in basis ]" << endl;
  of << "print len(outputs), len(outputs[0])" << endl;
  of << "for output in outputs:" << endl;
  of << "\tprint \" \".join(map(lambda x:str(x), output))" << endl;
  of << endl;
  of.close();
  int status = system("sage in.sage > sage.out 2>sage.err");

  /** Read basis vectors from sage */
  Matrix basis_vectors;
  size_t output_rows, output_cols;
  ifstream in("sage.out");
  in >> output_rows >> output_cols;
  for (size_t i = 0; i < output_rows; ++i) {
    Vector row;
    for (size_t j = 0; j < output_cols; ++j) {
      int64_t x;
      in >> x;
      row.push_back(x);
    }
    basis_vectors.push_back(row);
  }

  return basis_vectors;
}

void ControlLearner::print_matrix(Matrix m) {
  for (size_t i =0; i < m.size(); ++i) {
    for (size_t j = 0; j < m[i].size(); ++j) {
      cout << m[i][j] << "  ";
    }
    cout << endl;
  }
}

void ControlLearner::print_matrix(Vector x) {
  Matrix y;
  y.push_back(x);
  print_matrix(y);
}

void ControlLearner::compute() {

  CfgPaths cfg_paths;
  CfgSccs target_sccs(target_);
  CfgSccs rewrite_sccs(rewrite_);

  // Collect data
  cout << "COLLECTING DATA..." << endl;
  for (size_t i = 0; i < sandbox_.size(); ++i) {
    vector<TracePoint> trace;
    mine_data(target_, i, trace);
    target_traces_.push_back(trace);

    trace.clear();
    mine_data(rewrite_, i, trace);
    rewrite_traces_.push_back(trace);
  }

  cout << "BUILDING MATRIX..." << endl;
  // tc# -> segment# -> # of occurrences
  map<size_t, map<size_t, size_t>> target_matrix;
  map<size_t, map<size_t, size_t>> rewrite_matrix;
  vector<CfgPath> target_segments;
  vector<CfgPath> rewrite_segments;

  size_t segment_max_size = 1;
  for (size_t is_rewrite = 0; is_rewrite <= 1; is_rewrite++) {
    auto& traces = is_rewrite ? rewrite_traces_ : target_traces_;
    auto& segments = is_rewrite ? rewrite_segments : target_segments;
    auto& matrix = is_rewrite ? rewrite_matrix : target_matrix;

    /** For each test case */
    for (size_t i = 0; i < sandbox_.size(); ++i) {

      /** For each segment size */
      for (size_t sz = 0; sz < segment_max_size; ++sz) {

        /** For each segment that appears in the trace */
        if (traces[i].size() >= sz) {
          for (size_t j = 0; j < traces[i].size() - sz; ++j) {

            /** Build the segment */
            CfgPath this_segment;
            for (size_t k = 0; k <= sz; ++k) {
              this_segment.push_back(traces[i][j+k].block_id);
            }

            /** See if it is already listed, it not, list it. */
            auto loc = find(segments.begin(), segments.end(), this_segment);
            auto index = std::distance(segments.begin(), loc);
            if (loc == segments.end()) {
              segments.push_back(this_segment);
              index = segments.size() - 1;
            }

            /** Add to "matrix" */
            matrix[i][index]++;
          }
        }
      }
    }
  }

  /** Write out the matrix. */
  Matrix starting_matrix;
  for (size_t i = 0; i < sandbox_.size(); ++i) {
    Vector row;
    row.push_back(1);
    for (size_t j = 0; j < target_segments.size(); ++j) {
      row.push_back((int64_t)target_matrix[i][j]);
    }
    for (size_t j = 0; j < rewrite_segments.size(); ++j) {
      row.push_back((int64_t)rewrite_matrix[i][j]);
    }
    starting_matrix.push_back(row);
  }

  /** Remove columns that are constants */
  //  auto cleaned = remove_constant_cols(starting_matrix);
  auto cleaned = starting_matrix;
  auto final_matrix = remove_duplicate_rows(cleaned);

  /** Debug */
  cout << "DEBUGGING TARGET SEGMENTS" << endl;
  for (auto it : target_segments)
    cout << it << endl;
  cout << "DEBUGGING REWRITE SEGMENTS" << endl;
  for (auto it : rewrite_segments)
    cout << it << endl;

  cout << "DEBUGGUING FREQUENCY MATRICIES" << endl;
  for (size_t i = 0; i < final_matrix.size(); ++i) {
    for (size_t j = 0; j < final_matrix[i].size(); ++j) {
      cout << "  " << final_matrix[i][j];
    }
    cout << endl;
  }

  auto basis_vectors = solve_diophantine(final_matrix);

  /*
  auto column_is_target = [&target_segments, &rewrite_segments](size_t n) -> bool {
    return (n != 0) && n <= target_segments.size();
  };
  */
  auto column_is_rewrite = [&target_segments, &rewrite_segments](size_t n) -> bool {
    return n > target_segments.size();
  };
  auto column_to_segment = [&target_segments, &rewrite_segments](size_t n) -> CfgPath {
    assert(n > 0);
    if (n <= target_segments.size())
      return target_segments[n-1];
    else
      return rewrite_segments[n-target_segments.size()-1];
  };

  auto print_basis_vector = [&column_to_segment, &column_is_rewrite] (Vector& v) {
    bool first = true;
    for (size_t j = 0; j < v.size(); ++j) {
      if (v[j] != 0 && j != 0) {
        if (!first && v[j] > 0) {
          cout << "+";
        }
        first = false;
        cout << v[j] << "{" << column_to_segment(j) << "}";
        if (column_is_rewrite(j))
          cout << "R";
        else
          cout << "T";
      } else if (v[j] != 0 && j == 0) {
        cout << v[j];
        first = false;
      }
    }
    cout << " = 0" << endl;

  };

  // Choose lines to print
  /**
  vector<bool> to_print;
  for (size_t i = 0; i < basis_vectors.size(); ++i) {
    bool t_found = false;
    bool r_found = false;
    for (size_t j = 0; j < basis_vectors[0].size(); ++j) {
      if (basis_vectors[i][j] != 0) {
        if (column_is_target(j))
          t_found = true;
        if (column_is_rewrite(j))
          r_found = true;
      }
    }
    if (t_found && r_found)
      to_print.push_back(true);
    else
      to_print.push_back(false);
  }
  */

  // Print what basis vectors say
  for (size_t i = 0; i < basis_vectors.size(); ++i) {
    //if (!to_print[i])
    //  continue;
    print_basis_vector(basis_vectors[i]);
  }

  cout << "MATRIX" << endl;
  print_matrix(basis_vectors);
  // Check pairs of segments to see if they're in the nullspace
  for (size_t i = 0; i < target_segments.size(); ++i) {
    auto target_segment = target_segments[i];
    for (size_t j = 0; j < rewrite_segments.size(); ++j) {
      auto rewrite_segment = rewrite_segments[j];
      Vector vect(target_segments.size() + rewrite_segments.size() + 1, 0);
      vect[i+1] = 1;
      vect[target_segments.size() + 1 + j] = 1;
      cout << "Pair " << target_segment << "(" << i+1 << ") / " << rewrite_segment << " (" << target_segments.size()+1+j << ")";
      auto mult = matrix_vector_mult(basis_vectors, vect, true);
      if (in_nullspace(basis_vectors, vect, true)) {
        cout << " OK" << endl;
      } else {
        cout << " BAD" << endl;
        for (size_t i = 0; i < mult.size(); ++i) {
          if (mult[i]) {
            print_basis_vector(basis_vectors[i]);
          }
        }
      }
      cout << "VECT" << endl;
      print_matrix(vect);
      cout << "PRODUCT" << endl;
      print_matrix(mult);
    }
  }

}


void ControlLearner::mine_data(const Cfg& cfg, size_t testcase, std::vector<TracePoint>& trace) {

  size_t index;
  auto label = cfg.get_function().get_leading_label();
  sandbox_.clear_callbacks();
  sandbox_.insert_function(cfg);
  sandbox_.set_entrypoint(label);

  std::vector<CallbackParam*> to_free;

  for (Cfg::id_type block = cfg.get_entry(); block != cfg.get_exit(); block++) {

    CallbackParam* cp = new CallbackParam();
    to_free.push_back(cp);

    cp->block_id = block;
    cp->trace = &trace;

    bool has_jump = ends_with_jump(cfg, block);

    if (block == cfg.get_entry()) {
      // Don't run sandbox; callback manually.  This is to avoid repeated calls to the callback for jumps back to the
      // beginning of the loop... which is not what we want in general.
      TracePoint tp;
      tp.block_id = block;
      tp.cs = *sandbox_.get_input(testcase);
      trace.push_back(tp);

    } else if (has_jump) {
      index = cfg.get_index(Cfg::loc_type(block, cfg.num_instrs(block)-1));
      //DEBUG_CUTPOINTS(cout << "  - instrumenting before index=" << index << std::endl;)
      sandbox_.insert_before(label, index, callback, cp);
    } else {
      index = cfg.get_index(Cfg::loc_type(block, cfg.num_instrs(block)-1));
      //DEBUG_CUTPOINTS(cout << "  - instrumenting after index=" << index << std::endl;)
      sandbox_.insert_after(label, index, callback, cp);
    }
  }

  sandbox_.run(testcase);

  for (auto it : to_free)
    delete it;

}


bool ControlLearner::ends_with_jump(const Cfg& cfg, Cfg::id_type block) {
  size_t instrs = cfg.num_instrs(block);
  if (instrs == 0)
    return false;

  auto loc = Cfg::loc_type(block, instrs-1);
  auto instr = cfg.get_instr(loc);
  return instr.is_any_jump() || instr.is_ret();
}

void ControlLearner::callback(const StateCallbackData& data, void* arg) {
  auto args = *((CallbackParam*)arg);

  TracePoint tp;
  tp.block_id = args.block_id;
  tp.cs = data.state;

  args.trace->push_back(tp);
}









