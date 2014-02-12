    .text
.globl AssemblyReturn
.globl Label_WriteAx
AssemblyReturn:
    mov     4(%esp), %eax
Label_WriteAx:
    ret
