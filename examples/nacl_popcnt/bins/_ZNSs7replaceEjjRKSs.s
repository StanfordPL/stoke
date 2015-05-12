  .text
  .globl _ZNSs7replaceEjjRKSs
  .type _ZNSs7replaceEjjRKSs, @function

#! file-offset 0x492a0
#! rip-offset  0x492a0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7replaceEjjRKSs:        #        0x492a0  0      
  movl %ecx, %ecx             #  1     0x492a0  2      
  movl %edi, %edi             #  2     0x492a2  2      
  movl %ecx, %ecx             #  3     0x492a4  2      
  movl (%r15,%rcx,1), %ecx    #  4     0x492a6  4      
  leal -0xc(%rcx), %eax       #  5     0x492aa  3      
  movl %eax, %eax             #  6     0x492ad  2      
  movl (%r15,%rax,1), %r8d    #  7     0x492af  4      
  jmpq ._ZNSs7replaceEjjPKcj  #  8     0x492b3  5      
  nop                         #  9     0x492b8  1      
  nop                         #  10    0x492b9  1      
  nop                         #  11    0x492ba  1      
  nop                         #  12    0x492bb  1      
  nop                         #  13    0x492bc  1      
  nop                         #  14    0x492bd  1      
  nop                         #  15    0x492be  1      
  nop                         #  16    0x492bf  1      
                                                       
.size _ZNSs7replaceEjjRKSs, .-_ZNSs7replaceEjjRKSs

