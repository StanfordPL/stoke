Validator Readme
=====

Contract
=====

As the validator is the principal component of STOKE's trusted code base, it's
important to be correct.  It therefore holds to the following contract.

Code Tutorial
=====

There are five main components to the validator:

- The solver-independent representation of symbolic bitvectors, booleans, and states (/symstate)
- The SMT solver interface (/solver)
- The new handlers (/validator/handlers)
- The legacy handlers (/validator/legacy)
- The glue holding it all together (/validator)

The overall structure of the code is as follows.  The symbolic bitvectors
(SymBitVector) and bools (SymBool) are self-explanatory; these contain ASTs of
bit-vector circuits.  The symbolic state (SymState) is the symbolic analog of a
CpuState: it contains a symbolic bitvector for each supported register and
symbolic bool for each flag.  These have the responsibility for representing a
circuit.  In the future, they may also represent the symbolic state of
execution, for example, what line of code was last executed or what the current
memory aliasing constraints are.  

The symbolic state class also has an important job for implementing the
semantics of instructions.  It supports an array indexing operator [] that
takes an operand (like a register '%rax' or memory reference
    '$0x10(%rcx,%rdx,2)') and returns the current symbolic value of this
operand.  It also has a set() function with takes an operand and symbolic
value, and sets the operand in the symbolic state appropriately.  The semantics
of set depend on the destination; if the

The `Handler` classes build circuits for a particular instruction.  These
circuits are represented in a symbolic state.  The interface is simple: an
`is_supported` method that reports if an instruction is supported, and a
`build_circuit` method which takes a symbolic state and updates it in place.
Handwritten handlers should just support a few instructions with much of the
implementation in common.  The legacy handlers are the big exception -- enter
if you dare!  

Finally, the SMTSolver subclasses (e.g. Z3Solver) will take a vector of
symbolic bools and check if they're satisfiable.  The Validator class
orchestrates all this.

Symbolic BitVectors and Bools
-----

There are some important details when working with these objects:

- The SymBitVector and SymBool classes are wrappers around a pointer to a
SymBitVectorAbstract and SymBitVectorBool classes.  These abstract classes are
used to represent the actual AST, while the SymBitVector and SymBool classes
manage memory (they do a poor job of this at the moment, btw).  These are
entirely safe to copy.  If you leave one uninitialized, the pointer will be
null and will crash when you try to use it.  The underlying ASTs are all const.

- Be sure to study how operators are overloaded.  Operators &, |, ^ correspond
to bitwise and, or and xor.  +, -, \*, /, <<, >> correspond to addition,
   substraction, multiplication, unsigned division, and unsigned bit shifts.
   Signed division and bit-shifts have their own member functions.  The ==
   operator returns a symbolic bool specifying if two bit vectors are equal.
   The indexing operator is overloaded to extract a range of bits or a single
   bit.  `bv[7][0]` will extract the lower 8 bits of bv.  `bv[15]` will just
   extract the 15th bit (numbered from 0) of the bit-vector, but you my need to
   cast it to a SymBool explicitly if you have a compile error.



Implementing New Instructions
-----

The best way to implement a new instruction is to look at how old ones are done
and create a new handler, or modify an existing one.  Try to use an existing
handler if possible to avoid duplication of code; many instructions use the
same core construction to build a circuit.  As you build or modify handlers,
please keep in mind:

- If a certain pattern is emerging across several handlers that can be
abstracted, consider adding a helper function to the Handler class (from which
all of the handler classes derive).
- If a helper is manipulating a symbolic state in some way, you may want to add
the helper function as a public member of the SymState class instead.
- Try to make the handler general without creating unnecessary burden on
yourself.  If you need instruction X, but in the process you've implemented the
core algorithm to build a circuit for instructions X, Y, and Z, then it may
make sense to also add support for Y and Z too.  However, it wouldn't also add
support for W if it required adding more complexity to the handler and you
don't think it's needed.

After you write a handler, it's a good idea to add it to the ComboHandler's
internal list.  The ComboHandler is a meta-handler that chooses another handler
to call.  This is what the validator actually uses by default.

Testing
=====

The Rule
-----

For the validator, we want to observe a strict rule that's much more loose in
the other parts of stoke: if you find a bug, write a testcase for it.  This is
very easy for the validator; see the next section.

Handler and Unit Tests
-----

Substantial testing infrastructure has been developed for the validator, making
it easy to write tests.  In general, creating a test just means writing down a
target and rewrite, and specifying if they are equivalent or not.

When the test infrastructure runs, it makes sure the validator reports the
correct result.  It also takes any counterexamples and runs them in the sandbox
to check for correctness; this is a very powerful way to test circuits.

Fuzz Testing
-----

The fuzz testers in tests/validator/fuzz.h attempt to find bugs proactively.
These tests choose a random instruction, generate a random CPU state, build a
circuit, compute an output state, and compare the results from the validator
with the sandbox.  There are at least two main caveats to these tests:

- It has a very low probability of finding corner-case bugs because everything
in the CpuState is randomized.
- Some instructions are unlikely to be chosen, or won't be chosen at all.

If you find a class of bugs in the validator that isn't covered by the fuzz
tester, it would be useful to think of if there's a way to fuzz test for these
as well.

