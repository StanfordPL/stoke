STOKE
=====

STOKE is a stochastic optimizer for the x86_64 instruction set. STOKE uses
random search to explore the extremely high-dimensional space of all possible
program transformations. Although any one random transformation is unlikely to
produce a code sequence that is both correct and an improvement over the
original, the repeated application of millions of transformations is sufficient
to produce novel and non-obvious code sequences that have been shown to
outperform the code produced by general-purpose and domain-specific compilers,
           and in some cases expert hand-written code.

STOKE has appeared in a number of publications. For a thorough introduction to
the design of STOKE, see:

- **Stochastic Superoptimization** -- ASPLOS 2013 ([link](http://cs.stanford.edu/people/eschkufz/research/asplos291-schkufza.pdf)):
- **Data-Driven Equivalence Checking** -- OOPSLA 2013 ([link](http://cs.stanford.edu/people/eschkufz/research/oopsla011-sharma.pdf)):
- **Stochastic Optimization of Floating-Point Programs with Tunable Precision** -- PLDI 2014 ([link](http://cs.stanford.edu/people/eschkufz/research/pldi52-schkufza.pdf)):

Table of Contents
=====
0. [Prerequisites](#prerequisites)
1. [Choosing a STOKE version](#choosing-a-stoke-version)
2. [Building STOKE](#building-stoke)
3. [Using STOKE](#using-stoke)
4. [Additional Features](#additional-features)
5. [Extending STOKE](#extending-stoke)
 1. [Code Organization](#code-organization)
 2. [Initial Search State](#initial-search-state)
 3. [Search Transformations](#search-transformations)
 4. [Cost Function](#cost-function)
 6. [Live-out Error](#live-out-error)
 7. [Verification Strategy](#verification-strategy)
 8. [Command Line Args](#command-line-args)
6. [Contact](#contact)

Prerequisites
=====

STOKE will run on modern 64-bit x86 processors.  We officially support Haswell
processors with AVX2 extensions.  STOKE should also run on Sandy Bridge
systems (with AVX, but not AVX2), and Nehalem systems without either extension;
however officially these targets are not supported.  

To check what level of hardware support you have, run:

    $ less /proc/cpuinfo
    
and check if the following cpu flags are present:

    $ flags: ... avx avx2 bmi bmi2 popcnt ...

If you don't have 'avx' or 'avx2', you will need to compile for nehalem.  If
you have 'avx', but not avx2, you will compile for 'sandybridge'.  If you have
both, you can use the default make targets.  Build instructions are in the next
section.

STOKE is supported on the latest Ubuntu LTS release; in practice, it will also
run on Ubuntu 13.10+ and on debian testing.  If you're trying to get STOKE to
work on another linux distribution, having the right version of g++ is key.
STOKE is supported on 4.8.2 only (this is the current version in Ubuntu 14.04).
It should also work on 4.9.1, but in the past this has required minor tweaks
(4.9.1 is the current version in Debian testing).  g++ 4.7.x and older
definitely will not work.

Most of STOKE's software dependencies are available through apt. These can be
satisfied by typing:

    $ sudo apt-get install git subversion flex bison ccache doxygen g++ g++-multilib ghc libghc-regex-tdfa-dev libghc-regex-compat-dev libghc-split-dev cmake libghc-regex-compat-dev libjsoncpp-dev libcln-dev

The rest of the dependencies will be fetched automatically as part of the build
process.

Choosing a STOKE version
=====

The entire STOKE code base is available on GitHub under the Apache Software
License version 2.0 at [github.com/StanfordPL/stoke-release](https://github.com/StanfordPL/stoke-release/).

We provide both releases (packaged versions of STOKE at a particular point in time), as well as our development branch (latest stable development version).  There are different trade-offs in deciding which one to use:

- **Development branch**:  This is our stable development branch, that we use day-to-day.  It contains the latest bug fixes and features, but also the latests bugs.  We attempt to only merge stable changes into this branch, but every now and then, we break things.  Our infrastructure is set up in a way that this branch will at least always pass all the tests (and this really is the only notion in which the branch is _stable_).  Note that we sometimes make non-backwards compatible changes, such as changing the syntax of command-line arguments.
- **Release**:  We typically release the version that corresponds to the papers we write.  Most likely this is a version of STOKE that has been used to run the experiments for a paper, and at least worked for that task.  However, we rarely update releases, and so they might contain bugs, some of which may have already been fixed by us.  We also don't tent to release very often, so a release might be considerably out-of-date.

We leave it to the user to decide which version works best for them.  If you find a bug, please try the development branch first to see if has already been fixed.

To get the development branch, type:

    $ git clone -b development https://github.com/StanfordPL/stoke-release

The `master` branch always points to the latest release (plus potentially some back-ported bugfixes).  To get it, type:

    $ git clone -b master https://github.com/StanfordPL/stoke-release

or alternatively download it under the releases on GitHub.


Building STOKE
=====

See the previous sections on how to download STOKE, a list of dependencies, and to check your hardware
support level.  The remainder of STOKE's software dependencies are available on
GitHub and will be downloaded automatically the first time that STOKE is built.
To build STOKE for a Haswell system type the appropriate command for your
system (the default is Haswell):

    $ make

If you are on a different architecture, use the appropriate target:

    $ make sandybridge
    $ make nehalem

To add STOKE and its related components to your path, type:

    $ export PATH=$PATH:/<path_to_stoke>/bin

To run the tests, choose the appropriate command:

    $ make test
    $ make sandybridge_test
    $ make nehalem_test

The files generated during the build process can be deleted by typing:

    $ make clean

To delete STOKE's dependencies as well (this is useful if an error occurs during the first build), type:

    $ make dist_clean



Using STOKE
=====

The following toy example shows a typical workflow for using STOKE. All of the
following code can be found in the `examples/tutorial/` directory. Consider a
C++ program that repeatedly counts the number of bits (population count) in the
64-bit representation of an integer. (Keeping track of a running sum prevents
`g++` from eliminating the calls to `popcnt()` altogether.)

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

STOKE is a compiler and programming language agnostic optimization tool. It can
be applied to any x86_64 ELF binary. Although this example uses the GNU
toolchain, nothing prevents the use of other tools. To build this code with
full optimizations, type:

    $ g++ -std=c++11 -O3 -fno-inline main.cc
    
To measure runtime, type:

    $ time ./a.out 100000000
    
    real  0m1.046s
    user  0m1.047s
    sys   0m0.000s
    
A profiler will reveal that the runtime of `./a.out` is dominated by calls to
the `popcnt()` function. STOKE can be used to improve the implementation of
this function as follows. The first step is to disassemble the program by
typing:

    $ stoke extract -i ./a.out -o bins
    
This will produce a directory named `bins` that contains the text of every
function contained in the binary `./a.out`. 

Help for stoke or any of its subcommands can be obtained by typing:

    $ stoke -h
    $ stoke <subcommand> -h
    
STOKE can accept arguments either through the command line or through a
configuration file. The invocation of `stoke extract` shown above is equivalent
to the following:

    $ stoke extract --config extract.conf
    
Where `extract.conf` contains:

```
##### stoke extract config file

-i ./a.out # Path to the elf binary to disassemble
-o bins # Path to the directory to store disassembled text in
```

Every STOKE subcommand can be used to generate example configuration files by
typing:

    $ stoke <subcommand> --example_config <path/to/file.conf>

Because `main.cc` was compiled using `g++`, the text of the `popcnt()` function
will appear under the mangled name `_Z6popcntm` in `bins/_Z6popcntm.s`.

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

The next step is to generate a set of testcases for guiding STOKE's search
procedure. These can be obtained by typing:

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

%cf      0 
%1       1 
%pf      1 
%0       0 
%af      0 
%0       0 
%zf      0 
%sf      0 
%tf      0 
%if      1 
%df      0 
%of      0 
%iopl[0] 0 
%iopl[1] 0 
%nt      0 
%0       0 
%rf      0 
%vm      0 
%ac      0 
%vif     0 
%vip     0 
%id      0 

[ 00007fff 97443630 - 00007fff 97443620 ]
[ 1 valid rows shown ]

00007fff 97443628   d d d d d d d d   00 00 00 00 00 40 04 6c

[ 00000000 00000000 - 00000000 00000000 ]
[ 0 valid rows shown ]
```

Each entry corresponds to the hardware state that was observed just prior to an
execution of the `popcnt()` function. The first 60 rows represent the contents
of general purpose, sse, and eflags registers, and the remaining rows represent 
the contents of memory, both on the stack and the heap. Memory is shown eight bytes
at a time, where a block of eight bytes appears only if the target dereferenced
at least one of those bytes. Each row contains values and state flags. Bytes
are flagged as either (v)alid (the target dereferenced this byte), (d)efined
(the target read this byte prior to reading its value), or (.)invalid (the
    target did not dereference this byte). 

Each of the random transformations performed by STOKE are evaluated with
respect to the contents of this file. Rewrites are compiled into a sandbox and
executed beginning from the machine state represented by each entry. Rewrites
are only permitted to dereference defined locations. This includes registers
that are flagged as `def_in` (see `search.conf`, below), memory locations that
are flagged as 'd', or locations that were written previously. Rewrites are
permitted to write values to all registers and to any memory location that is
flagged as valid. 

The STOKE sandbox will safely halt the execution of rewrites that perform
undefined behavior. This includes leaving registers in a state that violates
the x86_64 callee-save ABI, dereferencing invalid memory, performing a
computation that results in a floating-point exception, or becoming trapped in
a loop that performs more than `max_jumps` (see `search.conf`, below). 

The final step is to use these testcases and the target code contained in
`bins/_Z6popcntm.s` to run STOKE search by typing:

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

--perf latency # Measure performance by summing instruction latencies

--cpu_flags "{ popcnt }" # cpuid flags to use when proposing instructions
--mem_read # Propose instructions that read memory
--mem_write # Propose instructions that write memory

--global_swap_mass 0 # Proposal mass
--instruction_mass 1 # Proposal mass
--local_swap_mass 1 # Proposal mass
--opcode_mass 1 # Proposal mass
--operand_mass 1 # Proposal mass
--resize_mass 0 # Proposal mass

--nop_percent 80 # Percent of instruction moves that produce nop
--beta 1 # Search annealing constant
--max_instrs 8 # The maximum number of instruction allowed in a rewrite

--statistics_interval 100000 # Print statistics every 100k proposals
--timeout_iterations 16000000 # Propose 16m modifications total before giving up
--cycle_timeout 1000000 # Try 1m modifications before restarting

--strategy hold_out # Verify results using a larger hold out testcase set
```

STOKE search will produce two types of status messages. Progress update
messages will be printed whenever STOKE discovers a new lowest cost verified or
unverified rewrite. The code shown on the left is not equivalent to the target
code; the code shown on the right is with respect to the current set of
testcases.

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

Statistics updates will be printed every `statistics_interval` proposals.
Statistics are shown for the number of proposals that have taken place, elapsed
time, proposal throughput, and for each of the transformations specified to
have non-zero mass in `search.conf`.

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

When search has run to completion, STOKE will write the lowest cost verified
rewrite that it discovered to `result.s`. Because this is a particularly simple
example, STOKE is almost guaranteed to produce the optimal rewrite:

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
    sys   0m0.000s    

As expected, the results are close to an order of magnitude faster than the original.

Using the Formal Validator
-----

This release of STOKE includes a formal validator.  It's design and interface
are detailed in the `src/validator/README.md` file.  To use the formal validator
instead of hold out testing, specify `--strategy formal` for any
STOKE binary that you use.

An example of using the validator can be found in the `examples/pairity`
folder; this example has a Makefile much like the tutorial's and should be easy
to follow.  The key difference is that the pairity example does not use
testcases to guide search.  Instead, after producing a candidate rewrite,
the validator checks for equivalence.  If the codes are not equivalent, 
a counterexample is found, and this is used as a new testcase to help guide search.

There are some important limitations to keep in mind while using the validator:

- Only some instructions are supported.  The `--validator_must_support` flag
can be used to only propose instructions that can be validated.
- Only the general purpose registers, SSE registers (`ymm0`-`ymm15`) and five of
the status flags (`CF`, `SF`, `PF`, `ZF`, `OF`) are supported.
- There is basic, experimental support for memory.  **Memory is not supported
for input or output; the validator will check equivalence of codes that use
memory, but will not check that they leave the machine's memory in the same
state. **.  For example, if a program writes to memory and then later reads
it, the validator supports this.  But, if two programs manipulate memory,
the validator will not check if their modifications are equivalent.


Additional Features
=====

In addition to the subcommands described above, STOKE has facilities for
debugging and benchmarking the performance of each of its core components:

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

Shell completion
-----

STOKE also comes with support for bash and zsh completion.  To enable either, type:

  $ make bash_completion
  $ make zsh_completion

Using functions to be proposed by STOKE
-----
STOKE can not only propose instructions when searching for programs, but also propose calls to a list of known functions using the `--functions` command-line argument.  To decide whether these functions read any undefined state (before proposing them), we use a dataflow analysis.  Sometimes, the dataflow analysis can be too imprecise, which is why STOKE allows the user to annotate dataflow information in comments.  Here is an example of a function that clears the overflow flag.  STOKEs dataflow analysis is too imprecise for this code.

      .text
      .globl clear_of
      .type clear_of, @function
    #! maybe-read { }
    #! maybe-write { %of %r15 }
    #! maybe-undef { }
    .clear_of:
      pushfq
      popq %r15
      andq $0xfffff7ff, %r15
      pushq %r15
      popfq
      retq

    .size clear_of, .-clear_of

Note that it is enough to specify the maybe sets, as STOKE will automatically realize that the must sets need to be contained in the maybe set.

Extending STOKE
=====

This repository contains a minimal implementation of STOKE as described in
ASPLOS 2013, OOPSLA 2013, and PLDI 2014. Most, but not all of the features
described in those papers appear here. Some of the more experimental features
are not yet ready for public release and have not been provided. Developers who
are interested in refining these features or adding their own extensions are
encouraged to try modifying this implementation as described below.

Code Organization
-----

The STOKE source is organized into modules, each of which correspond to a
subdirectory of the `src/` directory:

- `src/analysis`: An aliasing analysis used by the validator.
- `src/cfg`: Classes for representing and manipulating control flow graphs.
- `src/cost`: Classes for computing cost functions.
- `src/ext`: External dependencies.
- `src/sandbox`: Classes for safely executing random code sequences.
- `src/search`: Classes for performing MCMC sampling.
- `src/state`: Classes for representing and manipulating hardware machine states.
- `src/symstate`: Classes for modeling the symbolic state of the hardware, used by the formal validator.
- `src/target`: Code to find which instruction sets the CPU supports.
- `src/tunit`: Classes for representing translation units (named instruction sequences).
- `src/verifier`: Wrappers around verification techniques such as testing for formal validation.
- `src/validator`: The formal validator for proving two codes equivalent.

Initial Search State
-----

Initial state types are defined in `src/search/init.h` along with an additional
type for user-defined extensions.

```c++
enum class Init {
  EMPTY,
  ZERO,
  TARGET,
  PREVIOUS,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Initial state is specified using the `--init` command line argument which controls the initial values
given to the current, lowest cost, and lowest cost correct search states. This value
affects the behavior of the `Search::configure() const` method, which
dispatches to the family of `Search::configure_xxxxx() const` methods. User-defined
extensions should be placed in the `Search::configure_extension() const` method,
which can be triggered by specifying `--init extension`.

```c++
void Search::configure_extension(const Cfg& target, SearchState& state) const {
  // Add user-defined logic here ...

  // Invariant 1: Search state should agree with target on boundary conditions.
  assert(state.current.def_ins() == target.def_ins());
  assert(state.current.live_outs() == target.live_outs());

  assert(state.best_yet.def_ins() == target.def_ins());
  assert(state.best_yet.live_outs() == target.live_outs());

  assert(state.best_correct.def_ins() == target.def_ins());
  assert(state.best_correct.live_outs() == target.live_outs());

  // Invariant 2: Search state must be in a valid state. This function isn't on
  // a critical path, so this can safely be accomplished by calling
  state.current.recompute();
  state.best_yet.recompute();
  state.best_correct.recompute();

  // Invariant 3: Search state must agree on first instruction. This instruction
  // must be the label definition that appears in the target.
  assert(state.current.get_code()[0] == target.get_code()[0]);
  assert(state.best_yet.get_code()[0] == target.get_code()[0]);
  assert(state.best_correct.get_code()[0] == target.get_code()[0]);

  // See Search::configure for additional invariants
}
```

Search Transformations
-----

Transformation types are defined in `src/search/move.h` along with an
additional type for user-defined extensions.

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

Transformations are specified using the family of `--xxxxx_mass` command line
arguments. These values control the distribution of proposals that are made by
the `Transforms::modify()` method and undone by the `Transforms::undo()`
method, which dispatch to the family of `Transforms::xxxxx_move()` and
`Transforms::undo_xxxxx_move()` methods respectively. User-defined extensions
should be placed in the `Transforms::extension_move()` and
`Transforms::undo_extension_move()` methods, which can be triggered by
specifying a non-zero `--extension_mass`.

```c++
bool Transforms::extension_move(Cfg& cfg) {
  // Add user-defined implementation here ...

  // Invariant 1:
  // If this method returns true, it should leave this class in a state such
  // that calling undo_extension_move() will revert cfg to its original state.

  // Invariant 2:
  // If this method returns false, it must leave cfg in its original state.

  // Invariant 3:
  // If validator_ is non-null, validator_->is_sound(instr) must hold true for
  // all instructions instr upon return.  (You can assume this holds at the
  // beginning).

  // Invariant 4:
  // Transformations must preserve the first instruction in a code sequence
  // which should be a label that represents the name of a function.

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

As above, both performing and undoing a transformation should leave a control
flow graph in a valid state. In general, this can be performed by invoking the
`Cfg::recompute()` method. However because these methods are on STOKE's
critical path, the faster `Cfg::recompute_defs()` method should be used for
transformations that do not modify control flow structure and only potentially
invalidate data-flow values.

Cost Function
-----

A cost function is specified using the `--cost` command line argument.  It's an
expression composed using standard unsigned arithmetic operators.  As
variables, you can use several measurements of the current rewrite.  The most
important of these is `correctness`.  The value `correctness` is (by default)
the number of bits that differ in the outputs of the target versus the rewrite
summed across all testcases.  There are some tunable options for this, for
example, for floating point computations.  In all cases, lower cost is better.

Some other important cost-variables you can use are:

| Name | Description |
| ---- | ----------- |
| binsize | The size (in bytes) of the assembled rewrite using the x64asm library. |
| correctness | How "correct" the rewrite's output appears.  Very configurable. |
| size | The number of instructions in the assembled rewrite. |
| latency | A poor-man's estimate of the rewrite latency, in clock cycles, based on the per-opcode latency table in `src/cost/tables`. |
| measured | An estimate of running time by counting the number of instructions actually executed on the testcases.  Good for algorithmic improvements.  |
| sseavx |  Returns '1' if both avx and sse instructions are used (this is usually bad!), and '0' otherwise.  Often used with a multiplier like `correctness + 1000*sseavx` |
| nongoal | Returns '1' if the code (after minimization) is found to be equivalent to one in `--non_goal`.  Can also be used with a multiplier. |

In typical usage, you will combine the value of `correctness` with other values
you want to optimize for.  A good starting point is `correctness + measured` or
`correctness + latency` (the latter being default).  Improvements might assign
an SSE-AVX penalty, like `correctness + latency + 10000*sseavx`.

To add a new cost function, drop a file into `src/cost` that subclasses
`stoke::CostFunction`.  Look at `src/cost/sseavx.h` for a simple example.  It
comes down to overloading the `operator()` function to return the value you
want.  Look at `measured.h` for an example of how to use runtime data from the
sandbox to generate values.  Then, add an entry to the map in
`tools/gadgets/cost_function.h` so that your new function can be found on the
command line.

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

Measurement type is specified using the `--distance` command line argument.
This value controls the behavior of the `CostFunction::evaluate_distance()
  const` method, which dispatches to the family of
  `CostFunction::xxxxx_distance() const` methods, each of which represent a
  method computing the distance between 64-bit values. User-defined extensions
  should be placed in the `CostFunction::extension_distance() const` method,
  which can be triggered by specifying `--distance extension`.

```c++
Cost CostFunction::extension_distance(uint64_t x, uint64_t y) const {                                            
  Cost res = 0;

  // Add user-defined implementation here ...

  // Invariant 1: Return value should not exceed max_error_cost
  assert(res <= max_error_cost);

  return res;                                                                                                   
}
```

Verification Strategy
-----

Verification strategy types are defined in `src/verifier/strategy.h` along with
an additional type for user-defined extensions.

```c++
enum class Strategy {
  NONE,
  HOLD_OUT,
  FORMAL,

  // Add user-defined extensions here ...
  EXTENSION
};
```

Strategy type is specified using the `--strategy` command line argument. This
value controls the behavior of the `Verifier::verify()` method, which
dispatches to the family of `Verifier::xxxxx_verify() const` methods, each of
which represent a method for verifying correctness. User-defined extensions
should be placed in the `Verifier::extension_verify()` method, which can be
triggered by specifying `--strategy extension`.

```c++
bool Verifier::extension_verify(const Cfg& target, const Cfg& rewrite) {                                         
  // Add user-defined implementation here ...

  // Invariant 1. If this method returns false and is able to produce a
  // counter example explaining why, counter_example_available_ should be
  // set to true.

  // Invariant 2. If this method returns false, and it is able (see above),
  // counter_example_ should be set to a CpuState that will cause target and
  // rewrite to produce different values.

  // Invariant 3.  If this method encounters an error, it should set the
  // error_ member variable to a non-empty string; otherwise the error_
  // member should be empty.

  return true;
} 
``` 

Command Line Args
-----

Command line arguments can be added to any of the STOKE subcommands using the
following syntax. Argument separators which are printed as part of help
messages are specified by defining a heading variable:

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

For complex values that are better suited to being read from files, a `FileArg`
may be more appropriate than a `ValueArg`. The syntax is identical.

```c++
auto& val = FileArg<Complex, ComplexReader, ComplexWriter>::create("value_name")
  .alternate("alternate_value_name")
  .usage("<complex representation>")
  .description("What this value represents")
  .default_val(Complex());
```


Contact
=====

Questions and comments are encouraged.  You can reach us through our mailing list at `stoke-developers@lists.stanford.edu`, or using the built-in GitHub issue tracker.
