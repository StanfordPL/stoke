  .text
  .globl _ZNKSs12find_last_ofERKSsj
  .type _ZNKSs12find_last_ofERKSsj, @function

#! file-offset 0x45300
#! rip-offset  0x45300
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
._ZNKSs12find_last_ofERKSsj:        #        0x45300  0      
  movl %esi, %esi                   #  1     0x45300  2      
  movl %edi, %edi                   #  2     0x45302  2      
  movl %esi, %esi                   #  3     0x45304  2      
  movl (%r15,%rsi,1), %esi          #  4     0x45306  4      
  leal -0xc(%rsi), %eax             #  5     0x4530a  3      
  movl %eax, %eax                   #  6     0x4530d  2      
  movl (%r15,%rax,1), %ecx          #  7     0x4530f  4      
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  8     0x45313  5      
  nop                               #  9     0x45318  1      
  nop                               #  10    0x45319  1      
  nop                               #  11    0x4531a  1      
  nop                               #  12    0x4531b  1      
  nop                               #  13    0x4531c  1      
  nop                               #  14    0x4531d  1      
  nop                               #  15    0x4531e  1      
  nop                               #  16    0x4531f  1      
                                                             
.size _ZNKSs12find_last_ofERKSsj, .-_ZNKSs12find_last_ofERKSsj

