pushq %r13
movslq %edi, %r13
pushq %r12
pushq %rbp
pushq %rbx
subq $0x8, %rsp
testq %r13, %r13
je .L_X64ASM_0
movq %rsi, %r12
shlq $0x3, %r13
xorl %ebx, %ebx
xorl %ebp, %ebp
.L_X64ASM_1:
movq (%r12,%rbx,1), %rdi
addq $0x8, %rbx
callq .L_X64ASM_2
addq %rax, %rbp
cmpq %r13, %rbx
jne .L_X64ASM_1
.L_X64ASM_3:
addq $0x8, %rsp
movl %ebp, %eax
popq %rbx
popq %rbp
popq %r12
popq %r13
retq 
.L_X64ASM_0:
xorl %ebp, %ebp
jmpq .L_X64ASM_3
.L_X64ASM_2:
retq
