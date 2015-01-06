pushq %r12
movq %rsi, %r12
pushq %rbp
movq %rdi, %rbp
pushq %rbx
cmpb $0x2d, (%rdi)
retq
