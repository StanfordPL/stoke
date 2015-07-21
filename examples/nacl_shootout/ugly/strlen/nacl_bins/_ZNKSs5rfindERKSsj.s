  .text
  .globl _ZNKSs5rfindERKSsj
  .type _ZNKSs5rfindERKSsj, @function

#! file-offset 0xeaf80
#! rip-offset  0xaaf80
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs5rfindERKSsj:        #        0xaaf80  0      OPC=0     
  movl %esi, %esi           #  1     0xaaf80  2      OPC=1157  
  movl %edi, %edi           #  2     0xaaf82  2      OPC=1157  
  movl %esi, %esi           #  3     0xaaf84  2      OPC=1157  
  movl (%r15,%rsi,1), %esi  #  4     0xaaf86  4      OPC=1156  
  leal -0xc(%rsi), %eax     #  5     0xaaf8a  3      OPC=1066  
  movl %eax, %eax           #  6     0xaaf8d  2      OPC=1157  
  movl (%r15,%rax,1), %ecx  #  7     0xaaf8f  4      OPC=1156  
  jmpq ._ZNKSs5rfindEPKcjj  #  8     0xaaf93  5      OPC=930   
  nop                       #  9     0xaaf98  1      OPC=1343  
  nop                       #  10    0xaaf99  1      OPC=1343  
  nop                       #  11    0xaaf9a  1      OPC=1343  
  nop                       #  12    0xaaf9b  1      OPC=1343  
  nop                       #  13    0xaaf9c  1      OPC=1343  
  nop                       #  14    0xaaf9d  1      OPC=1343  
  nop                       #  15    0xaaf9e  1      OPC=1343  
  nop                       #  16    0xaaf9f  1      OPC=1343  
                                                               
.size _ZNKSs5rfindERKSsj, .-_ZNKSs5rfindERKSsj

