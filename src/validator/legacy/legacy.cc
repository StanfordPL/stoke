
#include "src/validator/legacy/legacy.h"
#include "src/validator/legacy/legacy_handlers.h"
#include "src/validator/legacy/sym_state.h"

using namespace stoke;
using namespace x64asm;
using namespace std;

Handler::SupportLevel LegacyHandler::get_support(const Instruction& instr) {
  SymState ss("");

  try {
    build_circuit(instr,ss);
    return (Handler::SupportLevel)(SupportLevel::BASIC);
  } catch (validator_error e) {
    return SupportLevel::NONE;
  }

}

void LegacyHandler::build_circuit(const Instruction& instr, SymState& ss) {

  // The legacy handlers assume that the initial symbolic state has only
  // variables of the form registername_1_n, where # is some number, and then
  // registername_1_(n+1) is the output.  So, we create a symbolic state just
  // like this, at least for the variables that will be read or modified.

  // Create starting and ending version numbers
  uint64_t start_no = temp();
  uint64_t end_no = temp();
  assert(end_no = start_no + 1);

  // Find the set of registers which we need to assert equality on
  RegSet modified = instr.maybe_read_set() | instr.maybe_write_set() | instr.maybe_undef_set() |
                    instr.must_read_set() | instr.must_write_set() | instr.must_undef_set();

  // Build the end state with modified variable names, and add constraints
  // IMPORTANT: we need to change the whole register, not just a part of it, because
  // some things in x64asm aren't sound, e.g. movl %eax, %ecx.  See x64asm issue #81.
  for(auto r_it = modified.gp_begin(); r_it != modified.gp_end(); ++r_it) {

    // Create variables for starting/ending state
    std::stringstream name;
    name << *r_it << "_1_" ;
    auto start_var = SymBitVector::var(64, name.str() + to_string(start_no));
    auto end_var = SymBitVector::var(64, name.str() + to_string(end_no));

    // Constrain starting state
    ss.add_constraint( ss.gp[*r_it] == start_var );

    // Create ending state
    ss.gp[*r_it] = end_var;
  }
  for(auto s_it = modified.sse_begin(); s_it != modified.sse_end(); ++s_it) {

    // Create variables for starting/ending state
    std::stringstream name;
    name << *s_it << "_1_" ;
    auto start_var = SymBitVector::var(256, name.str() + to_string(start_no));
    auto end_var = SymBitVector::var(256, name.str() + to_string(end_no));

    // Constrain starting state
    ss.add_constraint( ss.sse[*s_it] == start_var );

    // Create ending state
    ss.sse[*s_it] = end_var;
  }
  for(auto flag = modified.flags_begin(); flag != modified.flags_end(); ++flag) {

    // Create variables for starting/ending state
    std::stringstream name;
    name << *flag << "_1_" ;
    auto start_var = SymBool::var(name.str() + to_string(start_no));
    auto end_var = SymBool::var(name.str() + to_string(end_no));

    // Constrain starting state
    ss.add_constraint( ss[*flag] == start_var );

    // Create ending state
    ss.set(*flag, end_var);
  }

  // Build this "version number" object
  VersionNumber Vn;
  VersionNumber Vnprime;

  Vn.Init(start_no);
  Vnprime.Init(start_no);

  // Add the constraints for the instruction
  instrnToConstraint(instr, Vn, Vnprime, ss.constraints, "1", temp());

}

