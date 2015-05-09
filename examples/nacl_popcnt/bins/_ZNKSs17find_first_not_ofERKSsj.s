  .text
  .globl _ZNKSs17find_first_not_ofERKSsj
  .type _ZNKSs17find_first_not_ofERKSsj, @function

#! file-offset 0x451c0
#! rip-offset  0x451c0
#! capacity    32 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofERKSsj:        #        0x451c0  0      
  movl %esi, %esi                        #  1     0x451c0  2      
  movl %edi, %edi                        #  2     0x451c2  2      
  movl %esi, %esi                        #  3     0x451c4  2      
  movl (%r15,%rsi,1), %esi               #  4     0x451c6  4      
  leal -0xc(%rsi), %eax                  #  5     0x451ca  3      
  movl %eax, %eax                        #  6     0x451cd  2      
  movl (%r15,%rax,1), %ecx               #  7     0x451cf  4      
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  8     0x451d3  5      
  nop                                    #  9     0x451d8  1      
  nop                                    #  10    0x451d9  1      
  nop                                    #  11    0x451da  1      
  nop                                    #  12    0x451db  1      
  nop                                    #  13    0x451dc  1      
  nop                                    #  14    0x451dd  1      
  nop                                    #  15    0x451de  1      
  nop                                    #  16    0x451df  1      
                                                                  
.size _ZNKSs17find_first_not_ofERKSsj, .-_ZNKSs17find_first_not_ofERKSsj

