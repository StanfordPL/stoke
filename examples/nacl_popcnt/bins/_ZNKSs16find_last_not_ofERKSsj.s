  .text
  .globl _ZNKSs16find_last_not_ofERKSsj
  .type _ZNKSs16find_last_not_ofERKSsj, @function

#! file-offset 0x45160
#! rip-offset  0x45160
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofERKSsj:        #        0x45160  0      
  movl %esi, %esi                       #  1     0x45160  2      
  movl %edi, %edi                       #  2     0x45162  2      
  movl %esi, %esi                       #  3     0x45164  2      
  movl (%r15,%rsi,1), %esi              #  4     0x45166  4      
  leal -0xc(%rsi), %eax                 #  5     0x4516a  3      
  movl %eax, %eax                       #  6     0x4516d  2      
  movl (%r15,%rax,1), %ecx              #  7     0x4516f  4      
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  8     0x45173  5      
  nop                                   #  9     0x45178  1      
  nop                                   #  10    0x45179  1      
  nop                                   #  11    0x4517a  1      
  nop                                   #  12    0x4517b  1      
  nop                                   #  13    0x4517c  1      
  nop                                   #  14    0x4517d  1      
  nop                                   #  15    0x4517e  1      
  nop                                   #  16    0x4517f  1      
                                                                 
.size _ZNKSs16find_last_not_ofERKSsj, .-_ZNKSs16find_last_not_ofERKSsj

