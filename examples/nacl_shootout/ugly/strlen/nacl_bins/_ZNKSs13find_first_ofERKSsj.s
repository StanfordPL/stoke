  .text
  .globl _ZNKSs13find_first_ofERKSsj
  .type _ZNKSs13find_first_ofERKSsj, @function

#! file-offset 0xeae80
#! rip-offset  0xaae80
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSs13find_first_ofERKSsj:        #        0xaae80  0      OPC=0     
  movl %esi, %esi                    #  1     0xaae80  2      OPC=1157  
  movl %edi, %edi                    #  2     0xaae82  2      OPC=1157  
  movl %esi, %esi                    #  3     0xaae84  2      OPC=1157  
  movl (%r15,%rsi,1), %esi           #  4     0xaae86  4      OPC=1156  
  leal -0xc(%rsi), %eax              #  5     0xaae8a  3      OPC=1066  
  movl %eax, %eax                    #  6     0xaae8d  2      OPC=1157  
  movl (%r15,%rax,1), %ecx           #  7     0xaae8f  4      OPC=1156  
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  8     0xaae93  5      OPC=930   
  nop                                #  9     0xaae98  1      OPC=1343  
  nop                                #  10    0xaae99  1      OPC=1343  
  nop                                #  11    0xaae9a  1      OPC=1343  
  nop                                #  12    0xaae9b  1      OPC=1343  
  nop                                #  13    0xaae9c  1      OPC=1343  
  nop                                #  14    0xaae9d  1      OPC=1343  
  nop                                #  15    0xaae9e  1      OPC=1343  
  nop                                #  16    0xaae9f  1      OPC=1343  
                                                                        
.size _ZNKSs13find_first_ofERKSsj, .-_ZNKSs13find_first_ofERKSsj

