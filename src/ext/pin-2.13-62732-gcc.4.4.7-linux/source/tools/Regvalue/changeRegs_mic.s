
.data

.extern gprval
.extern agprval
.extern stval
.extern astval
.extern zmmval
.extern azmmval
.extern kval
.extern akval
.extern fpSaveArea

# The zmmSaveArea requires 64 bytes and a 64 byte padding since the
# vmovdqa64 instruction requires a 64-byte-aligned address
zmmSaveArea:
.space 128

.text

# void ChangeRegsWrapper();
# This wrapper saves and restores the registers used by ChangeRegs.
# This is done in the wrapper since we want ChangeRegs to actually
# change the register values but not to affect the application itself.
# The tool may intercept ChangeRegs and replace it with its own function.
#
# Register usage:
# rax   - used for storing and loading the mask registers
# rbx   - used for testing the gpr values
# rcx   - used for holding a pointer to the fp save area (used by fxsave)
# rdx   - used for saving the zmm register to memory
# st0   - used (implicitly) for loading a value to the FPU stack
# st2   - used for testing the FPU values
# k3    - used for testing the mask register values
# zmm5  - used for testing the zmm values
.global ChangeRegsWrapper
.type ChangeRegsWrapper,  @function
ChangeRegsWrapper:
    # Save the necessary GPRs
    push    %rax
    push    %rbx
    push    %rcx
    push    %rdx

    # Save the necessary mask registers
    kmov    %k1, %eax
    push    %rax
    kmov    %k3, %eax
    push    %rax
    mov     $0xffff, %rax
    kmov    %eax, %k1

    # Allign the zmmSaveArea
    lea     zmmSaveArea, %rdx
    add     $0x40, %rdx
    and     $0xffffffffffffffc0, %rdx
    # Save the necessary vector register
    vmovdqa64   %zmm5, (%rdx) {%k1}

    # Allign the fpSaveArea
    lea     fpSaveArea, %rcx
    add     $0x40, %rcx
    and     $0xffffffffffffffc0, %rcx
    # Save the floating-point state
    fxsave  (%rcx)

    # Now call ChangeRegs - do the actual test.
    # The tool may intercept this function and modify the register values itself.
    call    ChangeRegs

    # Placeholder for PIN_ExecuteAt
    call    ExecuteAt

    # Save the modified values to memory so the tool can ispect them.
    # This is relevant only when the tool modifies the values.
    call    SaveRegsToMem

    # Restore the floating-point state
    fxrstor (%rcx)

    # Restore the vector register
    vmovdqa64   (%rdx), %zmm5 {%k1}

    # Restore the mask registers
    pop     %rax
    kmov    %eax, %k3
    pop     %rax
    kmov    %eax, %k1

    # Restore the GPRs
    pop     %rdx
    pop     %rcx
    pop     %rbx
    pop     %rax
    ret

# void ChangeRegs();
# For register usage see ChangeRegsWrapper above.
.global ChangeRegs
.type ChangeRegs,  @function
ChangeRegs:
    # TEST: load the new value to rbx
    mov     gprval, %rbx
    # Prepare the test value at the top of the FPU stack
    fldt    stval
    # TEST: load the new value to st2
    fst     %st(2)
    # Allign the zmmval
    lea     zmmval, %rax
    # TEST: store the new value to zmm5
    vmovdqa64   (%rax), %zmm5 {%k1}
    # Prepare the new value for k3 in the gpr rax
    movw    kval, %rax
    # TEST: store the new value to k3
    kmov    %eax, %k3
    ret

# void ExecuteAt();
.global ExecuteAt
.type ExecuteAt,  @function
ExecuteAt:
    ret

# void SaveRegsToMem();
# Save the necessary registers to memory.
# The tool will then compare the value stored in memory to the ones it expects to find.
# For register usage see ChangeRegsWrapper above.
.global SaveRegsToMem
.type SaveRegsToMem,  @function
SaveRegsToMem:
    # TEST: store the new value of rbx
    mov     %rbx, agprval
    # prepare the test value at the top of the FPU stack
    fld     %st(2)
    # TEST: store the new value of st2
    fstpt   astval
    # Allign the zmmval save area
    lea     azmmval, %rax
    # TEST: store the new value of zmm5
    vmovdqa64   %zmm5, (%rax) {%k1}
    # Prepare the new value of k3 in the gpr rax
    kmov    %k3, %eax
    # TEST: store the new value of k3
    movw    %rax, akval
    ret
