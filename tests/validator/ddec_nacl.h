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

#include "src/state/cpu_states.h"

namespace stoke {

class DdecNaclTest : public DdecValidatorBaseTest {

public:

  DdecNaclTest() {
    validator->set_nacl(true);
    validator->set_alias_strategy(ObligationChecker::AliasStrategy::FLAT);
    target_ = 0;
    rewrite_ = 0;
  }

  void benchmark(
    string s, 
    bool optimize,
    size_t tc_min,
    size_t tc_max,
    ObligationChecker::AliasStrategy strat = ObligationChecker::AliasStrategy::FLAT) {

    set_target(s + ".s");
    if(optimize)
      set_rewrite(s + "_opt.s");
    else
      set_rewrite(s + "_tr.s");
    set_testcases(s + ".tcs", tc_min, tc_max);
    validator->set_alias_strategy(strat);
    check_equiv();
  }

  Cfg* read_tunit(string s) {
    s = path() + s;

    ifstream input_file(s);
    TUnit t;
    input_file >> t;
    input_file.close();

    RegSet big = RegSet::empty() + rdi + rsi + rdx + rcx + rsp + rbp + r15;

    Cfg* cfg = new Cfg(t, big, RegSet::empty() + x64asm::rax);
    return cfg;
  }

  void set_target(string s) {
    target_ = read_tunit(s);
  }

  void set_rewrite(string s) {
    rewrite_ = read_tunit(s);  
  }

  void set_testcases(string s, size_t min, size_t max) {
    CpuStates cs;
    ifstream input_file(path() + s);
    cs.read_text(input_file);
    input_file.close();

    ASSERT_GE(cs.size(), max - min + 1) << "Read " << cs.size() << " tcs; wanted { " << min << " .. " << max << "}";

    for(size_t i = 0; i <= max; ++i) {
      sandbox->insert_input(cs[i]);
      cout << cs[i] << endl << endl;
    }
    validator->set_sandbox(sandbox);
  }

  void check_equiv() {
    EXPECT_TRUE(validator->verify(*target_, *rewrite_));
    EXPECT_FALSE(validator->has_error()) << validator->error();
  }

  static string path() {
    return "tests/fixtures/validator/ddec_nacl/";
  }

  ~DdecNaclTest() {
    if(target_)
      delete target_;
    if(rewrite_)
      delete rewrite_;
  }

private:
  x64asm::RegSet def_ins_;
  x64asm::RegSet live_outs_;

  Cfg* target_;
  Cfg* rewrite_;

};

class DdecNaclLongTest : public DdecNaclTest { };

TEST_F(DdecNaclLongTest, wcpcpyOptimize) {
  benchmark("wcpcpy", true, 0, 20, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wcpcpyTranslate) {
  benchmark("wcpcpy", false, 0, 20, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclTest, wcslenOptimize) {
  benchmark("wcslen", true, 0, 20, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclTest, wcslenTranslate) {
  benchmark("wcslen", false, 0, 20, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wmemsetOptimize) {
  benchmark("wmemset", true, 0, 100, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wmemsetTranslate) {
  benchmark("wmemset", false, 0, 100, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclTest, wcsnlenOptimize) {
  benchmark("wcsnlen", true, 0, 100, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclTest, wcsnlenTranslate) {
  benchmark("wcsnlen", false, 0, 100, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wmemcmpOptimize) {
  benchmark("wmemcmp", true, 0, 40, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wmemcmpTranslate) {
  benchmark("wmemcmp", false, 0, 40, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclTest, wcschrOptimize) {
  benchmark("wcschr", true, 0, 50, ObligationChecker::AliasStrategy::STRING);
}

TEST_F(DdecNaclTest, wcschrTranslate) {
  benchmark("wcschr", false, 0, 50, ObligationChecker::AliasStrategy::STRING);
}

TEST_F(DdecNaclTest, strxfrmOptimize) {
  benchmark("strxfrm", true, 0, 50, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, strxfrmTranslate) {
  benchmark("strxfrm", false, 0, 50, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wcscmpOptimize) {
  benchmark("wcscmp", true, 0, 50, ObligationChecker::AliasStrategy::STRING);
}

TEST_F(DdecNaclLongTest, wcscmpTranslate) {
  benchmark("wcscmp", false, 0, 50, ObligationChecker::AliasStrategy::STRING);
}

TEST_F(DdecNaclLongTest, wmemchrOptimize) {
  benchmark("wmemchr", true, 0, 80, ObligationChecker::AliasStrategy::FLAT);
}

TEST_F(DdecNaclLongTest, wcscpyOptimize) {
  benchmark("wcscpy", true, 0, 50, ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
}

TEST_F(DdecNaclLongTest, wcscatOptimize) {
  benchmark("wcscat", true, 0, 100, ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
}

TEST_F(DdecNaclLongTest, strcpyOptimize) {
  benchmark("strcpy", true, 0, 50, ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
}

TEST_F(DdecNaclLongTest, DISABLED_strcatOptimize) {
  benchmark("strcat", true, 0, 20, ObligationChecker::AliasStrategy::STRING_NO_ALIAS);
}

TEST_F(DdecNaclLongTest, wcsrchrOptimize) {
  benchmark("wcsrchr", true, 0, 20, ObligationChecker::AliasStrategy::FLAT);
}

} //namespace stoke
