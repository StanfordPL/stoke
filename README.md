STOKE
=====

STOKE is a stochastic optimizer for the x86_64 instruction set. STOKE uses random search to explore the extremely high-dimensional space of all possible program transformations. Although any one random transformation is unlikely to produce a code sequence that is both correct and an improvement over the original, the repeated application of millions of transformations is sufficient to produce novel and non-obvious code sequences that have been shown to outperform the code produced by general-purpose and domain-specific compilers, and in some cases expert hand-written code.

STOKE has appeared in a number of publications. For a thorough introduction to the design of STOKE, please see the following:

- **Stochastic Superoptimization** -- ASPLOS 2013 ([link](http://cs.stanford.edu/people/eschkufz/research/asplos291-schkufza.pdf)):
- **Data-Driven Equivalence Checking** -- OOPSLA 2013 ([link](http://cs.stanford.edu/people/eschkufz/research/oopsla011-sharma.pdf)):
- **Stochastic Optimization of Floating-Point Programs with Tunable Precision** -- PLDI 2014 ([link](http://cs.stanford.edu/people/eschkufz/research/pldi52-schkufza.pdf)):

Table of Contents
=====
1. [Downloading and Building STOKE](https://github.com/eschkufz/stoke#downloading-and-building-stoke)
2. [Using STOKE](https://github.com/eschkufz/stoke#using-stoke)
3. [Additional Features](https://github.com/eschkufz/stoke#additional-features)
4. [Extending STOKE](https://github.com/eschkufz/stoke#extending-stoke)
 1. [Code Organization](https://github.com/eschkufz/stoke#code-organization)
 2. [Initial Search State](https://github.com/eschkufz/stoke#initial-search-state)
 3. [Search Transformations](https://github.com/eschkufz/stoke#search-transformations)
 4. [Performance Term](https://github.com/eschkufz/stoke#performance-term)
 5. [Correctness Term](https://github.com/eschkufz/stoke#correctness-term)
 6. [Live-out Error](https://github.com/eschkufz/stoke#computing-error)
 7. [Verification Strategy](https://github.com/eschkufz/stoke#verification-strategy)
 8. [Command Line Args](https://github.com/eschkufz/stoke#command-line-args)
5. [Frequently Asked Questions](https://github.com/eschkufz/stoke#frequently-asked-questions)
6. [Contact](https://github.com/eschkufz/stoke#contact)

Downloading and Building STOKE
=====

The entire STOKE code base, as well as its dependencies are available on github under the Apache Software License version 2.0. To clone a copy of the source code, type:

    $ git clone https://github.com/eschkufz/stoke

The implementation of STOKE is for better or worse highly platform dependent. The current version of STOKE was built and tested in Ubuntu 13.10 on an Intel CPU with full support for the Haswell instruction set. To determine whether your machine satisfies this hardware dependency, type:

    $ less /proc/cpuinfo
    
and check that the following cpu flags are present:

    $ flags: ... avx avx2 bmi bmi2 popcnt ...

Most of STOKE's software dependencies are available through apt. These can be satisfied by typing:

    $ sudo apt-get install flex bison ccache doxygen g++ g++-multilib ghc libghc-regex-tdfa-dev libghc-regex-compat-dev libghc-split-dev cmake libjsoncpp-dev

The remainder of STOKE's software dependencies are available on github and will be downloaded automatically the first time that STOKE is built. To build stoke, type:

    $ make
    
The files generated during the build process can be deleted by typing:

    $ make clean
    
To delete STOKE's github-hosted software dependencies as well (this is useful if an error occurs during the first build), type:

    $ make dist-clean

To add STOKE and its related components to your path, type:

    $ export PATH=$PATH:/<path_to_stoke>/bin

Using STOKE
=====

The following toy example shows a typical workflow for using STOKE. All of the following code can be found in the `examples/tutorial/` directory. Consider a C++ program that repeatedly counts the number of bits (population count) in the 64-bit representation of an integer. (Keeping track of a running sum prevents `g++` from eliminating the calls to `popcnt()` altogether.)

```c++
// main.cc

#include <cstdlib>
#include <stddef.h>
#include <stdint.h>

using namespace std;

size_t popcnt(uint64_t x) {
  int res = 0;
  for ( ; x > 0; x >>= 1 ) {
    res += x & 0x1ull;
  }
  return res;
}

int main(int argc, char** argv) {
  const auto itr = atoi(argv[1]);

  auto ret = 0;
  for ( auto i = 0; i < itr; ++i ) {
    ret += popcnt(i);
  }

  return ret;
```

STOKE is a compiler and programming language agnostic optimization tool. It can be applied to any x86_64 ELF binary. Although this example uses the GNU toolchain, nothing prevents the use of other tools. To build this code with full optimizations, type:

    $ g++ -std=c++11 -O3 -fno-inline main.cc
    
To measure runtime, type:

    $ time ./a.out 100000000
    
    real  0m1.046s
    user  0m1.047s
    sys	  0m0.000s
    
A profiler will reveal that the runtime of `./a.out` is dominated by calls to the `popcnt()` function. STOKE can be used to improve the implementation of this function as follows. The first step is to disassemble the program by typing:

    $ stoke extract -i ./a.out -o bins
    
This will produce a directory named `bins` that contains the text of every function contained in the binary `./a.out`. 

Help for stoke or any of its subcommands can be obtained by typing:

    $ stoke -h
    $ stoke <subcommand> -h
    
STOKE can accept arguments either through the command line or through a configuration file. The invocation of `stoke extract` shown above is equivalent to the following:

    $ stoke extract --config extract.conf
    
Where `extract.conf` contains:

```
##### stoke extract config file

-i ./a.out # Path to the elf binary to disassemble
-o bins # Path to the directory to store disassembled text in
```

Every STOKE subcommand can be used to generate example configuration files by typing:

    $ stoke <subcommand> --example_config <path/to/file.conf>

Because `main.cc` was compiled using `g++`, the text of the `popcnt()` function will appear under the mangled name `_Z6popcntm` in `bins/_Z6popcntm.s`.

```asm
  .text
  .globl _Z6popcntm
  .type _Z6popcntm, @function
_Z6popcntm:
  xorl   %eax,%eax
  testq  %rdi,%rdi
  je     .L_4005b0
  nop
.L_4005a0:
  movq   %rdi,%rdx
  andl   $0x1,%edx
  addq   %rdx,%rax
  shrq   $0x1,%rdi
  jne    .L_4005a0
  retq
.L_4005b0:
  retq
  nop
  nop
  .size _Z6popcntm, .-_Z6popcntm
```

The next step is to generate a set of testcases for guiding STOKE's search procedure. These can be obtained by typing:

    $ stoke testcase --config testcase.conf
    
where `testcase.conf` contains:

```
##### stoke testcase config file

--bin ./a.out # The name of the binary to use to generate testcases 
--args 10000000 # Command line arguments that should be passed to ./a.out

-o popcnt.tc # Path to file to write testcases to

--fxn _Z6popcntm # The name of the function to generate testcases for
--max_testcases 1024 # The maximum number of testcases to generate. 
```

The resulting file will contain 1024 entires, all of the form:

```
Testcase 0:

%rax     00 00 00 00 00 98 96 80
%rcx     00 00 00 00 00 00 00 00
%rdx     00 00 00 00 00 00 00 0a
%rbx     00 00 00 00 00 00 00 01
%rsp     00 00 7f ff 97 44 36 28
%rbp     00 00 00 00 00 00 00 00
%rsi     19 99 99 99 99 99 99 99
%rdi     00 00 00 00 00 00 00 00
%r8      00 00 2a c9 68 1a 50 40
%r9      00 00 7f ff 97 44 46 01
%r10     00 00 00 00 00 98 96 80
%r11     00 00 00 00 00 00 00 0a
%r12     00 00 00 00 00 98 96 80
%r13     00 00 7f ff 97 44 37 20
%r14     00 00 00 00 00 00 00 00
%r15     00 00 00 00 00 00 00 00

%ymm0    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00
%ymm1    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f 2f
%ymm2    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm3    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 ff
%ymm4    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm5    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm6    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm7    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm8    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm9    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm10   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm11   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm12   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm13   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm14   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
%ymm15   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00

[ 00007fff 97443630 - 00007fff 97443620 ]
[ 1 valid rows shown ]

00007fff 97443628   d d d d d d d d   00 00 00 00 00 40 04 6c

[ 00000000 00000000 - 00000000 00000000 ]
[ 0 valid rows shown ]
```

Each entry corresponds to the hardware state that was observed just prior to an execution of the `popcnt()` function. The first 32 rows represent the contents of general purpose and sse registers, and the remaining rows represent the contents of memory, both on the stack and the heap. Memory is shown eight bytes at a time, where a block of eight bytes appears only if the target dereferenced at least one of those bytes. Each row contains values and state flags. Bytes are flagged as either (v)alid (the target dereferenced this byte), (d)efined (the target read this byte prior to reading its value), or (.)invalid (the target did not dereference this byte). 

Each of the random transformations performed by STOKE are evaluated with respect to the contents of this file. Rewrites are compiled into a sandbox and executed beginning from the machine state represented by each entry. Rewrites are only permitted to dereference defined locations. This includes registers that are flagged as `def_in` (see `search.conf`, below), memory locations that are flagged as 'd', or locations that were written previously. Rewrites are permitted to write values to all registers and to any memory location that is flagged as valid. 

The STOKE sandbox will safely halt the execution of rewrites that perform undefined behavior. This includes leaving registers in a state that violates the x86_64 callee-save ABI, dereferencing invalid memory, performing a computation that results in a floating-point exception, or becoming trapped in a loop that performs more than `max_jumps` (see `search.conf`, below). 

The final step is to use these testcases and the target code contained in `bins/_Z6popcntm.s` to run STOKE search by typing:

    $ stoke search --config search.conf
    
where `search.conf` contains:

```
##### stoke search config file

--out result.s # Path to write results to

--target bins/_Z6popcntm.s # Path to the function to optimize
--init empty # Begin search from all nops 

--def_in "{ %rax %rdi }" # The registers that are defined on entry to the target
--live_out "{ %rax }" # The registers that are live on exit from the target

--testcases popcnt.tc # Path to testcase file
--training_set "{ 0 ... 7 }" # Testcases to use for measuring correctness during search
--test_set "{ 8 ... 1023 }"  # Testcases to use as holdout set for checking correctness

--distance hamming # Metric for measuring error between live-outs
--relax_reg # Allow partial credit for results that appear in wrong locations
--misalign_penalty 1 # Penalty for results that appear in the wrong location
--reduction sum # Method for summing errors across testcases
--sig_penalty 9999 # Score to assign to rewrites that produce non-zero signals

--perf size # Measure performance by summing instruction latencies

--cpu_flags "{ popcnt }" # cpuid flags to use when proposing instructions
--mem_read # Propose instructions that read memory
--mem_write # Propose instructions that write memory

--global_swap_mass 1 # Proposal mass
--instruction_mass 1 # Proposal mass
--local_swap_mass 1 # Proposal mass
--opcode_mass 1 # Proposal mass
--operand_mass 1 # Proposal mass
--resize_mass 1 # Proposal mass

--nop_percent 80 # Percent of instruction moves that produce nop
--beta 1 # Search annealing constant
--max_instrs 8 # The maximum number of instruction allowed in a rewrite

--statistics_interval 100000 # Print statistics every 100k proposals
--timeout 1000000 # Propose 1m modifications before giving up
--timeout_action testcase # Try adding a new testcase from the testset when search times out
--timeout_cycles 16 # Timeout up to 16 times before giving up

--strategy hold_out # Verify results using a larger hold out testcase set
```

STOKE search will produce two types of status messages. Progress update messages will be printed whenever STOKE discovers a new lowest cost verified or unverified rewrite. The code shown on the left is not equivalent to the target code; the code shown on the right is with respect to the current set of testcases.

```
Progress Update: 

Lowest Cost Discovered (9)         Lowest Known Correct Cost (15)     
                                                         
btrq $0xffffffffffffffc0, %rdi     testq %rdi, %rdi      
retq                               je .L_X64ASM_0        
                                   xorl %eax, %eax       
                                   .L_X64ASM_1:          
                                   movl %edi, %edx       
                                   andl $0x1, %edx       
                                   addl %edx, %eax       
                                   shrq $0x1, %rdi       
                                   jne .L_X64ASM_1       
                                   cltq                  
                                   retq                  
                                   .L_X64ASM_0:          
                                   xorl %eax, %eax       
                                   retq
```

Statistics updates will be printed every `statistics_interval` proposals. Statistics are shown for the number of proposals that have taken place, elapsed time, proposal throughput, and for each of the transformations specified to have non-zero mass in `search.conf`.

```
Statistics Update: 

Iterations:   100000
Elapsed Time: 0.0836948s
Iterations/s: 1.19482e+06

Move Type       Proposed     Succeeded     Accepted     
                                                        
Instruction     16.791%      5.83%         2.009%       
Opcode          16.646%      8.857%        4.013%       
Operand         16.593%      10.444%       6.864%       
Resize          16.611%      0.791%        0.789%       
Local Swap      16.597%      1.556%        1.128%       
Global Swap     16.762%      7.066%        6.08%     
Extension       0%           0%            0%

Total           100%         34.544%       20.883%
```

When search has run to completion, STOKE will write the lowest cost verified rewrite that it discovered to `result.s`. Because this is a particularly simple example, STOKE is almost guaranteed to produce the optimal rewrite:

```asm
  .text
  .globl _Z6popcntm
  .type _Z6popcntm @function
_Z6popcntm:
  popcnt %rdi, %rax
  retq
  .size _Z6popcntm, .-_Z6popcntm
```

This result can then be patched back into the original binary by typing:

    $ stoke replace --config replace.conf
    
where `result.conf` contains:

```
##### stoke replace config file

-i ./a.out # Path to the elf binary to patch
--rewrite result.s # Path to the replacement function
```

And runtime can once again be measured by typing:

    $ time ./a.out 100000000
    
    real  0m0.133s
    user  0m0.109s
    sys	  0m0.000s    

As expected, the results are close to an order of magnitude faster than the original.

Additional Features
=====

In addition to the subcommands described above, STOKE has facilities for debugging and benchmarking the performance of each of its core components:

- `stoke debug cfg`: Generate a pdf of a control flow graph.
- `stoke debug cost`: Compute the cost of a rewrite.
- `stoke debug sandbox`: Step through the execution of a rewrite.
- `stoke debug search`: View the changes produced by performing and undoing a program transformation.
- `stoke debug state`: Check the behavior of operators that manipulate hardware machine states.
- `stoke debug verify`: Check the equivalence of two programs.
- `stoke benchmark cfg`: Measure the time required to recompute a control flow graph.
- `stoke benchmark cost`: Measure the time required to compute a cost function.
- `stoke benchmark sandbox`: Measure the time required to execute a program in a STOKE sandbox.
- `stoke benchmark search`: Measure the time required to perform and undo a transformation to a program.
- `stoke benchmark state`: Measure the time required to reset the memory of a hardware machine state.
- `stoke benchmark verify`: Measure the time required to check the equivalence of two programs.

Extending STOKE
=====

This repository contains a minimal implementation of STOKE as described in ASPLOS 2013, OOPSLA 2013, and PLDI 2014. Most, but not all of the features described in those papers appear here. Some of the more experimental features (notably, a formal verifier) are not yet ready for public release and have not been provided. Developers who are interested in refining these features or adding their own extensions are encouraged to try modifying this implementation as described below.

Code Organization
-----

The STOKE source is organized into modules, each of which correspond to a subdirectory of the `src/` directory:

- `src/args`: Function objects for performing I/O operations on command line arguments.
- `src/cfg`: Classes for representing and manipulating control flow graphs.
- `src/cost`: Classes for computing cost functions.
- `src/ext`: External dependencies.
- `src/sandbox`: Classes for safely executing random code sequences.
- `src/search`: Classes for performing MCMC sampling.
- `src/state`: Classes for representing and manipulating hardware machine states.
- `src/tunit`: Classes for representing translation units (named instruction sequences).
- `src/verifier`: Classes for verifying program equivalence.

Initial Search State
-----

Initial state types are defined in `src/search/init.h` along with an additional type for user-defined extensions.

```c++
enum class Init {
  EMPTY,
  SOURCE,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Initial state is specified using the `--init` command line argument. This value controls the behavior of the `Search::initialize() const` method, which dispatches to the family of `Search::xxxxx_init() const` methods. User-defined extensions should be placed in the `Search::extension_init() const` method, which can be triggered by specifying `--init extension`.

```c++
Cfg Search::extension_init(const Cfg& rewrite) const {
  auto ret = rewrite;

  // Add user-defined transformations here ...

  // Invariant 1: ret and rewrite must agree on boundary conditions.
  assert(ret.def_in() == rewrite.def_in());
  assert(ret.live_out() == rewrite.live_out();
  
  // Invariant 2: ret must be in a valid state. This function isn't on
  // a critical path, so this can safely be accomplished by calling
  ret.recompute();

  return ret;
} 
```

Search Transformations
-----

Transformation types are defined in `src/search/move.h` along with an additional type for user-defined extensions.

```c++
enum class Move {
  INSTRUCTION = 0,
  OPCODE,
  OPERAND,
  RESIZE,
  LOCAL_SWAP,
  GLOBAL_SWAP,

  // Add user-defined extensions here ...
  EXTENSION,

  NUM_MOVES
};
```

Transformations are specified using the family of `--xxxxx_mass` command line arguments. These values control the distribution of proposals that are made by the `Transforms::modify()` method and undone by the `Transforms::undo()` method, which dispatch to the family of `Transforms::xxxxx_move()` and `Transforms::undo_xxxxx_move()` methods respectively. User-defined extensions should be placed in the `Transforms::extension_move()` and `Transforms::undo_extension_move()` methods, which can be triggered by specifying a non-zero `--extension_mass`.

```c++
bool Transforms::extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...
  
  // Invariant 1a:
  // If this method returns true, it should leave this class in a state such that calling
  // undo_extension_move() will revert cfg to its original state.
  
  // Invariant 1b:
  // If this method returns false, it must leave cfg in its original state.
  
  return false;
}
```

```c++
void Transforms::undo_extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...

  // Invariant: If the previous invocation of extension_move() returned true, this
  // method must return cfg to its original state. 
  
  return;
}
```

As above, both performing and undoing a transformation should leave a control flow graph in a valid state. In general, this can be performed by invoking the `Cfg::recompute()` method. However because these methods are on STOKE's critical path, the faster `Cfg::recompute_defs()` method should be used for transformations that do not modify control flow structure and only potentially invalidate data-flow values.

Performance Term
-----

Performance term types are defined in `src/cost/performance_term.h` along with an additional type for user-defined extensions.

```c++
enum class PerformanceTerm {
  NONE,
  SIZE,
  LATENCY,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Performance term type is specified using the `--perf` command line argument. This value controls the behavior of the `CostFunction::evaluate_performance() const` method, which dispatches to the family of `CostFunction::xxxxx_performance() const` methods. User-defined extensions should be placed in the `CostFunction::extension_performance() const` method, which can be triggered by specifying `--perf extension`.

```c++
Cost CostFunction::extension_performance(const Cfg& cfg) const { 
  Cost res = 0;                                                  

  // Add user-defined implementation here ... 

  // Invariant: Return value should not exceed max_performance_cost 
  assert(res <= max_performance_cost); 

  return res;  
}
```

Correctness Term
-----

Correctness term types are defined in `src/cost/reduction.h` along with an additional type for user-defined extensions.

```c++
enum class Reduction {
  SUM,
  MAX,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Correctness term type is specified using the `--reduction` command line argument. This value controls the behavior of the `CostFunction::evaluate_correctness()` method, which dispatches to the family of `CostFunction::xxxxx_correctness()` methods, each of which represent a  method for aggregating errors observed across testcases. User-defined extensions should be placed in the `CostFunction::extension_correctness()` method, which can be triggered by specifying `--reduction extension`.

```c++
Cost CostFunction::extension_correctness(const Cfg& cfg, Cost max) {                                             
  Cost res = 0;                                                                                                  

  // Add user-defined implementation here ... 

  // This method is not required to examine all testcases. Implementations                                       
  // that compute res iteratively may stop executing and return max once res                                     
  // equals or exceeds that value.                                                                               

  // Invariant 1: Return value should not exceed max_correctness_cost                                            
  assert(res <= max_correctness_cost);                                                                           
    
  return res;                                                                                                    
}
```

Live-out Error
-----

Live-out error measurement types are defined in `src/cost/distance.h` along with an additional type for user-defined extensions.

```c++
enum class Distance {
  HAMMING,
  ULP,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Measurement type is specified using the `--distance` command line argument. This value controls the behavior of the `CostFunction::evaluate_distance() const` method, which dispatches to the family of `CostFunction::xxxxx_distance() const` methods, each of which represent a method computing the distance between 64-bit values. User-defined extensions should be placed in the `CostFunction::extension_distance() const` method, which can be triggered by specifying `--distance extension`.

```c++
Cost CostFunction::extension_distance(uint64_t x, uint64_t y) const {                                            
  Cost res = 0;

  // Add user-defined implementation here ...                                                                    

  // Invariant 1: Return value should not exceed max_error_cost                                                  

  return res;                                                                                                    
}
```

Verification Strategy
-----

Verification strategy types are defined in `src/verifier/strategy.h` along with an additional type for user-defined extensions.

```c++
enum class Strategy {
  NONE,
  HOLD_OUT,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Strategy type is specified using the `--strategy` command line argument. This value controls the behavior of the `Verifier::verify()` method, which dispatches to the family of `Verifier::xxxxx_verify() const` methods, each of which represent a method for verifying correctness. User-defined extensions should be placed in the `Verifier::extension_verify()` method, which can be triggered by specifying `--strategy extension`.

```c++
bool Verifier::extension_verify(const Cfg& target, const Cfg& rewrite) {                                         
	// Add user-defined implementation here ...

	// Invariant 1. If this method returns false and is able to produce a 
	// counter example explaining why, counter_example_available_ should be
	// set to true.

	// Invariant 2. If this method returns false, and it is able (see above), 
	// counter_example_ should be set to a CpuState that will cause target and 
	// rewrite to produce different values.

	// Invariant 3. If this method produces a counter example, it should be
	// unique relative to all previously produced counter examples.

  return true;
} 
``` 

Command Line Args
-----

Command line arguments can be added to any of the STOKE subcommands using the following syntax. Argument separators which are printed as part of help messages are specified by defining a heading variable:

```c++
auto& heading = Heading::create("Heading Description:");
```

Command line flags are specified by declaring a `FlagArg`.

```c+++
auto& flag = FlagArg::create("flag_name")
  .alternate("alternate_flag_name")
  .description("What this flag does");
```

Any of the built-in c++ primitive types are specified by declaring a `ValueArg`.

```c++
auto& val = ValueArg<int>::create("value_name")
  .alternate("alternate_value_name")
  .usage("<int>")
  .description("What this value represents")
  .default_val(0);
```

User-defined types are specified by additionally providing function objects that define I/O methods.

```c++
struct T {
  int x, y, z;
};

struct Reader {
  void operator()(istream& is, T& t) const {
    is >> t.x >> t.y >> t.z;
  }
};

struct Writer {
  void operator()(ostream& os, const T& t) const {
    os << t.x << " " << t.y << " " << t.z;
  }
};

auto& val = ValueArg<T, Reader, Writer>::create("value_name")
  .alternate("alternate_value_name")
  .usage("<int> <int> <int>")
  .description("What this value represents")
  .default_val({0,0,0});
```

For complex values that are better suited to being read from files, a `FileArg` may be more appopriate than a `ValueArg`. The syntax is identical.

```c++
auto& val = FileArg<Complex, ComplexReader, ComplexWriter>::create("value_name")
  .alternate("alternate_value_name")
  .usage("<complex representation>")
  .description("What this value represents")
  .default_val(Complex());
```

Frequently Asked Questions
=====

To appear.

Feedback
=====

Questions and comments are encouraged. The best way to contact the developers is with the built-in github issue tracker.
