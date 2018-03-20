---
layout: post
title: Home
---

STOKE is a stochastic optimizer and program synthesizer for the x86-64 instruction set. STOKE uses random search to explore the extremely high-dimensional space of all possible program transformations. Although any one random transformation is unlikely to produce a code sequence that is desirable, the repeated application of millions of transformations is sufficient to produce novel and non-obvious code sequences.  STOKE can be used in many different scenarios, such as optimizing code for performance or size, synthesizing an implementation from scratch or to trade accuracy of floating point computations for performance.  As a superoptimizer, STOKE has been shown to outperform the code produced by general-purpose and domain-specific compilers, and in some cases expert hand-written code.

In addition to searching over programs, STOKE contains verification infrastructure to show the equivalence between x86-64 programs.  STOKE can consider test-cases, perform bounded verification all the way to fully formal verification that shows the equivalence for all possible inputs.

The research behind STOKE is supported by grants from the National Science Foundation. 

# Publications

STOKE has appeared in a number of publications.

- [**Stochastic Superoptimization** -- ASPLOS 2013](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/asplos13.pdf)
- [**Data-Driven Equivalence Checking** -- OOPSLA 2013](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/oopsla13b.pdf)
- [**Stochastic Optimization of Floating-Point Programs with Tunable Precision** -- PLDI 2014](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/pldi14a.pdf)
- [**Conditionally Correct Superoptimization** -- OOPSLA 2015](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/oopsla15a.pdf)
- [**Stochastic Program Optimization** -- CACM 2016](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/cacm16.pdf)
- [**Stratified Synthesis: Automatically Learning the x86-64 Instruction Set** -- PLDI 2016](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/pldi16.pdf)
- [**Sound Loop Superoptimization for Google Native Client** -- ASPLOS 2017](https://raw.githubusercontent.com/StanfordPL/stoke/develop/docs/papers/asplos17.pdf)

# Download

STOKE is developed as open source on GitHub and can be downloaded from [github.com/StanfordPL/stoke](https://github.com/StanfordPL/stoke).  The repository contains instructions on how to install STOKE as well as it's dependencies.

