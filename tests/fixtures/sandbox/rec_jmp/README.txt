README.txt

This example tests stoke's ability to jmp to the label that appears at
the top of the function. This test is interesting only due to a quirk in
the way the sandbox manages this label. Function calls and jumps exercise
different assumptions about internal state, and these two use cases need
to be handled differently.

This will stress stoke testcase and debug_sandbox.
