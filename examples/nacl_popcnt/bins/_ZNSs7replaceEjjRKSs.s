  .text
  .globl _ZNSs7replaceEjjRKSs
  .type _ZNSs7replaceEjjRKSs, @function

#! file-offset 0x49280
#! rip-offset  0x49280
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7replaceEjjRKSs:        #        0x49280  0      
  movl %ecx, %ecx             #  1     0x49280  2      
  movl %edi, %edi             #  2     0x49282  2      
  movl %ecx, %ecx             #  3     0x49284  2      
  movl (%r15,%rcx,1), %ecx    #  4     0x49286  4      
  leal -0xc(%rcx), %eax       #  5     0x4928a  3      
  movl %eax, %eax             #  6     0x4928d  2      
  movl (%r15,%rax,1), %r8d    #  7     0x4928f  4      
  jmpq ._ZNSs7replaceEjjPKcj  #  8     0x49293  5      
  nop                         #  9     0x49298  1      
  nop                         #  10    0x49299  1      
  nop                         #  11    0x4929a  1      
  nop                         #  12    0x4929b  1      
  nop                         #  13    0x4929c  1      
  nop                         #  14    0x4929d  1      
  nop                         #  15    0x4929e  1      
  nop                         #  16    0x4929f  1      
                                                       
.size _ZNSs7replaceEjjRKSs, .-_ZNSs7replaceEjjRKSs

