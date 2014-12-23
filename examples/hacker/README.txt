Notes:

This is the hacker's delight benchmark set from 
Synthesis of Loop-Free Programs [gulwani 11].

p01: Turn off right-most one bit
p02: Test whether an unsigned int is of the form 2^(n-1)
p03: Isolate the right-most one bit
p04: Form a mast that identifies right-most one bit and trailing zeros
p05: Right propagate right-most one bit
p06: Turn on the right-most zero bit in a word
p07: Isolate the right-most zero bit
p08: Form a mask that identifies trailing zeros
p09: Absolute value function
p10: Test if nlz(x) == nlz(y)
p11: Test if nlz(x) < nlz(y)
p12: Test if nlz(x) <= nlz(y)
p13: Sign Function
p14: Floor of average of two integers without overflowing
p15: Ceil of average of two integers without overflowing
p16: Compute max of two integers
p17: Turn off right-most contiguous string of one bits
p18: Determine if an integer is a power of two
p19: Exchanging two fields of the same integer 
p20: Next higher unsigned number with same number of one bits
p21: Cycling through 3 values
p22: Compute parity
p23: Counting number of bits
p24: Round up to next highest power of two
p25: Compute higher order half of product of x and y

Target Generation:

Benchmarks p10 - p12 use gcc -O0 to generate target code (gcc uses a 
semantics for unsigned comparison which is consistent with the one described
in [gulwani 11]). Every other benchmark uses llvm -O0.

Known Issues:

p19, p20, and p24 have optimization files that are configured to be used
without first performing synthesis. make synth will work in these directories,
but make opt will not read the results.

p18 won't synthesize (seems like a bug)

