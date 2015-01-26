.foo:
movl 0x18(%rbp), %r13d
leaq 0x1c(%rbp), %r14
movq %rbx, %rdx
movq %r12, %rsi
leaq (%r14,%r13,1), %rdi
addq %r13, %rbx
retq
