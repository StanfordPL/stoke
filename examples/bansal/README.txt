Notes --

This is the linked list traversal benchmark from [bansal 06].

Given the current implementation of stoke, it's actually a little
bit difficult to run this experiment under the same conditions as
it was run in [schkufza 12]. There are two complications:

1. STOKE works at the granularity of functions now, so we have to
define the kernel() function to simulate the body of the loop.

2. STOKE allocates sandbox memory contiguously which means that 
we have to fight a little bit to generate test cases that
aren't enormous. We solve this by adding the Node* that would be on
the stack to the beginning of the struct and adding an odd number of 
padding bytes (stoke doesn't have the constant in it's immediate pool, 
so it has to work for this value).

The result still isn't perfect. There's no way to convince STOKE
to load the initial value from memory (it has to be passed through the 
stack). With that qualification, the code here is the moral equivalent
of the original. STOKE will produce a result that uses one less instruction
than the one shown in [schkufza 12].
