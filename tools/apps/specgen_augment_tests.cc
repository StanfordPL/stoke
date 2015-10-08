// Copyright 2013-2015 Stanford University
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

#include <chrono>
#include <fstream>
#include <iostream>
#include <random>
#include <string>
#include <vector>
#include <streambuf>
#include <regex>

#include "src/ext/cpputil/include/command_line/command_line.h"

#include "tools/io/opc_set.h"

#include "src/search/search.h"
#include "src/validator/validator.h"
#include "src/solver/z3solver.h"

#include "tools/apps/base.h"
#include "tools/apps/specgen.h"
#include "tools/apps/support.h"

#include "src/state/cpu_states.h"
#include "tools/io/cpu_states.h"

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>

using namespace cpputil;
using namespace std;
using namespace stoke;
using namespace x64asm;
using namespace boost;

auto& io_opt = Heading::create("Main option:");

auto& testcases_arg = FileArg<CpuStates, CpuStatesReader, CpuStatesWriter>::create("testcases")
                      .usage("<path/to/file>")
                      .required()
                      .description("Testcases");

auto& out_arg = ValueArg<string>::create("out")
                .usage("<path/to/file.tc>")
                .description("File to write augmented testcases to.")
                .required();


uint64_t interesting_ints[] = {
  0x0000000000000000,
  0xFFFFFFFFFFFFFFFF,
  0x000000000000007F,
  0x0000000000007FFF,
  0x000000007FFFFFFF,
  0x7FFFFFFFFFFFFFFF,
  0x0000000000000001,
  0x0000000000000080,
  0x0000000000008000,
  0x0000000080000000,
  0x8000000000000000,
};

uint64_t interesting_doubles[] = {
  0x3ff0000000000000, // 1
  0x3ff0000000000001, // 1.0000000000000002, the smallest number > 1
  0x0000000000000001, // 4.9406564584124654 × 10−324 (Min subnormal positive double)
  0x000fffffffffffff, // 2.2250738585072009 × 10−308 (Max subnormal double)
  0x0010000000000000, // 2.2250738585072014 × 10−308 (Min normal positive double)
  0x7fefffffffffffff, // 1.7976931348623157 × 10308 (Max Double)
  0x0000000000000000, // 0
  0x8000000000000000, // –0
  0x7ff0000000000000, // Infinity
  0xfff0000000000000, // −Infinity
  0x7fffffffffffffff, // NaN
};


void fix_stack(CpuState& cs) {
  cs.stack.resize(0x700000000-128, 128);
  for (auto i = cs.stack.lower_bound(), ie = cs.stack.upper_bound(); i < ie; ++i) {
    if (!cs.stack.is_valid(i)) {
      cs.stack.set_valid(i, true);
      cs.stack[i] = rand() % 256;
    }
  }
  cs.gp[rsp].get_fixed_quad(0) = 0x700000000;
}

void add_test(CpuState& cs, CpuStates& tests) {
  fix_stack(cs);
  tests.push_back(cs);
}

void randomize_regs(CpuState& cs) {
  for (size_t i = 0, ie = cs.gp.size(); i < ie; ++i) {
    auto& r = cs.gp[i];
    for (size_t j = 0, je = r.num_fixed_bytes(); j < je; ++j) {
      r.get_fixed_byte(j) = rand() % 256;
    }
  }
  for (size_t i = 0, ie = cs.sse.size(); i < ie; ++i) {
    auto& s = cs.sse[i];
    for (size_t j = 0, je = s.num_fixed_bytes(); j < je; ++j) {
      s.get_fixed_byte(j) = rand() % 256;
    }
  }
  for (size_t i = 0, ie = cs.rf.size(); i < ie; ++i) {
    if (!cs.rf.is_fixed(i)) {
      cs.rf.set(i, rand() % 2);
    }
  }
}


int main(int argc, char** argv) {
  CommandLineConfig::strict_with_convenience(argc, argv);

  auto tests = testcases_arg.value();

  CpuState cs;

  // all zeros
  cs = CpuState();
  add_test(cs, tests);

  // special values for GP registers
  // most of our instructions use rbx or rcx from the GP registers, so generate all combinations for those
  for (auto a : interesting_ints) {
    for (auto b : interesting_ints) {
      cs = CpuState();
      randomize_regs(cs);
      cs.gp[Constants::rbx()].get_fixed_quad(0) = a;
      cs.gp[Constants::rcx()].get_fixed_quad(0) = b;
      add_test(cs, tests);
    }

    // also generate one variant for rax and rdx with special values (but not all combinations)
    cs = CpuState();
    randomize_regs(cs);
    cs.gp[Constants::rax()].get_fixed_quad(0) = a;
    add_test(cs, tests);
    cs = CpuState();
    randomize_regs(cs);
    cs.gp[Constants::rdx()].get_fixed_quad(0) = a;
    add_test(cs, tests);
  }

  // special values for vector registers
  // most inputs are in xmm1/2/3 (or the ymm variant)
  auto make_sse_tests = [](auto& tests, auto& interesting_vals) {
    CpuState cs;
    for (size_t reps : {
           1, 4
         }) {
      for (auto a : interesting_vals) {
        for (auto b : interesting_vals) {
          for (auto c : interesting_vals) {
            cs = CpuState();
            randomize_regs(cs);
            for (size_t i = 0; i < reps; i++) {
              cs.sse[Constants::xmm1()].get_fixed_quad(i) = a;
              cs.sse[Constants::xmm2()].get_fixed_quad(i) = b;
              cs.sse[Constants::xmm3()].get_fixed_quad(i) = c;
            }
            add_test(cs, tests);
          }
        }

        // also generate one variant for xmm0 and xmm4 with special values (but not all combinations)
        cs = CpuState();
        randomize_regs(cs);
        for (size_t i = 0; i < reps; i++) {
          cs.sse[Constants::xmm0()].get_fixed_quad(i) = a;
        }
        add_test(cs, tests);
        cs = CpuState();
        randomize_regs(cs);
        for (size_t i = 0; i < reps; i++) {
          cs.sse[Constants::xmm4()].get_fixed_quad(i) = a;
        }
        add_test(cs, tests);
      }
    }
  };
  make_sse_tests(tests, interesting_ints);
  make_sse_tests(tests, interesting_doubles);

  ofstream f;
  f.open(out_arg.value());
  CpuStatesWriter()(f, tests);
  f.close();
}
