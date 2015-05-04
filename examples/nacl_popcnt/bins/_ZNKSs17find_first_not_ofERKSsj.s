  .text
  .globl _ZNKSs17find_first_not_ofERKSsj
  .type _ZNKSs17find_first_not_ofERKSsj, @function

#! file-offset 0x45260
#! rip-offset  0x45260
#! capacity    32 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofERKSsj:        #        0x45260  0      
  movl %esi, %esi                        #  1     0x45260  2      
  movl %edi, %edi                        #  2     0x45262  2      
  movl %esi, %esi                        #  3     0x45264  2      
  movl (%r15,%rsi,1), %esi               #  4     0x45266  4      
  leal -0xc(%rsi), %eax                  #  5     0x4526a  3      
  movl %eax, %eax                        #  6     0x4526d  2      
  movl (%r15,%rax,1), %ecx               #  7     0x4526f  4      
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  8     0x45273  5      
  nop                                    #  9     0x45278  1      
  nop                                    #  10    0x45279  1      
  nop                                    #  11    0x4527a  1      
  nop                                    #  12    0x4527b  1      
  nop                                    #  13    0x4527c  1      
  nop                                    #  14    0x4527d  1      
  nop                                    #  15    0x4527e  1      
  nop                                    #  16    0x4527f  1      
                                                                  
.size _ZNKSs17find_first_not_ofERKSsj, .-_ZNKSs17find_first_not_ofERKSsj

