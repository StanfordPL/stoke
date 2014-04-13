STOKE
=====

STOKE is a stochastic optimizer for the x86_64 instruciton set. STOKE uses random search to explore the extremely high-dimensional space of all possible program transformations. Although any one random transformation is unlikely to produce a code sequence that is both correct and an improvement over the original, the repeated application of millions of transformations is sufficient to produce novel and non-obvious code sequences that have been shown to outperform the code produced by general-purpose and domain-specific compilers, and in some cases expert hand-written code.

STOKE has appeared in a number of publications. For a thorough introduction to the design of STOKE, please see the following:

- **Stochastic Superoptimization** -- ASPLOS 2013 ([link](http://cs.stanford.edu/people/eschkufz/research/asplos291-schkufza.pdf)):
- **Data-Driven Equivalence Checking** -- OOPSLA 2013 ([link](http://cs.stanford.edu/people/eschkufz/research/oopsla011-sharma.pdf)):
- **Stochastic Optimization of Floating-Point Programs with Tunable Precision** -- PLDI 2014 ([link](http://cs.stanford.edu/people/eschkufz/research/pldi52-schkufza.pdf)):

Table of Contents
=====
1. [Downloading and Building STOKE](https://github.com/eschkufz/stoke#downloading-and-building-stoke)
2. [Using STOKE](https://github.com/eschkufz/stoke#using-stoke)
3. [Extending STOKE](https://github.com/eschkufz/stoke#extending-stoke)
 1. [Initial Search State](https://github.com/eschkufz/stoke#initial-search-state)
 2. [Search Transformations](https://github.com/eschkufz/stoke#search-transformations)
 3. [Performance Term](https://github.com/eschkufz/stoke#performance-term)
 4. [Correctness Term](https://github.com/eschkufz/stoke#correctness-term)
 5. [Live-out Error](https://github.com/eschkufz/stoke#computing-error)
 6. [Verification Strategy](https://github.com/eschkufz/stoke#verification-strategy)
 7. [Command Line Args](https://github.com/eschkufz/stoke#command-line-args)
4. [Additional Features](https://github.com/eschkufz/stoke#additional-features)
 1. [Debug Control Flow Graph](https://github.com/eschkufz/stoke#debug-control-flow-graph)
 2. [Debug Cost Function](https://github.com/eschkufz/stoke#debug-cost-function)
 3. [Debug Sandbox](https://github.com/eschkufz/stoke#debug-sandbox)
 4. [Debug Search Transformations](https://github.com/eschkufz/stoke#debug-search-transformations)
 5. [Debug State Transformations](https://github.com/eschkufz/stoke#debug-state-transformations)
 6. [Debug Verifier](https://github.com/eschkufz/stoke#debug-verifier)
 7. [Benchmark Control Flow Graph](https://github.com/eschkufz/stoke#benchmark-control-flow-graph)
 8. [Benchmark Cost Function](https://github.com/eschkufz/stoke#benchmark-cost-function)
 9. [Benchmark Sandbox](https://github.com/eschkufz/stoke#benchmark-sandbox)
 10. [Benchmark Search Transformations](https://github.com/eschkufz/stoke#benchmark-search-transformations)
 11. [Benchmark State Transformations](https://github.com/eschkufz/stoke#benchmark-state-transformations)
 12. [Benchmark Verifier](https://github.com/eschkufz/stoke#benchmark-verifier)

Downloading and Building STOKE
=====

The entire STOKE code base, as well as its dependencies are available on github under the Apache Software License version 2.0. To clone a copy of the source code, type:

    $ git clone https://github.com/eschkufz/stoke

The implementation of STOKE is for better or worse highly platform dependent. The current version of STOKE was built and tested in Ubuntu 13.10 on an Intel CPU with full support for the Haswell instruction set. To determine whether your machine satisfies this hardware dependency, type:

    $ less /proc/cpuinfo
    
and check that the following cpu flags are present:

    $ flags: ... avx avx2 bmi bmi2 popcnt ...

Most of STOKE's software dependencies are available through apt. These can be satisfied by typing:

    $ sudo apt-get install flex bison ccache doxygen g++ g++-multilib ghc libghc-regex-tdfa-dev libghc-regex-compat-dev libghc-split-dev

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
// popcnt.cc

#include <stddef.h>
#include <stdint.h>
 
size_t popcnt(uint64_t x) {
  int res = 0;
  for ( ; x > 0; x >>= 1 ) {
    res += x & 0x1ull;
  }
  return res;
}
```

```c++
// main.cc

#include <cstdlib>
#include <stddef.h>
#include <stdint.h>

using namespace std;

extern size_t popcnt(uint64_t x);

int main(int argc, char** argv) {
  const auto itr = atoi(argv[1]);

  auto ret = 0;
  for ( auto i = 0; i < itr; ++i ) {
    ret += popcnt(i);
  }

  return ret;
```

STOKE is a compiler and programming language agnostic optimization tool. It can be applied to any x86_64 ELF binary. Although this example uses the GNU toolchain, nothing prevents the use of other tools. To build this code with full optimizations, type:

    $ g++ -std=c++11 -O3 -c popcnt.cc
    $ g++ -std=c++11 -O3 main.cc popcnt.o
    
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
--test_set "{ 0 ... 1023 }"  # Testcases to use as holdout set for checking correctness

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
--verification_cycles 16 # Attempt to verify 16 zero cost rewrites before giving up

--strategy hold_out # Verify results using a larger hold out testcase set
```

STOKE search will produce two types of status messages. Progress update messages will be printed whenever STOKE discovers a new lowest cost verified or unverified rewrite. The code shown on the left is not equivalent to the target code; the code shown on the right is.

```
Progress Update: 

Best Unverified (9)                Best Verified (15)     
                                                         
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

The original program can be recompiled using this improved implemenation by typing:

    $ g++ -std=c++11 -c result.s 
    $ g++ -std=c++11 -O3 main.cc result.o
    
And runtime can once again be measured by typing:

    $ time ./a.out 100000000
    
    real  0m0.133s
    user  0m0.109s
    sys	  0m0.000s    

As expected, the results are close to an order of magnitude faster than the original.

Extending STOKE
=====
Initial Search State
-----
Search Transformations
-----
Performance Term
-----
Correctness Term
-----
Live-out Error
-----
Verification Strategy
-----
Command Line Args
-----

Additional Features
=====
Debug Control Flow Graph
-----
Debug Cost Function
-----
Debug Sandbox
-----
Debug Search Transformations
-----
Debug State Transformations
-----
Debug Verifier
-----
Benchmark Control Flow Graph
-----
Benchmark Cost Function
-----
Benchmark Sandbox
-----
Benchmark Search Transformations
-----
Benchmark State Transformations
-----
Benchmark Verifier
-----
