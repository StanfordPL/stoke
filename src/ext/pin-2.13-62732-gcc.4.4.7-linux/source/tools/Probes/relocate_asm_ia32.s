
nothing:
    ret

set_dead_beef:
    mov $0xdeadbeef, %eax
    ret

# A function with jmp in the first 5 bytes
.type relocatable_1, @function
.global relocatable_1
RELOCATABLE_1_START:
relocatable_1:
    push %ebp
    mov %esp, %ebp
RL1:
    call nothing
    call nothing
    movl $1, %eax
    test %eax, %eax
    je RL1
    leave
    ret
RELOCATABLE_1_END:
.size relocatable_1, RELOCATABLE_1_END - RELOCATABLE_1_START


# A function with jmp in the first 5 bytes, that does an indirect call to another function
.type relocatable_1a, @function
.global relocatable_1a
RELOCATABLE_1a_START:
relocatable_1a:
    push %ebp
    mov %esp, %ebp
RL1a:
    mov $1, %eax
    lea set_dead_beef, %ecx
    call %ecx
    test %eax, %eax
    je RL1a
    leave
    ret
RELOCATABLE_1a_END:
.size relocatable_1a, RELOCATABLE_1a_END - RELOCATABLE_1a_START



# A function with short first bb
.type relocatable_2, @function
.global relocatable_2
RELOCATABLE_2_START:
relocatable_2:
    xor %eax, %eax
    L:
    call nothing
    cmpl $1, %eax
    je exit_func
    inc %eax
    jmp L    
 exit_func:
    ret
    xor %eax, %eax
    xor %ebx, %ebx
RELOCATABLE_2_END:
.size relocatable_2, RELOCATABLE_2_END - RELOCATABLE_2_START

# A function with short first bb
.type relocatable_3, @function
.global relocatable_3
RELOCATABLE_3_START:
relocatable_3:
    xor %eax, %eax
    R3L:
    mov $2, %eax
    call nothing
    cmpl $1, %eax
    jne R3M
    mov $0, %eax
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
    push %ebp
NR1L:
    mov %esp, %ebp
    mov 8(%ebp), %eax
    call nothing
    call nothing
    call nothing
    je NR1L
    jmp *%eax
    leave
    ret
NON_RELOCATABLE_1_END:
.size non_relocatable_1, NON_RELOCATABLE_1_END - NON_RELOCATABLE_1_START

# A function with fallthru at the end
.type non_relocatable_2, @function
.global non_relocatable_2
NON_RELOCATABLE_2_START:
non_relocatable_2:
	push %ebp
NR2M:
    mov %esp, %ebp
    test %eax, %eax
    jb NR2M
    je NR2L
    leave
    ret
NR2L:
    inc %eax
    test %eax, %eax
    je non_relocatable_2
NON_RELOCATABLE_2_END:
.size non_relocatable_2, NON_RELOCATABLE_2_END - NON_RELOCATABLE_2_START
