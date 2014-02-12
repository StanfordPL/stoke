
.data

.extern zeroVector
.extern memValues
.extern dpIndices
.extern spIndices

# The zmmSaveArea requires 128 bytes and a 64 byte padding since the
# vmovdqa64 instruction requires a 64-byte-aligned address
zmmSaveArea:
.space 192

.text

# void DoVgatherTest();
#
# This function calls the single and double precision forms of vgather. The tool should inspect the memory vector
# contents and the register values before and after each vgather instruction.
#
# Register usage:
# rax   - used for storing and loading the mask registers
# rbx   - used for holding a pointer to the memory vector values
# rcx   - used for storing and loading values to the zmm registers
# rdx   - used for holding a pointer to the zmm save area
# rsi   - used for control flow
# zmm2  - target vector for the vgather instructions
# zmm3  - index vetor for the vgather instructions
# k1    - holds a full mask for manipulating the vector registers
# k2    - used as the test mask register for the vgather instructions
.global DoVgatherTest
.type DoVgatherTest,  @function
DoVgatherTest:
    # Save the necessary registers and prepare their values for the tests
    push    %rsi
    lea     vgatherbegin, %rsi
    jmp     PrepareRegs

vgatherbegin:
    # Test the double-precision vgather
    lea     dpIndices, %rcx
    vmovdqa64   (%rcx), %zmm3 {%k1}
    mov     gatherMask, %rax
    kmov    %eax, %k2
    vgatherdpd  (%rbx, %zmm3, 8), %zmm2 {%k2}

    # Test the single-precision vgather
    lea     spIndices, %rcx
    vmovdqa64   (%rcx), %zmm3 {%k1}
    mov     gatherMask, %rax
    kmov    %eax, %k2
    vgatherdps  (%rbx, %zmm3, 4), %zmm2 {%k2}

    # Restore the original register values
    lea     vgatherend, %rsi
    jmp     RestoreRegs

vgatherend:
    pop     %rsi
    ret


# void DoScatterTest();
#
# This function is similar to the DoVgatherTest function, except that it tests the vscatter instruction.
# For complete details, see documentation of DoVgatherTest() above.
.global DoVscatterTest
.type DoVscatterTest,  @function
DoVscatterTest:
    # Save the necessary registers and prepare their values for the tests
    push    %rsi
    lea     vscatterbegin, %rsi
    jmp     PrepareRegs

vscatterbegin:
    # Test the double-precision vgather
    lea     dpIndices, %rcx
    vmovdqa64   (%rcx), %zmm3 {%k1}
    mov     scatterMask, %rax
    kmov    %eax, %k2
    vscatterdpd %zmm2, (%rbx, %zmm3, 8) {%k2}

    # Test the single-precision vgather
    lea     spIndices, %rcx
    vmovdqa64   (%rcx), %zmm3 {%k1}
    mov     scatterMask, %rax
    kmov    %eax, %k2
    vscatterdps %zmm2, (%rbx, %zmm3, 8) {%k2}

    # Restore the original register values
    lea     vscatterend, %rsi
    jmp     RestoreRegs

vscatterend:
    pop     %rsi
    ret


# void PrepareRegs(void* returnAddress);
PrepareRegs:
    # Save the necessary GPRs
    push    %rax
    push    %rbx
    push    %rcx
    push    %rdx

    # Save the necessary mask registers
    kmov    %k1, %eax
    push    %rax
    kmov    %k2, %eax
    push    %rax

    # Prepare the mask registers
    # Full mask
    mov     fullmask, %rax
    kmov    %eax, %k1
    # The test register (k2) will be set during the test itself

    # Allign the zmmSaveArea
    lea     zmmSaveArea, %rdx
    add     $0x40, %rdx
    and     $0xffffffffffffffc0, %rdx
    # Save the necessary vector registers
    vmovdqa64   %zmm2, (%rdx) {%k1}
    add         $0x40, %rdx
    vmovdqa64   %zmm3, (%rdx) {%k1}

    # Zero out the target vector register
    lea         zeroVector, %rcx
    vmovdqa64   (%rcx), %zmm2 {%k1}

    # Set a pointer to the memory vector values
    lea     memValues, %rbx
    jmp     *%rsi


# void RestoreRegs(void* returnAddress);
RestoreRegs:
    # Allign the zmmSaveArea
    lea     zmmSaveArea, %rdx
    add     $0x40, %rdx
    and     $0xffffffffffffffc0, %rdx
    # Restore the vector registers
    vmovdqa64   (%rdx), %zmm2 {%k1}
    add         $0x40, %rdx
    vmovdqa64   (%rdx), %zmm3 {%k1}

    # Restore the mask registers
    pop     %rax
    kmov    %eax, %k2
    pop     %rax
    kmov    %eax, %k1

    # Restore the GPRs
    pop     %rdx
    pop     %rcx
    pop     %rbx
    pop     %rax
    jmp     *%rsi
