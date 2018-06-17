// Copyright 2013-2016 Stanford University
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

#ifndef STOKE_TOOLS_GADGETS_VERIFIER_H
#define STOKE_TOOLS_GADGETS_VERIFIER_H

#include <regex>

#include "src/ext/cpputil/include/io/console.h"

#include "src/cost/cost_function.h"
#include "src/validator/bounded.h"
#include "src/validator/ddec.h"
#include "src/validator/handler.h"
#include "src/validator/handlers/combo_handler.h"
#include "src/validator/invariants/expr.h"
#include "src/validator/invariants/memory_constant.h"
#include "src/verifier/hold_out.h"
#include "src/verifier/none.h"
#include "src/verifier/sequence.h"
#include "src/verifier/verifier.h"

#include "tools/args/bounded_validator.inc"
#include "tools/args/ddec_validator.inc"
#include "tools/args/in_out.inc"
#include "tools/args/testcases.inc"
#include "tools/args/verifier.inc"
#include "tools/gadgets/solver.h"
#include "tools/gadgets/obligation_checker.h"

namespace stoke {

class VerifierGadget : public Verifier {
public:

  VerifierGadget(Sandbox& sandbox, CorrectnessCost& fxn, InvariantLearner& inv, ClassChecker& cc) : verifier_(NULL) {

    std::vector<std::string> splits = split(strategy_arg.value(), std::regex("[ ,+]"));
    for (auto it : splits) {
      if (it == "hold_out" && (test_set_arg.value().size() == 0 || testcases_arg.value().size() == 0)) {
        cpputil::Console::error() << "No test-cases given for hold_out verification." << std::endl;
      }
      verifiers_.push_back(make_by_name(it, sandbox, fxn, inv, cc));
    }

    verifier_ = new SequenceVerifier(verifiers_);
    verifier_->set_heap_out(heap_out_arg.value());
    verifier_->set_stack_out(stack_out_arg.value());
  }

  ~VerifierGadget() {
    for(auto it : verifiers_)
      delete it;
    delete verifier_;
  }

  inline bool verify(const Cfg& target, const Cfg& rewrite) {
    return verifier_->verify(target, rewrite);
  }

  inline size_t counter_examples_available() {
    return verifier_->counter_examples_available();
  }

  std::vector<CpuState> get_counter_examples() {
    return verifier_->get_counter_examples();
  }

  bool has_error() {
    return verifier_->has_error();
  }

  std::string error() {
    return verifier_->error();
  }

private:

  void add_pointer_ranges(Validator& validator) {
    std::string pointer_ranges = pointer_range_arg.value();
    if(pointer_ranges.size() == 0)
      return;

    std::stringstream ss(pointer_ranges);
    while(ss.good()) {
      x64asm::M8 begin_addr(x64asm::Imm32(0));
      x64asm::M8 end_addr(x64asm::Imm32(0));
      ss >> begin_addr >> std::ws;
      if(ss.peek() == ':') {
        ss.get();
      } else {
        std::cerr << "Parsing failed for pointer range " << pointer_ranges << std::endl;
        std::cerr << "Expected   \"memory_address:memory_address\", for example...";
        std::cerr << "     (rax):7(rax,rdi,8)" << std::endl;
        exit(1);
      }
      ss >> std::ws; 
      ss >> end_addr >> std::ws;
      if(ss.bad() || ss.fail()) {
        std::cerr << "Parsing failed for pointer range " << pointer_ranges << std::endl;
        std::cerr << "Expected   \"memory_address : memory_address\", for example...";
        std::cerr << "     (rax) : 7(rax,rdi,8)" << std::endl;
        exit(1);
      }
      std::cout << "Adding pointer range for " << begin_addr << " to " << end_addr << std::endl;
      validator.add_pointer_range(begin_addr, end_addr);
    }
  }

  void add_assumptions(Validator& validator) {
    std::string s = assume_arg.value();
    if(s.size() == 0)
      return;

    auto expr = ExprInvariant::parse(s);
    if(expr == NULL) {
      exit(1);
    }
    Invariant* ei = new ExprInvariant(expr, s);
    //std::cout << "Parsing invariant" << std::endl;
    //std::cout << *ei << std::endl;
    validator.assume(ei);

  }

  void add_readonly_memory(DdecValidator& ddec, Memory m) {
    std::cout << "PROCESSING RO SEGMENT" << std::endl;

    // watch out for overflow here!!
    for(uint64_t i = m.lower_bound(); i - m.lower_bound() < m.size(); ++i) {
      if(m.is_valid(i)) {
        x64asm::Imm32 imm(i);
        x64asm::M8 ref(imm);
        auto inv = new MemoryConstantInvariant(ref, true, m[i]);
        ddec.assume_always(inv);
        std::cout << "  Adding invariant " << *inv << std::endl;
      }
    }
  }

  void add_readonly_memory(DdecValidator& ddec) {
    auto ro_testcases = rodata.value();

    for(auto& tc : ro_testcases) {
      std::cout << "PROCESSING RO TESTCASE" << std::endl;
      add_readonly_memory(ddec, tc.stack);
      add_readonly_memory(ddec, tc.heap);
      add_readonly_memory(ddec, tc.data);
      for(auto& segment : tc.segments) {
        add_readonly_memory(ddec, segment);
      }
    }
  }

  Verifier* make_by_name(std::string s, Sandbox& sandbox, CorrectnessCost& fxn, InvariantLearner& inv, ClassChecker& cc) {
    if (s == "bounded") {
      oc_ = new ObligationCheckerGadget();
      auto bv = new BoundedValidator(*oc_);
      bv->set_bound(bound_arg.value());
      bv->set_no_bailout(no_bailout_arg.value());
      add_pointer_ranges(*bv);
      add_assumptions(*bv);
      return bv;
    } else if (s == "ddec") {
      oc_ = new ObligationCheckerGadget();
      auto ddec = new DdecValidator(*oc_, cc, sandbox, inv);
      ddec->set_bound(target_bound_arg.value(), rewrite_bound_arg.value());
      ddec->set_use_handhold(handhold_arg.value());
      add_pointer_ranges(*ddec);
      add_assumptions(*ddec);
      add_readonly_memory(*ddec);
      return ddec;
    } else if (s == "hold_out") {
      return new HoldOutVerifier(sandbox, fxn);
    } else if (s == "none") {
      return new NoneVerifier();
    } else {
      std::cerr << "Unrecognized verifier name \"" << s << "\"" << std::endl;
      exit(1);
    }
  }

  //from https://github.com/trikitrok/StringCalculatorAdditionUsingGoogleMock
  std::vector<std::string> split(const std::string& str, std::regex rgx) {
    std::sregex_token_iterator
    first{begin(str), end(str), rgx, -1},
          last;
    return{first, last};
  }

  std::vector<Verifier*> verifiers_;
  Handler* handler_;
  Filter* filter_;
  ObligationChecker* oc_;
  Verifier* verifier_;
};

} // namespace stoke

#endif
