  .text
  .globl _ZNKSs16find_last_not_ofERKSsj
  .type _ZNKSs16find_last_not_ofERKSsj, @function

#! file-offset 0x450e0
#! rip-offset  0x450e0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofERKSsj:        #        0x450e0  0      
  movl %esi, %esi                       #  1     0x450e0  2      
  movl %edi, %edi                       #  2     0x450e2  2      
  movl %esi, %esi                       #  3     0x450e4  2      
  movl (%r15,%rsi,1), %esi              #  4     0x450e6  4      
  leal -0xc(%rsi), %eax                 #  5     0x450ea  3      
  movl %eax, %eax                       #  6     0x450ed  2      
  movl (%r15,%rax,1), %ecx              #  7     0x450ef  4      
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  8     0x450f3  5      
  nop                                   #  9     0x450f8  1      
  nop                                   #  10    0x450f9  1      
  nop                                   #  11    0x450fa  1      
  nop                                   #  12    0x450fb  1      
  nop                                   #  13    0x450fc  1      
  nop                                   #  14    0x450fd  1      
  nop                                   #  15    0x450fe  1      
  nop                                   #  16    0x450ff  1      
                                                                 
.size _ZNKSs16find_last_not_ofERKSsj, .-_ZNKSs16find_last_not_ofERKSsj

