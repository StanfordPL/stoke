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
 1. [Fixed-Point Loop-Free Optimization](https://github.com/eschkufz/stoke#fixed-point-loop-free-optimization)
 2. [Fixed-Point Loop Optimization](https://github.com/eschkufz/stoke#fixed-point-loop-optimization)
 3. [Floating-Point Loop-Free Optimization](https://github.com/eschkufz/stoke#floating-point-loop-free-optimization)
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

The following toy examples shows a typical workflow for using STOKE. All of the following code can be found in the `examples/tutorial/` directory. 

Fixed-Point Loop-Free Optimization
-----

Consider a C++ program, `main.cc`, which repeatedly counts the number of bits (population count) in the 64-bit representation of an integer. (Keeping track of a running sum prevents `g++` from eliminating the calls to `popcnt()` altogether.)

```c++
#include <cstdlib>
#include <stdint.h>
using namespace std;

uint64_t popcnt(uint64_t x) {
  uint64_t res = 0;
  for ( ; x > 0; x >>= 1 ) {
    res += x & 0x1ull;
  }
  return res;    
}

int main(int argc, char** argv) {
  const auto itr = atoi(argv[1]);
  
  uint64_t res = 0;
  for ( auto i = 0; i < itr; ++i ) {
    res += popcnt(i);
  }

  return res;
}
```

STOKE is a compiler and programming language agnostic optimization tool. It can be applied to any x86_64 ELF binary. Although this example uses the GNU toolchain, nothing prevents the use of other tools. To build this code with full optimizations, type:

    $ g++ -std=c++11 -O3 main.cc -o ./a.out
    
To measure runtime, type:

    $ time ./a.out 100000000
    
    real  0m1.372s
    user  0m1.373s
    sys	  0m0.000s
    
A profiler will reveal that the runtime of `./a.out` is dominated by calls to the `popcnt()` function. STOKE can be used to improve the implementation of this function as follows. The first step is to disassemble the program by typing:

    $ stoke extract -i ./a.out -o bins
    
This will produce a directory named `bins` that contains the text of every function contained in the binary `./a.out`. 

Help for stoke or any of its subcommands can be obtained by typing:

    $ stoke -h
    $ stoke <subcommand> -h
    
STOKE can accept arguments either through the command line or through a configuration file. The invocation of `stoke extract` shown above is equivalent to the following:

    $ stoke extract --config extract.conf
    
Where `extract.conf` is the following:

```
##### stoke extract config file

-i ./a.out # Path to the elf binary to disassemble
-o bins    # Path to the directory to store disassembled text in
```

Because `main.cc` was compiled using `g++`, the text of the `popcnt()` function appears under the mangled name `_Z6popcntm` in `bins/_Z6popcntm.s`.

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
    
Where `testcase.conf` contains the following:

```
##### stoke testcase config file

--bin ./a.out        # The name of the binary to use to generate testcases 
--args 10000000      # Command line arguments that should be passed to ./a.out

-o popcnt.tc         # Path to file to write testcases to

--fxn _Z6popcnt m    # The name of the function that we want to generate testcases for
--max_testcases 1024 # The maximum number of testcases to generate. A testcase is generated whenever
                     # the popcnt() function is called
```

Fixed-Point Loop-Optimization
-----
Floating-Point Loop-Free Optimization
-----

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
