.foo:
pushq %rbp
movq %rdx, %rbp
pushq %rbx
movl %edi, %ebx
subq $0x48, %rsp
movq %rsp, %rdi
retq
