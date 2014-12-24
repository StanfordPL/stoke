.text
.globl  _Z8mont_mulmmjjm
.type   _Z8mont_mulmmjjm, @function
_Z8mont_mulmmjjm:
shlq $32, %rcx
movl %edx, %edx
xorq %rdx, %rcx
movq %rcx, %rax
mulq %rsi
addq %r8, %rdi
adcq $0, %rdx
addq %rdi, %rax
adcq $0, %rdx
movq %rdx, %r8
movq %rax, %rdi  
retq
.size   _Z8mont_mulmmjjm, .-_Z8mont_mulmmjjm
