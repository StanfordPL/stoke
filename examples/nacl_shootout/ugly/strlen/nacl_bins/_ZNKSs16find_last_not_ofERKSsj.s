  .text
  .globl _ZNKSs16find_last_not_ofERKSsj
  .type _ZNKSs16find_last_not_ofERKSsj, @function

#! file-offset 0xeab80
#! rip-offset  0xaab80
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNKSs16find_last_not_ofERKSsj:        #        0xaab80  0      OPC=0     
  movl %esi, %esi                       #  1     0xaab80  2      OPC=1157  
  movl %edi, %edi                       #  2     0xaab82  2      OPC=1157  
  movl %esi, %esi                       #  3     0xaab84  2      OPC=1157  
  movl (%r15,%rsi,1), %esi              #  4     0xaab86  4      OPC=1156  
  leal -0xc(%rsi), %eax                 #  5     0xaab8a  3      OPC=1066  
  movl %eax, %eax                       #  6     0xaab8d  2      OPC=1157  
  movl (%r15,%rax,1), %ecx              #  7     0xaab8f  4      OPC=1156  
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  8     0xaab93  5      OPC=930   
  nop                                   #  9     0xaab98  1      OPC=1343  
  nop                                   #  10    0xaab99  1      OPC=1343  
  nop                                   #  11    0xaab9a  1      OPC=1343  
  nop                                   #  12    0xaab9b  1      OPC=1343  
  nop                                   #  13    0xaab9c  1      OPC=1343  
  nop                                   #  14    0xaab9d  1      OPC=1343  
  nop                                   #  15    0xaab9e  1      OPC=1343  
  nop                                   #  16    0xaab9f  1      OPC=1343  
                                                                           
.size _ZNKSs16find_last_not_ofERKSsj, .-_ZNKSs16find_last_not_ofERKSsj

