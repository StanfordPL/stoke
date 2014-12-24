Notes --

This is the linked list traversal benchmark from [bansal 06].

Given the current implementation of stoke, it's actually a little bit difficult
to run this experiment under the same conditions as it was run in [schkufza 12]. 
The primary complication is that STOKE works at the granularity of functions now. 

We solve this problem by using two files -- loop.s and kernel.s -- which are
representative of an llvm -O0 compilation, and asking STOKE to optimize the
former.  Once we're done, we paste the results back together and time as usual.

Known Issues --

The synth and opt config files blacklist variants of the push/pop instructions.
This is due to a bug in the current version of stoke that does not check for
implicit register writes that modify preserved registers.
