    .text
.globl Breakpoint
Breakpoint:
    nop
.globl Breakpoint2
Breakpoint2:
    ret

    .data
.globl MemTestData
MemTestData:
    .long 0x12345678
    .long 0xdeadbeef

    .text
.globl DoRegMemTest
DoRegMemTest:
    lea     MemTestData, %eax
    mov     (%eax), %ecx
    mov     %ecx, (%eax)
    ret

    .text
.globl DoStepCustomBreakTest
DoStepCustomBreakTest:
    nop
    call    Breakpoint
    ret
