PUBLIC ChangeRegsWrapper
PUBLIC ChangeRegs
PUBLIC SaveRegsToMem

.686
.XMM
.model flat, c
extern gprval:dword
extern agprval:dword
extern stval:real10
extern astval:real10
extern xmmval:xmmword
extern axmmval:xmmword
IFDEF CONTEXT_USING_AVX
extern ymmval:ymmword
extern aymmval:ymmword
ENDIF
extern fpSaveArea:dword

.code

; void ChangeRegsWrapper();
; This wrapper saves and restores the registers used by ChangeRegs.
; This is done in the wrapper since we want ChangeRegs to actually
; change the register values but not to affect the application itself.
; The tool may intercept ChangeRegs and replace it with its own function.
;
; Register usage:
; eax   - used (implicitly) by xsave
; ebx   - used for testing the gpr values
; ecx   - used for holding a pointer to the fp save area (used by fxsave)
; edx   - used (implicitly) by xsave
; st0   - used (implicitly) for loading a value to the FPU stack
; st2   - used for testing the FPU values
; xmm0  - used for testing the sse values
; ymm1  - used for testing the avx values
ChangeRegsWrapper PROC
    ; Save the necessary GPRs
    push    eax
    push    ebx
    push    ecx
    push    edx

    ; Allign the fpSaveArea
    lea     ecx, fpSaveArea
    add     ecx, 40H
    and     ecx, 0ffffffc0H
    ; Save the floating-point state
IFDEF CONTEXT_USING_AVX
    push    edx
    xor     edx, edx
    mov     eax, 7
    xsave   [ecx]
ELSE
    fxsave  [ecx]
ENDIF

    ; Now call ChangeRegs - do the actual test.
    ; The tool may intercept this function and modify the register values itself.
    call    ChangeRegs

    ; Placeholder for PIN_ExecuteAt
    call    ExecuteAt

    ; Save the modified values to memory so the tool can ispect them.
    ; This is relevant only when the tool modifies the values.
    call    SaveRegsToMem

    ; Restore the floating-point state
IFDEF CONTEXT_USING_AVX
    mov     eax, 7
    xrstor  [ecx]
    pop     edx
ELSE
    fxrstor [ecx]
ENDIF

    ; Restore the GPRs
    pop     edx
    pop     ecx
    pop     ebx
    pop     eax
    ret
ChangeRegsWrapper ENDP

; void ChangeRegs();
; For register usage see ChangeRegsWrapper above.
ChangeRegs PROC
    ; TEST: load the new value to ebx
    mov     ebx, gprval
    ; prepare the test value at the top of the FPU stack
    fld     real10 ptr stval
    ; TEST: load the new value to st2
    fst     st(2)
    ; TEST: load the new value to xmm0
    movdqu  xmm0, xmmword ptr xmmval
IFDEF CONTEXT_USING_AVX
    ; TEST: load the new value to ymm1
    vmovdqu ymm1, ymmword ptr ymmval
ENDIF
    ret
ChangeRegs ENDP

; void ExecuteAt();
ExecuteAt PROC
    ret
ExecuteAt ENDP

; void SaveRegsToMem();
; Save the necessary registers to memory.
; The tool will then compare the value stored in memory to the ones it expects to find.
; For register usage see ChangeRegsWrapper above.
SaveRegsToMem PROC
    ; TEST: store the new value of ebx
    mov     agprval, ebx
    ; prepare the test value at the top of the FPU stack
    fld     st(2)
    ; TEST: store the new value of st2
    fstp    real10 ptr astval
    ; TEST: store the new value of xmm0
    movdqu  xmmword ptr axmmval, xmm0
IFDEF CONTEXT_USING_AVX
    ; TEST: store the new value of ymm1
    vmovdqu ymmword ptr aymmval, ymm1
ENDIF
    ret
SaveRegsToMem ENDP

end
