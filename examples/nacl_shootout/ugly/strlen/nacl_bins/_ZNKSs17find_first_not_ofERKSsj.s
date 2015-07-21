  .text
  .globl _ZNKSs17find_first_not_ofERKSsj
  .type _ZNKSs17find_first_not_ofERKSsj, @function

#! file-offset 0xeac80
#! rip-offset  0xaac80
#! capacity    32 bytes

# Text                                   #  Line  RIP      Bytes  Opcode    
._ZNKSs17find_first_not_ofERKSsj:        #        0xaac80  0      OPC=0     
  movl %esi, %esi                        #  1     0xaac80  2      OPC=1157  
  movl %edi, %edi                        #  2     0xaac82  2      OPC=1157  
  movl %esi, %esi                        #  3     0xaac84  2      OPC=1157  
  movl (%r15,%rsi,1), %esi               #  4     0xaac86  4      OPC=1156  
  leal -0xc(%rsi), %eax                  #  5     0xaac8a  3      OPC=1066  
  movl %eax, %eax                        #  6     0xaac8d  2      OPC=1157  
  movl (%r15,%rax,1), %ecx               #  7     0xaac8f  4      OPC=1156  
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  8     0xaac93  5      OPC=930   
  nop                                    #  9     0xaac98  1      OPC=1343  
  nop                                    #  10    0xaac99  1      OPC=1343  
  nop                                    #  11    0xaac9a  1      OPC=1343  
  nop                                    #  12    0xaac9b  1      OPC=1343  
  nop                                    #  13    0xaac9c  1      OPC=1343  
  nop                                    #  14    0xaac9d  1      OPC=1343  
  nop                                    #  15    0xaac9e  1      OPC=1343  
  nop                                    #  16    0xaac9f  1      OPC=1343  
                                                                            
.size _ZNKSs17find_first_not_ofERKSsj, .-_ZNKSs17find_first_not_ofERKSsj

