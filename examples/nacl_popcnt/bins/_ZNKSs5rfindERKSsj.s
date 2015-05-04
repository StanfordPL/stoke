  .text
  .globl _ZNKSs5rfindERKSsj
  .type _ZNKSs5rfindERKSsj, @function

#! file-offset 0x45560
#! rip-offset  0x45560
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindERKSsj:        #        0x45560  0      
  movl %esi, %esi           #  1     0x45560  2      
  movl %edi, %edi           #  2     0x45562  2      
  movl %esi, %esi           #  3     0x45564  2      
  movl (%r15,%rsi,1), %esi  #  4     0x45566  4      
  leal -0xc(%rsi), %eax     #  5     0x4556a  3      
  movl %eax, %eax           #  6     0x4556d  2      
  movl (%r15,%rax,1), %ecx  #  7     0x4556f  4      
  jmpq ._ZNKSs5rfindEPKcjj  #  8     0x45573  5      
  nop                       #  9     0x45578  1      
  nop                       #  10    0x45579  1      
  nop                       #  11    0x4557a  1      
  nop                       #  12    0x4557b  1      
  nop                       #  13    0x4557c  1      
  nop                       #  14    0x4557d  1      
  nop                       #  15    0x4557e  1      
  nop                       #  16    0x4557f  1      
                                                     
.size _ZNKSs5rfindERKSsj, .-_ZNKSs5rfindERKSsj

