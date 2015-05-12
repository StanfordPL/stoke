  .text
  .globl _ZNKSs17find_first_not_ofERKSsj
  .type _ZNKSs17find_first_not_ofERKSsj, @function

#! file-offset 0x451e0
#! rip-offset  0x451e0
#! capacity    32 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofERKSsj:        #        0x451e0  0      
  movl %esi, %esi                        #  1     0x451e0  2      
  movl %edi, %edi                        #  2     0x451e2  2      
  movl %esi, %esi                        #  3     0x451e4  2      
  movl (%r15,%rsi,1), %esi               #  4     0x451e6  4      
  leal -0xc(%rsi), %eax                  #  5     0x451ea  3      
  movl %eax, %eax                        #  6     0x451ed  2      
  movl (%r15,%rax,1), %ecx               #  7     0x451ef  4      
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  8     0x451f3  5      
  nop                                    #  9     0x451f8  1      
  nop                                    #  10    0x451f9  1      
  nop                                    #  11    0x451fa  1      
  nop                                    #  12    0x451fb  1      
  nop                                    #  13    0x451fc  1      
  nop                                    #  14    0x451fd  1      
  nop                                    #  15    0x451fe  1      
  nop                                    #  16    0x451ff  1      
                                                                  
.size _ZNKSs17find_first_not_ofERKSsj, .-_ZNKSs17find_first_not_ofERKSsj

