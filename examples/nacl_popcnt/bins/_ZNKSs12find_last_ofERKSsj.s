  .text
  .globl _ZNKSs12find_last_ofERKSsj
  .type _ZNKSs12find_last_ofERKSsj, @function

#! file-offset 0x452e0
#! rip-offset  0x452e0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
._ZNKSs12find_last_ofERKSsj:        #        0x452e0  0      
  movl %esi, %esi                   #  1     0x452e0  2      
  movl %edi, %edi                   #  2     0x452e2  2      
  movl %esi, %esi                   #  3     0x452e4  2      
  movl (%r15,%rsi,1), %esi          #  4     0x452e6  4      
  leal -0xc(%rsi), %eax             #  5     0x452ea  3      
  movl %eax, %eax                   #  6     0x452ed  2      
  movl (%r15,%rax,1), %ecx          #  7     0x452ef  4      
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  8     0x452f3  5      
  nop                               #  9     0x452f8  1      
  nop                               #  10    0x452f9  1      
  nop                               #  11    0x452fa  1      
  nop                               #  12    0x452fb  1      
  nop                               #  13    0x452fc  1      
  nop                               #  14    0x452fd  1      
  nop                               #  15    0x452fe  1      
  nop                               #  16    0x452ff  1      
                                                             
.size _ZNKSs12find_last_ofERKSsj, .-_ZNKSs12find_last_ofERKSsj

