.text
    .align 4
.globl SetAndClearDF
SetAndClearDF:
    std
    movl    $1, DFSet

    /*
     * Delay a little while to make it more likely that a signal
     * will arrive while DF is set.
     */
    mov     $0x1000, %eax
.L3:
    dec     %eax
    jne     .L3

    movl    $0, DFSet
    cld
    ret


    .align 4
.globl SignalHandler
SignalHandler:
    /*
     * Save the flags in 'Flags'.
     */
    pushf
    pop     %rax
    mov     %eax, Flags

    /*
     * The test is only interesting if the signal arrived while DF was
     * set (above in SetAndClearDF).
     */
    mov     DFSet, %eax
    mov     %eax, DidTest
    ret
