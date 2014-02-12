/*
 * If the stack is properly aligned, "SP-8" should be aligned on a 16-byte boundary
 * on entry to this (and any) function.  The 'movdqa' instruction below will fault
 * if the stack is not aligned this way.
 */

.text
    .align 4
.globl CheckSPAlign
CheckSPAlign:
    add     $-24, %rsp
    movdqa  %xmm0, 0(%rsp)
    add     $24, %rsp
    ret
