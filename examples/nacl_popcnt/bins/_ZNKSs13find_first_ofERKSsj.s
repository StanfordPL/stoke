  .text
  .globl _ZNKSs13find_first_ofERKSsj
  .type _ZNKSs13find_first_ofERKSsj, @function

#! file-offset 0x453c0
#! rip-offset  0x453c0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs13find_first_ofERKSsj:        #        0x453c0  0      
  movl %esi, %esi                    #  1     0x453c0  2      
  movl %edi, %edi                    #  2     0x453c2  2      
  movl %esi, %esi                    #  3     0x453c4  2      
  movl (%r15,%rsi,1), %esi           #  4     0x453c6  4      
  leal -0xc(%rsi), %eax              #  5     0x453ca  3      
  movl %eax, %eax                    #  6     0x453cd  2      
  movl (%r15,%rax,1), %ecx           #  7     0x453cf  4      
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  8     0x453d3  5      
  nop                                #  9     0x453d8  1      
  nop                                #  10    0x453d9  1      
  nop                                #  11    0x453da  1      
  nop                                #  12    0x453db  1      
  nop                                #  13    0x453dc  1      
  nop                                #  14    0x453dd  1      
  nop                                #  15    0x453de  1      
  nop                                #  16    0x453df  1      
                                                              
.size _ZNKSs13find_first_ofERKSsj, .-_ZNKSs13find_first_ofERKSsj

