  .text
  .globl _ZNSs7replaceEjjRKSs
  .type _ZNSs7replaceEjjRKSs, @function

#! file-offset 0x49320
#! rip-offset  0x49320
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7replaceEjjRKSs:        #        0x49320  0      
  movl %ecx, %ecx             #  1     0x49320  2      
  movl %edi, %edi             #  2     0x49322  2      
  movl %ecx, %ecx             #  3     0x49324  2      
  movl (%r15,%rcx,1), %ecx    #  4     0x49326  4      
  leal -0xc(%rcx), %eax       #  5     0x4932a  3      
  movl %eax, %eax             #  6     0x4932d  2      
  movl (%r15,%rax,1), %r8d    #  7     0x4932f  4      
  jmpq ._ZNSs7replaceEjjPKcj  #  8     0x49333  5      
  nop                         #  9     0x49338  1      
  nop                         #  10    0x49339  1      
  nop                         #  11    0x4933a  1      
  nop                         #  12    0x4933b  1      
  nop                         #  13    0x4933c  1      
  nop                         #  14    0x4933d  1      
  nop                         #  15    0x4933e  1      
  nop                         #  16    0x4933f  1      
                                                       
.size _ZNSs7replaceEjjRKSs, .-_ZNSs7replaceEjjRKSs

