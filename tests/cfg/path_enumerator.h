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


#include <sstream>

#include "src/cfg/cfg.h"
#include "src/cfg/path_enumerator.h"
#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

class PathEnumeratorTest : public ::testing::Test {};

TEST_F(PathEnumeratorTest, OnePath) {

  std::stringstream ss;
  ss << ".bar:" << std::endl;
  ss << "movq (%r8), %rcx" << std::endl;
  ss << "movq $0x1, %rcx" << std::endl;
  ss << ".moo:" << std::endl;
  ss << "movq $0x3, %rcx" << std::endl;
  ss << "movq $0x0, %rbx" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "movq $0x0, %rax" << std::endl;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code code;
  ss >> code;

  ASSERT_FALSE(ss.fail());

  Cfg cfg(code, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  // Step 1: Check that we get one path
  auto paths = PathEnumerator::find_paths(cfg, 10);
  EXPECT_EQ(1ul, paths.size());

  // Step 2: Check this is the right path.
  auto path = paths[0];
  EXPECT_EQ(5ul, path.size());
  for(size_t i = 0; i < path.size() - 1; ++i) {
    EXPECT_LE(path[i], path[i+1]);
  }

  // Step 3: Check that this path is returned in the right situations
  EXPECT_EQ(0ul, PathEnumerator::find_paths(cfg, 0).size());
  for(size_t i = 1; i < 5; ++i)
    EXPECT_EQ(1ul, PathEnumerator::find_paths(cfg, i).size()) << " i = " << i;
}

TEST_F(PathEnumeratorTest, TwoPaths) {

  std::stringstream ss;
  ss << ".bar:" << std::endl;
  ss << "movq (%r8), %rcx" << std::endl;
  ss << "movq $0x1, %rcx" << std::endl;
  ss << "jnz .foo" << std::endl;
  ss << "movq $0x3, %rcx" << std::endl;
  ss << "movq $0x0, %rbx" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "movq $0x0, %rax" << std::endl;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code code;
  ss >> code;

  ASSERT_FALSE(ss.fail());

  Cfg cfg(code, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  // Step 1: Check that we get two paths
  auto paths = PathEnumerator::find_paths(cfg, 10);
  EXPECT_EQ(2ul, paths.size());

  auto& shorter = (paths[0].size() < paths[1].size()) ? paths[0] : paths[1];
  auto& longer = (paths[0].size() < paths[1].size()) ? paths[1] : paths[0];

  EXPECT_EQ(4ul, shorter.size());
  EXPECT_EQ(5ul, longer.size());

  /*
  for(size_t i = 0; i < paths.size(); ++i) {
    std::cout << "PATH: ";
    for(size_t j = 0; j < paths[i].size(); ++j) {
      std::cout << paths[i][j] << "(" << cfg.get_index(std::pair<Cfg::id_type, size_t>(paths[i][j], 0)) << ") ";
    }
    std::cout << std::endl;
  }
  */

  // Step 2: Check these are the right paths.
  for(size_t k = 0; k < 2; ++k) {
    auto& path = k ? shorter : longer;
    for(size_t i = 0; i < path.size() - 1; ++i) {
      EXPECT_LE(path[i], path[i+1]);
    }
  }

  // Step 3: Check that this path is returned in the right situations
  EXPECT_EQ(0ul, PathEnumerator::find_paths(cfg, 0).size());
  for(size_t i = 1; i < 5; ++i)
    EXPECT_EQ(2ul, PathEnumerator::find_paths(cfg, i).size()) << " i = " << i;
}

TEST_F(PathEnumeratorTest, Loop) {

  std::stringstream ss;
  ss << ".bar:" << std::endl;
  ss << "movq (%r8), %rcx" << std::endl;
  ss << "movq $0x1, %rcx" << std::endl;
  ss << ".foo:" << std::endl;
  ss << "movq $0x3, %rcx" << std::endl;
  ss << "movq $0x0, %rbx" << std::endl;
  ss << "jz .foo" << std::endl;
  ss << ".moo:" << std::endl;
  ss << "movq $0x0, %rax" << std::endl;
  ss << "movq $0x0, (%rax)" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code code;
  ss >> code;

  ASSERT_FALSE(ss.fail());

  Cfg cfg(code, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  /*
  auto paths = PathEnumerator::find_paths(cfg, 1);
  for(size_t i = 0; i < paths.size(); ++i) {
    std::cout << "PATH: ";
    for(size_t j = 0; j < paths[i].size(); ++j) {
      std::cout << paths[i][j] << "(" << cfg.get_index(std::pair<Cfg::id_type, size_t>(paths[i][j], 0)) << ") ";
    }
    std::cout << std::endl;
  }
  */

  for(size_t i = 0; i < 10; ++i)
    EXPECT_EQ(i, PathEnumerator::find_paths(cfg, i).size()) << "i=" << i;


}

TEST_F(PathEnumeratorTest, LoopWithBranch) {

  std::stringstream ss;
  ss << ".bar:" << std::endl;
  ss << "nop" << std::endl;

  ss << ".foo:" << std::endl;
  ss << "nop" << std::endl;
  ss << "je .foo_B" << std::endl;

  ss << ".foo_A:" << std::endl;
  ss << "nop" << std::endl;
  ss << "jz .foo" << std::endl;
  ss << "jmpq .moo" << std::endl;

  ss << ".foo_B:" << std::endl;
  ss << "jne .foo" << std::endl;

  ss << ".moo:" << std::endl;
  ss << "movq $0x0, %rax" << std::endl;
  ss << "movq $0x0, (%rax)" << std::endl;

  ss << "retq" << std::endl;

  x64asm::Code code;
  ss >> code;

  ASSERT_FALSE(ss.fail());

  Cfg cfg(code, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  /*
  auto paths = PathEnumerator::find_paths(cfg, 2);
  for(size_t i = 0; i < paths.size(); ++i) {
    std::cout << "PATH: ";
    for(size_t j = 0; j < paths[i].size(); ++j) {
      std::cout << paths[i][j] << "(" << cfg.get_index(std::pair<Cfg::id_type, size_t>(paths[i][j], 0)) << ") ";
    }
    std::cout << std::endl;
  }*/

  EXPECT_EQ(0ul, PathEnumerator::find_paths(cfg, 0).size());
  for(size_t i = 1; i < 10; ++i) {
    size_t expected = (1 << (i+1)) - 2;
    EXPECT_EQ(expected, PathEnumerator::find_paths(cfg, i).size()) << "i=" << i;
  }
}

TEST_F(PathEnumeratorTest, VectorizationExample) {

  // Berkeley has a new favorite package called graph-easy
  //
  //
  //                        ┌─────────┐
  //                        ∨         │
  //  ┌───┐     ┌───┐     ┌───┐     ┌───┐     ┌───┐     ┌───┐
  //  │ A │ ──> │ B │ ──> │ C │ ──> │ D │ ──> │   │ ──> │ F │
  //  └───┘     └───┘     └───┘     └───┘     │   │     └───┘
  //    |         │         │                 │   │       │
  //    │         └─────────┼───────────────> │ E │ <─────┘
  //    ∨                   │                 │   │
  //  ┌───┐                 │                 │   │
  //  │ G │ <───────────────┘    ┌─────────── │   │
  //  └───┘                      │            └───┘
  //    ∧                        │
  //    └────────────────────────┘
  //  
  //  

  std::stringstream ss;
  ss << ".A:" << std::endl;
  ss << "nop" << std::endl;
  ss << "ja .G" << std::endl;

  ss << ".B:" << std::endl;
  ss << "nop" << std::endl;
  ss << "nop" << std::endl;
  ss << "je .E" << std::endl;

  ss << ".C:" << std::endl;
  ss << "nop" << std::endl;
  ss << "jz .G" << std::endl;

  ss << ".D:" << std::endl;
  ss << "jne .C" << std::endl;

  ss << ".E:" << std::endl;
  ss << "movq $0x0, %rax" << std::endl;
  ss << "jne .G" << std::endl;

  ss << ".F:" << std::endl;
  ss << "nop" << std::endl;
  ss << "jmpq .E" << std::endl;

  ss << ".G:" << std::endl;
  ss << "retq" << std::endl;

  x64asm::Code code;
  ss >> code;

  ASSERT_FALSE(ss.fail());

  Cfg cfg(code, x64asm::RegSet::universe(), x64asm::RegSet::universe());

  /*
  auto paths = PathEnumerator::find_paths(cfg, 2);
  for(size_t i = 0; i < paths.size(); ++i) {
    std::cout << "PATH: ";
    for(size_t j = 1; j < paths[i].size() - 1; ++j) {
      std::cout << (char)((paths[i][j]-1) + 'A') << " ";
    }
    std::cout << std::endl;
  }
  */

  for(size_t i = 1; i < 10; ++i)
    EXPECT_EQ((i+1)*(i+1), PathEnumerator::find_paths(cfg, i).size()) << "i=" << i;
}


} //namespace stoke
