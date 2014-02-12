# Each test sets these to register values at the time of the fault.
#
.comm   ExpectedPC,8,8
.comm   ExpectedR8,8,8
.comm   ExpectedR9,8,8
.comm   ExpectedR10,8,8
.comm   ExpectedR11,8,8
.comm   ExpectedR12,8,8
.comm   ExpectedR13,8,8
.comm   ExpectedR14,8,8
.comm   ExpectedR15,8,8
.comm   ExpectedRDI,8,8
.comm   ExpectedRSI,8,8
.comm   ExpectedRBP,8,8
.comm   ExpectedRBX,8,8
.comm   ExpectedRDX,8,8
.comm   ExpectedRAX,8,8
.comm   ExpectedRCX,8,8
.comm   ExpectedRSP,8,8
.comm   ExpectedEFLAGS,8,8

# Some scratch memory used by the tests below.
#
.comm   Scratch,4096,8


.text

# SetRegisters()
#
#   Set the integer registers and their associated 'Expected*' variables
#   to weird values.
#
    .align 4
.globl SetRegisters
SetRegisters:
    # Set flags to:
    #
    #   AC=0, OF=1, DF=1, TF=0, SF=0, ZF=1, AF=1, PF=0, CF=1
    #
    movq    $0xc51, %rax
    pushq   %rax
    popfq
    movq    $0xc51, ExpectedEFLAGS(%rip)

    movq    $1, %r8
    movq    $2, %r9
    movq    $3, %r10
    movq    $4, %r11
    movq    $5, %r12
    movq    $6, %r13
    movq    $7, %r14
    movq    $8, %r15
    movq    $9, %rdi
    movq    $10, %rsi
    movq    $11, %rbp
    movq    $12, %rbx
    movq    $13, %rdx
    movq    $14, %rax
    movq    $15, %rcx

    movq    %r8, ExpectedR8(%rip)
    movq    %r9, ExpectedR9(%rip)
    movq    %r10, ExpectedR10(%rip)
    movq    %r11, ExpectedR11(%rip)
    movq    %r12, ExpectedR12(%rip)
    movq    %r13, ExpectedR13(%rip)
    movq    %r14, ExpectedR14(%rip)
    movq    %r15, ExpectedR15(%rip)
    movq    %rdi, ExpectedRDI(%rip)
    movq    %rsi, ExpectedRSI(%rip)
    movq    %rbp, ExpectedRBP(%rip)
    movq    %rbx, ExpectedRBX(%rip)
    movq    %rdx, ExpectedRDX(%rip)
    movq    %rax, ExpectedRAX(%rip)
    movq    %rcx, ExpectedRCX(%rip)
    ret


# DoFaultRetSp()
#
#   Cause RET to fault by making $SP invalid.
#
    .align 4
.globl DoFaultRetSp
DoFaultRetSp:
    call    SetRegisters
    movq    $DoFaultRetSpLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultRetSpLab:
    ret


# DoFaultRetTarg()
#
#   Cause RET to fault due to invalid target.
#
    .align 4
.globl DoFaultRetTarg
DoFaultRetTarg:
    call    SetRegisters
    movq    $0, ExpectedPC(%rip)
    mov     %rsp, ExpectedRSP(%rip)
    pushq   $0
    ret


# DoFaultRetImmSp()
#
#   Cause "RET <imm>" to fault by making $SP invalid.
#
    .align 4
.globl DoFaultRetImmSp
DoFaultRetImmSp:
    call    SetRegisters
    movq    $DoFaultRetImmSpLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultRetImmSpLab:
    ret     $0x40


# DoFaultRetImmTarg()
#
#   Cause "RET <imm>" to fault due to invalid target.
#
    .align 4
.globl DoFaultRetImmTarg
DoFaultRetImmTarg:
    movq    $0, ExpectedPC(%rip)
#   Save the stack pointer in rax
    mov     %rsp, %rax
    addq    $0x40, %rax
    mov     %rax, ExpectedRSP(%rip)
    call    SetRegisters
    pushq   $0
    ret     $0x40


# DoFaultCallSp()
#
#   Cause direct CALL to fault because $SP is invalid.
#
    .align 4
.globl DoFaultCallSp
DoFaultCallSp:
    call    SetRegisters
    movq    $DoFaultCallSpLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultCallSpLab:
    call    DoFaultCallSp


# DoFaultCallTarg()
#
#   Cause direct CALL to fault because target is invalid.
#
    .align 4
.globl DoFaultCallTarg
DoFaultCallTarg:
    movq    $Unmapped, ExpectedPC(%rip)
#   Save the stack pointer in rax
    mov     %rsp, %rax
    subq    $8, %rax
    mov     %rax, ExpectedRSP(%rip)
    call    SetRegisters
    call    Unmapped


# DoFaultCallRegSp()
#
#   Cause "CALL *%rx" to fault because $SP is invalid.
#
    .align 4
.globl DoFaultCallRegSp
DoFaultCallRegSp:
    call    SetRegisters
    movq    $DoFaultCallRegSpLab, ExpectedPC(%rip)
    movq    $DoFaultCallRegSp, ExpectedRDI(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
    movq    $DoFaultCallRegSp, %rdi
DoFaultCallRegSpLab:
    call    *%rdi


# DoFaultCallRegTarg()
#
#   Cause "CALL *%rx" to fault because target is invalid.
#
    .align 4
.globl DoFaultCallRegTarg
DoFaultCallRegTarg:
    movq    $Unmapped, ExpectedPC(%rip)
#   Save the stack pointer in rax
    mov     %rsp, %rax
    subq    $8, %rax
    mov     %rax, ExpectedRSP(%rip)
    call    SetRegisters
    movq    $Unmapped, ExpectedRDI(%rip)
    movq    $Unmapped, %rdi
    call    *%rdi


# DoFaultCallMemSp()
#
#   Cause "CALL *[mem]" to fault because $SP is invalid.
#
    .align 4
.globl DoFaultCallMemSp
DoFaultCallMemSp:
    call    SetRegisters
    movq    $DoFaultCallMemSpLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
    movq    $DoFaultCallMemSp, Scratch(%rip)
DoFaultCallMemSpLab:
    call    *Scratch(%rip)


# DoFaultCallMemTarg()
#
#   Cause "CALL *[mem]" to fault because target is invalid.
#
    .align 4
.globl DoFaultCallMemTarg
DoFaultCallMemTarg:
    movq    $Unmapped, ExpectedPC(%rip)
#   Save the stack pointer in rax
    mov     %rsp, %rax
    subq    $8, %rax
    mov     %rax, ExpectedRSP(%rip)
    call    SetRegisters
    movq    $Unmapped, Scratch(%rip)
    call    *Scratch(%rip)


# DoFaultCallMemBadMem()
#
#   Cause "CALL *[mem]" to fault because [mem] is invalid.
#
    .align 4
.globl DoFaultCallMemBadMem
DoFaultCallMemBadMem:
    movq    $DoFaultCallMemBadMemLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    call    SetRegisters
DoFaultCallMemBadMemLab:
    call    *Unmapped(%rip)


# DoFaultSegMov()
#
#   Cause MOV to fault because of illegal segment selector.
#
    .align 4
.globl DoFaultSegMov
DoFaultSegMov:
    movq    $0, %rax
    mov     %gs, %ax
    call    SetRegisters
    movq    $DoFaultSegMovLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
DoFaultSegMovLab:
    mov     %gs:0, %rdi
    ret


# DoFaultStringOp()
#
#   Cause MOVS to fault.
#
    .align 4
.globl DoFaultStringOp
DoFaultStringOp:
    call    SetRegisters
    movq    $DoFaultStringOpLab, ExpectedPC(%rip)
    movq    $5, ExpectedRCX(%rip)
    movq    $Unmapped, ExpectedRSI(%rip)
    movq    $Scratch+5*4, ExpectedRDI(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    movq    $0x851, ExpectedEFLAGS(%rip)   # Expect Flags to have DF=0
    movq    $10, %rcx
    mov     $Unmapped-5*4, %rsi
    movq    $Scratch, %rdi
    cld
DoFaultStringOpLab:
    rep movsd
    ret


# DoFaultPushF()
#
#   Cause PUSHF to fault by making $SP invalid.
#
    .align 4
.globl DoFaultPushF
DoFaultPushF:
    call    SetRegisters
    movq    $DoFaultPushFLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultPushFLab:
    pushf


# DoFaultPopF()
#
#   Cause POPF to fault by making $SP invalid.
#
    .align 4
.globl DoFaultPopF
DoFaultPopF:
    call    SetRegisters
    movq    $DoFaultPopFLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultPopFLab:
    popf


# DoFaultPush()
#
#   Cause PUSH to fault by making $SP invalid.
#
    .align 4
.globl DoFaultPush
DoFaultPush:
    call    SetRegisters
    movq    $DoFaultPushLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultPushLab:
    pushq   %rdi


# DoFaultPop()
#
#   Cause POP to fault by making $SP invalid.
#
    .align 4
.globl DoFaultPop
DoFaultPop:
    call    SetRegisters
    movq    $DoFaultPopLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultPopLab:
    popq    %rdi


# DoFaultPushMem()
#
#   Cause "PUSH *[mem]" to fault because [mem] is invalid.
#
    .align 4
.globl DoFaultPushMem
DoFaultPushMem:
    call    SetRegisters
    movq    $DoFaultPushMemLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
DoFaultPushMemLab:
    pushq   Unmapped


# DoFaultPopMem()
#
#   Cause "POP *[mem]" to fault because [mem] is invalid.
#
    .align 4
.globl DoFaultPopMem
DoFaultPopMem:
    call    SetRegisters
    movq    $DoFaultPopMemLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
DoFaultPopMemLab:
    popq    Unmapped


# DoFaultEnter()
#
#   Cause ENTER to fault by making $SP invalid.
#
    .align 4
.globl DoFaultEnter
DoFaultEnter:
    call    SetRegisters
    movq    $DoFaultEnterLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultEnterLab:
    enterq  $0, $0


# DoFaultLeave()
#
#   Cause LEAVE to fault by making $SP invalid.
#
    .align 4
.globl DoFaultLeave
DoFaultLeave:
    call    SetRegisters
    movq    $DoFaultLeaveLab, ExpectedPC(%rip)
    movq    $0, ExpectedRSP(%rip)
    movq    $0, %rsp
DoFaultLeaveLab:
    leave


# DoFaultMaskmovdqu()
#
#   Cause MASKMOVDQU to fault.
#
    .align 4
.globl DoFaultMaskmovdqu
DoFaultMaskmovdqu:
    subq    $16, %rsp
    call    SetRegisters
    movl    $0xffffffff, 0(%rsp)
    movl    $0xffffffff, 4(%rsp)
    movl    $0xffffffff, 8(%rsp)
    movl    $0xffffffff, 12(%rsp)
    movq    0(%rsp), %xmm0
    movq    0(%rsp), %xmm1
    movq    $Unmapped, %rdi
    movq    $DoFaultMaskmovdquLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    movq    %rdi, ExpectedRDI(%rip)
DoFaultMaskmovdquLab:
    maskmovdqu  %xmm0, %xmm1


# DoFaultBitTest()
#
#   Cause BT to fault.
#
    .align 4
.globl DoFaultBitTest
DoFaultBitTest:
    call    SetRegisters
    movq    $DoFaultBitTestLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    movq    $16, ExpectedRDI(%rip)
    movq    $16, %rdi
    movq    $Unmapped, %rcx
    movq    %rcx, ExpectedRCX(%rip)
DoFaultBitTestLab:
    bt      %rdi, (%rcx)


# DoFaultMovSegSelector()
#
#   Cause "MOV %fs, [mem]" to fault.
#
    .align 4
.globl DoFaultMovSegSelector
DoFaultMovSegSelector:
    call    SetRegisters
    movq    $DoFaultMovSegSelectorLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    movq    $Unmapped, %rcx
    movq    %rcx, ExpectedRCX(%rip)
DoFaultMovSegSelectorLab:
    mov     %fs, (%rcx)


# DoFaultJumpMemBadMem()
#
#   Cause "JMP *[mem]" to fault because [mem] is invalid.
#
    .align 4
.globl DoFaultJumpMemBadMem
DoFaultJumpMemBadMem:
    movq    $DoFaultJumpMemBadMemLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    call    SetRegisters
DoFaultJumpMemBadMemLab:
    jmp     *Unmapped(%rip)


# DoFaultBadLoad()
#
#   Cause "MOV [mem], %rx" to fault.
#
    .align 4
.globl DoFaultBadLoad
DoFaultBadLoad:
    movq    $DoFaultBadLoadLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    call    SetRegisters
DoFaultBadLoadLab:
    mov     Unmapped, %rdi


# DoFaultBadStore()
#
#   Cause "MOV %rx, [mem]" to fault.
#
    .align 4
.globl DoFaultBadStore
DoFaultBadStore:
    movq    $DoFaultBadStoreLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    call    SetRegisters
DoFaultBadStoreLab:
    mov     %rdi, Unmapped


# DoFaultCmov()
#
#   Cause "CMOVcc %rx, [mem]" to fault.
#
    .align 4
.globl DoFaultCmov
DoFaultCmov:
    movq    $DoFaultCmovLab, ExpectedPC(%rip)
    movq    %rsp, ExpectedRSP(%rip)
    call    SetRegisters
DoFaultCmovLab:
    cmovb   Unmapped, %rdi  # SetRegisters() sets CF=1, so the condition is true.


# Unmapped()
#
#   This label is on an unmapped page.  (The C++ part of the test program unmaps the page.)
    .align 4096
.globl Unmapped
Unmapped:
    .zero 4096
