
nothing:
    ret

set_dead_beef:
    mov $0xdeadbeef, %rax
    ret

# A function with call in the first 5 bytes
.type relocatable_1, @function
.global relocatable_1
RELOCATABLE_1_START:
relocatable_1:
    call nothing
    push %rbp
    mov %rsp, %rbp
    call nothing
    call nothing
    leave
    ret
RELOCATABLE_1_END:
.size relocatable_1, RELOCATABLE_1_END - RELOCATABLE_1_START

#  A function with a call in the first 5 bytes, that does an indirect call to another function
.type relocatable_1a, @function
.global relocatable_1a
RELOCATABLE_1a_START:
relocatable_1a:
    call nothing
    push %rbp
    mov %rsp, %rbp
    call nothing
    call nothing
    mov $1, %rax
    lea set_dead_beef(%rip), %rcx
    call %rcx
    leave
    ret
RELOCATABLE_1a_END:
.size relocatable_1a, RELOCATABLE_1a_END - RELOCATABLE_1a_START



# A function with short first bb
.type relocatable_2, @function
.global relocatable_2
RELOCATABLE_2_START:
relocatable_2:
    xor %rax, %rax
    L:
    call nothing
    cmpq $1, %rax
    je exit_func
    inc %rax
    jmp L    
 exit_func:
    ret
    xor %rax, %rax
    xor %rbx, %rbx
RELOCATABLE_2_END:
.size relocatable_2, RELOCATABLE_2_END - RELOCATABLE_2_START

# A function with short first bb
.type relocatable_3, @function
.global relocatable_3
RELOCATABLE_3_START:
relocatable_3:
    xor %rax, %rax
    R3L:
    mov 2(%rip), %rax
    call nothing
    cmpq $1, %rax
    jne R3M
    movq $0, %rax
    jmp R3L    
 R3M:
    ret
    xor %eax, %eax
    xor %ebx, %ebx
RELOCATABLE_3_END:
.size relocatable_3, RELOCATABLE_3_END - RELOCATABLE_3_START

# A function with indirect jump
.type non_relocatable_1, @function
.global non_relocatable_1
NON_RELOCATABLE_1_START:
non_relocatable_1:
	push %rbp
	NR1L:
	mov %rsp, %rbp
    mov %rdi, %rax
    call nothing
    call nothing
    call nothing
    jmp *%rax
	je NR1L
    leave
    ret
NON_RELOCATABLE_1_END:
.size non_relocatable_1, NON_RELOCATABLE_1_END - NON_RELOCATABLE_1_START

# A function with fallthru at the end
.type non_relocatable_2, @function
.global non_relocatable_2
NON_RELOCATABLE_2_START:
non_relocatable_2:
	push %rbp
NR2M:
	mov %rsp, %rbp
    test %rax, %rax
	jb NR2M
    je NR2L
    leave
    ret
NR2L:
    inc %rax
    test %rax, %rax
    je non_relocatable_2
NON_RELOCATABLE_2_END:
.size non_relocatable_2, NON_RELOCATABLE_2_END - NON_RELOCATABLE_2_START
