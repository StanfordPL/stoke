    .text
.globl AssemblyReturn
.globl Label_WriteAx
AssemblyReturn:
    mov     %rdi, %rax
Label_WriteAx:
    ret
