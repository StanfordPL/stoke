    .text
.globl One
One:
    /*
     * The debugger stops at a breakpoint here and then changes the PC to &Two().
     */
    movl    $1, %eax
    ret


.globl Two
Two:
    movl    $2, %eax
    ret


.globl GetValue
GetValue:
    /*
     * Call indirect here so that the breakpoint is hit after an indirect jump.
     */
    call    *%rdi
    ret
