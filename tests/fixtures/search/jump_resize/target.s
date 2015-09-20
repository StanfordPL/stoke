xorl %ecx, %ecx
movl $0x13, %eax
movl $0x10, %edi
.L1:
shll $0x2, %eax
addl %ecx, %eax
addl $0x1, %ecx
cmpl %ecx, %edi
jne .L1  #SIZE=6
retq
