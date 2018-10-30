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

#include "src/validator/int_matrix.h"
#include "src/validator/sage.h"

#include <cassert>
#include <chrono>
#include <iostream>
#include <ostream>
#include <fstream>
#include <cstdio>
#include <sys/types.h>
#include <sys/stat.h>


#define MAX(a,b) ((a) > (b) ? (a) : (b))

#define DEBUG_CUTPOINTS(X) { }


using namespace std;
using namespace std::chrono;
using namespace stoke;

// TODO: use temporary files for SAGE


IntVector IntMatrix::operator*(IntVector& vect) const {
  auto& matrix = *this;
  assert(matrix.size() == 0 || matrix[0].size() == vect.size());
  IntVector results;
  for (size_t i = 0; i < matrix.size(); ++i) {
    int64_t sum = 0;
    for (size_t j = 0; j < vect.size(); ++j) {
      sum += matrix[i][j]*vect[j];
    }
    results.push_back(sum);
  }
  return results;
}

IntMatrix IntMatrix::operator*(IntMatrix& other) const {
  auto& matrix = *this;
  assert(matrix.size() == 0 || matrix[0].size() == other.size());

  IntMatrix result(matrix.size(), other[0].size());

  for (size_t i = 0; i < matrix.size(); ++i) {
    for (size_t j = 0; j < other[0].size(); ++j) {
      int64_t sum = 0;
      for (size_t k = 0; k < other.size(); ++k) {
        sum += matrix[i][k]*other[k][j];
      }
      result[i][j] = sum;
    }
  }
  return result;
}

bool IntMatrix::in_nullspace(IntVector& vect) const {
  auto& matrix = *this;
  assert(matrix.size() == 0 || matrix[0].size() == vect.size());
  for (size_t i = 0; i < matrix.size(); ++i) {
    int64_t sum = 0;
    for (size_t j = 0; j < vect.size(); ++j) {
      sum += matrix[i][j]*vect[j];
    }
    if (sum != 0)
      return false;
  }
  return true;
}

IntMatrix IntMatrix::solve_diophantine() const {
  assert(check_rectangle());
  assert(this->size() > 0);
  assert((*this)[0].size() > 0);

  auto& matrix = *this;
  Sage sage;
  auto& of = sage.get_stream();
  of << "f = open(\"" << sage.get_tmp_filename() << "\", 'w')" << endl;
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
  of << "bv_len = len(V.rows())" << endl;
  of << "basis = [ [0]*nz_diag + [0]*i + [1] + [0]*(bv_len-nz_diag-i-1) for i in range(0,bv_len-nz_diag)]" << endl;
  of << "dim = len(basis)" << endl;
  of << "outputs = [ V*vector(b) for b in basis ]" << endl;
  of << "print >>f, len(outputs), len(outputs[0])" << endl;
  of << "for output in outputs:" << endl;
  of << "\tprint >>f, \" \".join(map(lambda x:str(x), output))" << endl;
  of << "f.close()" << endl;
  of << endl;

  /** Run sage */
  sage.run();

  ifstream in(sage.get_tmp_filename());

  /** Read basis vectors from sage */
  IntMatrix basis_vectors;
  size_t output_rows, output_cols;
  in >> output_rows >> output_cols;
  if (!in.good()) {
    assert(false);
    return basis_vectors;
  }
  for (size_t i = 0; i < output_rows; ++i) {
    IntVector row;
    for (size_t j = 0; j < output_cols; ++j) {

      uint64_t x;
      in >> x;

      /** Check to make sure that we don't have any parser errors */
      if (!in.good()) {
        assert(false);
        cout << "Got bad SAGE output" << endl;
        exit(1);
        return basis_vectors;
      }

      row.push_back((int64_t)x);
    }
    basis_vectors.push_back(row);
  }

  return basis_vectors;
}

IntMatrix IntMatrix::nullspace64() const {
  auto& matrix = *this;

  Sage sage;
  auto& of = sage.get_stream();
  of << "f = open(\"" << sage.get_tmp_filename() << "\", 'w')" << endl;
  of << "rows=" << matrix.size() << endl;
  of << "cols=" << matrix[0].size() << endl;
  of << "src=ZZ**rows/(ZZ**rows * 2**64)" << endl;
  of << "dst=ZZ**cols/(ZZ**cols * 2**64)" << endl;
  of << "A = matrix([";
  for (size_t i = 0; i < matrix.size(); ++i) {
    of << "[ ";
    for (size_t j = 0; j < matrix[i].size(); ++j) {
      of << matrix[i][j];
      if (j < matrix[i].size() - 1)
        of << ", ";
    }
    of << "]";
    if (i < matrix.size() - 1)
      of << ", ";
  }
  of << "])" << endl;
  of << "A = A.transpose()" << endl;
  of << "vectors = [src(x) for x in A]" << endl;
  of << "phi = dst.hom(vectors, src)" << endl;
  of << "ker = phi.kernel()" << endl;
  of << "output = [dst(b) for b in phi.kernel().gens()]" << endl;
  of << "print >>f, len(output)" << endl;
  of << "for entry in output:" << endl;
  of << "\tfor item in entry:" << endl;
  of << "\t\tprint >>f, item" << endl;
  of << "f.close()" << endl;
  of << endl;

  sage.run();
  ifstream in(sage.get_tmp_filename());

  /** Read basis vectors from sage */
  size_t output_rows;
  size_t output_cols = matrix[0].size();
  in >> output_rows;
  if (!in.good()) {
    cout << "Couldn't read output rows :(" << endl;
    assert(false);
  }
  //cout << "Looking for " << output_rows << " rows" << endl;
  IntMatrix output(output_rows, output_cols);
  for (size_t i = 0; i < output_rows; ++i) {
    for (size_t j = 0; j < output_cols; ++j) {
      uint64_t x;
      in >> x;

      /** Check to make sure that we don't have any parser errors */
      if (!in.good()) {
        //cout << "Couldn't read entry :(" << endl;
        assert(false);
        cout << "Got bad SAGE output" << endl;
        exit(1);
        return output;
      }

      output[i][j] = x;
      //cout << "Reading " << x << endl;
    }
  }

  return output;
}

IntVector IntMatrix::solve_diophantine(IntVector b) const {
  auto& matrix = *this;

  Sage sage;

  auto& of = sage.get_stream();
  of << "f = open(\"" << sage.get_tmp_filename() << "\", 'w')" << endl;
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
  of << "C = MatrixSpace(ZZ, rows, 1)([";
  for (size_t i = 0; i < b.size(); ++i) {
    of << b[i] << ", ";
  }
  of << "])" << endl;
  of << "B,U,V=A.smith_form()" << endl;
  of << "min_dim = min(rows,cols)" << endl;
  of << "diagonals = [ B[i][i] for i in range(0,min_dim) if B[i][i] != 0]" << endl;
  of << "nz_diag = len(diagonals)" << endl;
  of << "D = U*C" << endl;
  of << "solution = [ D[i][0] // B[i][i] for i in range(0, nz_diag) ] + [0]*(cols-nz_diag)" << endl;
  of << "output = V*vector(solution)" << endl;
  of << "print >>f, len(output)" << endl;
  of << "for entry in output:" << endl;
  of << "\tprint >>f, entry" << endl;
  of << "f.close()" << endl;
  of << endl;

  sage.run();
  ifstream in(sage.get_tmp_filename());
  /** Read basis vectors from sage */
  IntVector output;
  size_t output_rows;
  in >> output_rows;
  if (!in.good()) {
    assert(false);
    return output;
  }
  for (size_t i = 0; i < output_rows; ++i) {
    uint64_t x;
    in >> x;

    /** Check to make sure that we don't have any parser errors */
    if (!in.good()) {
      assert(false);
      cout << "Got bad SAGE output" << endl;
      exit(1);
      return output;
    }

    output.push_back((int64_t)x);
  }

  return output;
}

void IntMatrix::print() const {
  auto& m = *this;
  for (size_t i =0; i < m.size(); ++i) {
    for (size_t j = 0; j < m[i].size(); ++j) {
      cout << hex << m[i][j] << "  ";
    }
    cout << endl << dec;
  }
}


IntMatrix IntMatrix::remove_column(size_t index) const {
  auto& matrix = *this;
  IntMatrix result;
  for (size_t i = 0; i < matrix.size(); ++i) {
    IntVector v;
    for (size_t j = 0; j < matrix[0].size(); ++j) {
      if (j == index)
        continue;
      v.push_back(matrix[i][j]);
    }
    result.push_back(v);
  }
  return result;
}


void IntMatrix::serialize(ostream& os) const {
  auto& matrix = *this;
  os << matrix.size() << " " << matrix[0].size();
  for(size_t i = 0 ; i < matrix.size() ; ++i) {
    for(size_t j = 0; j < matrix[0].size(); ++j) {
      os << " " << matrix[i][j];
    }
  }
  os << endl;
}

IntMatrix IntMatrix::deserialize(istream& is) {
  size_t a, b;
  is >> a >> b;
  IntMatrix m(a,b);
  for(size_t i = 0; i < a; ++i) {
    for(size_t j = 0; j < b; ++j) {
      is >> m[i][j];
    }
  }
  return m;
}
