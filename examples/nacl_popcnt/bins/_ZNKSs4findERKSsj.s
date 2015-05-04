  .text
  .globl _ZNKSs4findERKSsj
  .type _ZNKSs4findERKSsj, @function

#! file-offset 0x44e40
#! rip-offset  0x44e40
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4findERKSsj:         #        0x44e40  0      
  movl %esi, %esi           #  1     0x44e40  2      
  movl %edi, %edi           #  2     0x44e42  2      
  movl %esi, %esi           #  3     0x44e44  2      
  movl (%r15,%rsi,1), %esi  #  4     0x44e46  4      
  leal -0xc(%rsi), %eax     #  5     0x44e4a  3      
  movl %eax, %eax           #  6     0x44e4d  2      
  movl (%r15,%rax,1), %ecx  #  7     0x44e4f  4      
  jmpq ._ZNKSs4findEPKcjj   #  8     0x44e53  5      
  nop                       #  9     0x44e58  1      
  nop                       #  10    0x44e59  1      
  nop                       #  11    0x44e5a  1      
  nop                       #  12    0x44e5b  1      
  nop                       #  13    0x44e5c  1      
  nop                       #  14    0x44e5d  1      
  nop                       #  15    0x44e5e  1      
  nop                       #  16    0x44e5f  1      
                                                     
.size _ZNKSs4findERKSsj, .-_ZNKSs4findERKSsj

