  .text
  .globl _ZNKSs13find_first_ofERKSsj
  .type _ZNKSs13find_first_ofERKSsj, @function

#! file-offset 0x45460
#! rip-offset  0x45460
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs13find_first_ofERKSsj:        #        0x45460  0      
  movl %esi, %esi                    #  1     0x45460  2      
  movl %edi, %edi                    #  2     0x45462  2      
  movl %esi, %esi                    #  3     0x45464  2      
  movl (%r15,%rsi,1), %esi           #  4     0x45466  4      
  leal -0xc(%rsi), %eax              #  5     0x4546a  3      
  movl %eax, %eax                    #  6     0x4546d  2      
  movl (%r15,%rax,1), %ecx           #  7     0x4546f  4      
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  8     0x45473  5      
  nop                                #  9     0x45478  1      
  nop                                #  10    0x45479  1      
  nop                                #  11    0x4547a  1      
  nop                                #  12    0x4547b  1      
  nop                                #  13    0x4547c  1      
  nop                                #  14    0x4547d  1      
  nop                                #  15    0x4547e  1      
  nop                                #  16    0x4547f  1      
                                                              
.size _ZNKSs13find_first_ofERKSsj, .-_ZNKSs13find_first_ofERKSsj

